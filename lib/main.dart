// @dart=2.2
import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CameraDeepArController cameraDeepArController;
  int countmask=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green.shade900,title: Center(child: Text("DEEP AR",)),),
        body: Stack(
          children: [
            CameraDeepAr(
                onCameraReady: (isReady) {
                  setState(() {});
                },
                onImageCaptured: (path) {
                  setState(() {});
                },
                onVideoRecorded: (path) {
                  setState(() {});
                },
                androidLicenceKey:
                "5da9ab63485408d13cf91af32ca7a72f82661fc9b24775fbcd3a5e911ead80e984b378dd516eafe2",
                iosLicenceKey:
                "586c2fa24cbc32e6148cd18e27c1be23d149d224b782f13ac9d264a636d84b948fd561d10241620f",
                cameraDeepArCallback: (c) async {
                  cameraDeepArController = c;
                  setState(() {});
                }),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.amber[600],
                  child: Icon(Icons.ac_unit_rounded),
                    onPressed: (){
                  cameraDeepArController.changeMask(countmask);
                  if (countmask==7){
                    countmask=0;
                  }
                  countmask++;
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}


//https://medium.com/flutter-community/easiest-steps-to-build-a-face-filter-app-with-flutter-and-deep-ar-c020037d893d
//https://github.com/mtellect/CameraDeepAR/issues/2