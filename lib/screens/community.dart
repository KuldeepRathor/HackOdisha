import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback((_) {
  //     images.forEach((imageUrl) {
  //       precacheImage(NetworkImage(imageUrl), context);
  //     });
  //   });
  //   initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Community Page',
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 1000.0,
                  scrollDirection: Axis.vertical,
                ),
                items: [
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/image$i.jpeg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ImageSlider extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery
//         .of(context)
//         .size;
//     return Container(
//       height: size.height,
//       color: Colors.white,
//       child: CarouselSlider.builder(
//         itemCount: images.length,
//         options: CarouselOptions(
//           scrollDirection: Axis.vertical,
//           autoPlay: true,
//           aspectRatio: 2.0,
//           enlargeCenterPage: true,
//         ),
//         // items: imgList
//         //     .map((item) =>
//         //     Container(
//       child: Center(
//         child: Image.network(
//           item,
//           fit: BoxFit.cover,
//           width: 1000,
//           height: 1000,
//         ),
//       ),
//     ))
//     .toList(),
//         itemBuilder: (BuildContext context, int index, int realIndex) {
//           return Container(
//             child: Center(
//               child: Image.network(
//                 images[index], fit: BoxFit.cover, width: 1000,height: 1000,),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }