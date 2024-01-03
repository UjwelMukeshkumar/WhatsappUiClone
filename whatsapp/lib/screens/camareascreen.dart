// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// List<CameraDescription> cameras;

// class CameraScreen extends StatefulWidget {
//   const CameraScreen({required Key key}) : super(key: key);

//   @override
//   State<CameraScreen> createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   late CameraController _controller;
//   late Future<Void> cameraValue;
//   bool isRecording = false;
//   bool flash = false;
//   bool iscamerafront = true;
//   double transform = 0;

//   @override
//   void initState() {
//     supeer.initState();
//     _CameraController = CameraController(cameras[0], Resolutionpreset.high);
//     cameraValue = _CameraController.initialize();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _cameraController.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(

//       children: [
//         FutureBuilder(
//           future: cameraValue, 
//           builder:(context, snapshot){
//             if(snapshot.connectionState == ConnectionState.done){
//               return Container(
//                           width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.height,
//                       child: CameraPreview(CameraController));
//             }else{
//               return Center(
//                 child: CircularProgressIndicator()
//               );
//             }
//               ),
//               Positioned(
//                 bottom: 0.0,
//                 child:Container(
//                   color: Colors.black,
//                   padding: EdgeInsets.only(top: 5, bottom: 5),
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisSize: MainAxisSize.max,
//                         ,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           IconButton(
//                             onPressed: (){
//                               setState(() {
//                                 flash = !flash;
//                               });
//                               flash
//                               ? _CameraController
//                                .setFlashMode(FlashMode.torch)
//                                ? _CameraController.setFlashMode(FlashMode.off);
//                             }, 
//                                  icon: Icon(
//                             flash ? Icons.flash_on : Icons.flash_off,
//                             color: Colors.white,
//                             size: 28,
//                           ),
//                           ),
//                           GestureDetector(
//                             onLongPress: () async{
//                               await _cameraController.startVideoRecording();
//                               setState(() {
//                                 isRecording = true;
//                               });
//                             },
//                             onLongPressUp: () async{
//                               XFile viedopath = await _cameraController.stopViedoRecording();
//                               setState(() {
//                                 isRecording = false;
//                               });
//                             },
//                           )
//                         ],
//                       )
//                     ],
//                   )
//                 ) 
//               )
//             }
//           }
//            )

//       ],
//     )
//   }
// }
