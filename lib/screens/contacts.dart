// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:hackodisha/api/firestore_api.dart';
import 'package:hackodisha/screens/contact_utils.dart';
import 'package:hackodisha/screens/homepage.dart';
import 'package:permission_handler/permission_handler.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    askContactsPermission();
  }

  Future askContactsPermission() async {
    final permission = await ContactUtils.getContactPermission();

    switch (permission) {
      case PermissionStatus.granted:
        uploadContacts();
        break;
      case PermissionStatus.permanentlyDenied:
        goToHomePage();
        break;
      default:
        // _scaffoldKey.currentState?.showSnackBar(
        //   SnackBar(
        //     content: Text('Please allow to "Upload Contacts"'),
        //     backgroundColor: Theme.of(context).errorColor,
        //     duration: Duration(seconds: 3),
        //   ),
        // );

        break;
    }
  }

  Future uploadContacts() async {
    final contacts =
        (await ContactsService.getContacts(withThumbnails: false)).toList();
    await FirestoreApi.uploadContacts(contacts);

    goToHomePage();
  }

  void goToHomePage() => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage(title: 'Homepage')),
        ModalRoute.withName("/"),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Contacts"),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(

                  'Enable app permission to upload contacts',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {
                    askContactsPermission();
                  },
                  child: Text(
                    'Upload Contacts',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    goToHomePage();
                  },
                  child: Text(
                    'Continue',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
