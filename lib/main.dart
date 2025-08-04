import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Top 10 Widgets In Flutter'),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Column(
          // Remove mainAxisAlignment: center because it conflicts with Expanded
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: const Text('Anas Khan'),
              subtitle: const Text('Flutter Developer'),
              trailing: const Text('4 : 29 PM'),
              leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg',
                ),
              ),
              onTap: () {
                print('ListTile tapped');
              },
            ),

            // ✅ Wrap ListView with Expanded
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Just to give sample items
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('Anas Khan'),
                    subtitle: Text('Flutter Developer'),
                    trailing: Text('4 : 29 PM'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// Source code

// 4-- Text Field Widget
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: TextFormField(
// keyboardType: TextInputType.emailAddress,
// cursorColor: Colors.black,
// enableSuggestions: true,
// autocorrect: true,
// decoration: InputDecoration(
// hintText: 'Email',
// labelText: 'email',
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 18,
// ),
// labelStyle: TextStyle(
// color: Colors.black,
// fontSize: 18,
// ),
// prefixIcon: Icon(
// Icons.email,
// color: Colors.black,
// size: 30,
// ),
// suffixIcon: Icon(
// Icons.remove_red_eye,
// color: Colors.black,
// size: 30,
//
//
//
// ),
// ),
//
//
// ),
// ),


// 3-  Rich Text Widget
// body: Center(


//           child: RichText(
//             text: TextSpan(
//               text: 'Anas ',
//               style: Theme.of(context).textTheme.bodySmall ??
//                   const TextStyle(color: Colors.black, fontSize: 20),
//               children: [
//                 TextSpan(
//                   text: 'Khan',
//                   style: Theme.of(context).textTheme.bodySmall ??
//                       const TextStyle(color: Colors.teal, fontSize: 24),
//                 ),
//               ],
//             ),
//           ),
//         ),


// 2 - Circular Avatar
// const SizedBox(height: 40),
//
// // ✅ Horizontal Divider
// const Divider(
// color: Colors.black,
// thickness: 1,
// indent: 20,
// endIndent: 20,
// ),
//
// const SizedBox(height: 40),
//
// // ✅ Vertical Divider inside Row
// const Text('Vertical Divider Example:'),
// const SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: const [
// Icon(Icons.star, size: 40, color: Colors.orange),
// VerticalDivider(
// color: Colors.black,
// thickness: 1,
// width: 40,
// ),
// Icon(Icons.favorite, size: 40, color: Colors.red),
// ],
// ),
//
// const SizedBox(height: 40),
//
// // ✅ CircleAvatar widget
// const Center(
// child: CircleAvatar(
// radius: 80,
// backgroundImage: NetworkImage(
// 'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg',
// ),
// ),
// ),

// 1- Stack Widget
// SizedBox(
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Text('Anas Khan'),
//                   Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.red,
//
//                   ),
//                   Positioned(
//                     top: 10,
//                     //bottom: 10,
//                     //right
//                     // left
//                     //top
//                     child: Text('Anas Khan'),)
//
//                 ],
//               ),
//
//             ),
//             Stack(
//               children: [ // ✅ FIX: wrap Containers inside children: []
//                 Container(
//                   height: 90,
//                   width: 90,
//                   color: Colors.green,
//                 ),
//                 Container(
//                   height: 80,
//                   width: 80,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   height: 80,
//                   width: 80,
//                   color: Colors.red,
//                 ),
//               ],
//             ),







// Container widget
// Expanded widget code
// body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Row(
// children: [
// Expanded(
// child: Container(
// color: Colors.red,
// height: 50,
// child: Center(
// child: Text('Anas')),
//
//
// ),),
//
//
//
//
// ],
//
// )
// // Center(
// //   child: Container(
// //     height: 250,
// //     width: 250,
// //     margin: EdgeInsets.all(20),
// //     padding: EdgeInsets.symmetric(
// //       vertical: 20,
// //       horizontal: 20,
// //     ),
// //     decoration: BoxDecoration(
// //       color: Colors.orange, // Orange background color
// //       borderRadius: BorderRadius.circular(20),
// //       border: Border.all(
// //         color: Colors.black, // Black border
// //         width: 10,
// //         style: BorderStyle.solid,
// //       ),
// //       image: DecorationImage(
// //         fit: BoxFit.cover,
// //         image: NetworkImage(
// //           'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg',
// //         ),
// //       ),
// //       boxShadow: [
// //         BoxShadow(
// //           color: Colors.black, // Black shadow color
// //           blurRadius: 10,
// //           spreadRadius: 10,
// //           offset: Offset(10, 10),
// //         )
// //       ],
// //     ),
// //     child: Center(
// //       child: Text(
// //         'Container 1',
// //         style: TextStyle(
// //           color: Colors.white, // White text color for better visibility
// //           fontWeight: FontWeight.bold,
// //         ),
// //       ),
// //     ),
// //   ),
// // ),
// ],
//
// ),
// Center(
// child: Container(
// height: 250,
// width: 250,
// margin: EdgeInsets.all(20),
// padding: EdgeInsets.symmetric(
// vertical: 20,
// horizontal: 20,
// ),
// decoration: BoxDecoration(
// color: Colors.orange, // Orange background color
// borderRadius: BorderRadius.circular(20),
// border: Border.all(
// color: Colors.black, // Black border
// width: 10,
// style: BorderStyle.solid,
// ),
// image: DecorationImage(
// fit: BoxFit.cover,
// image: NetworkImage(
// 'https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg',
// ),
// ),
// boxShadow: [
// BoxShadow(
// color: Colors.black, // Black shadow color
// blurRadius: 10,
// spreadRadius: 10,
// offset: Offset(10, 10),
// )
// ],
// ),
// child: Center(
// child: Text(
// 'Container 1',
// style: TextStyle(
// color: Colors.white, // White text color for better visibility
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// ),
// ),
// ],
//
// ),
//
