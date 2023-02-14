// import 'package:flutter/material.dart';

// class GridCard extends StatelessWidget {
//   final String image;
//   final String title;
//   final String price;
//   const GridCard({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.price,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           width: double.infinity,
//           height: double.infinity,
//           child: Image.network(
//             image,
//             fit: BoxFit.cover,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         FittedBox(
//           child: Text(
//             title,
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//         Text(price),
//       ],
//     ));
//   }
// }

import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image.network(
        "https://media.istockphoto.com/photos/delicious-homemade-grilled-salmon-burger-with-tomato-and-lettuce-on-a-picture-id1394292868?b=1&k=20&m=1394292868&s=170667a&w=0&h=vNo8PzzIUTs0o2swhHsLJFmLyjipa3fGpUq34iunzOw=",
        fit: BoxFit.cover,
      ),
    )
    );
  }
}
