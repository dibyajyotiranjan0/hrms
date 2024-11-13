import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:screenshot/screenshot.dart';
import 'package:image_picker/image_picker.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScreenshotController screenshotController = ScreenshotController();
  bool _isSharing = false;
  Future<void> _captureAndShare() async {
    setState(() {
      _isSharing = true; // Set to true when capturing
    });
    try {
      Uint8List? image = await screenshotController.capture();
      if (image == null) {
        print('Image capture returned null');
        return;
      }

      final directory = await getTemporaryDirectory();
      final imagePath = '${directory.path}/shared_image.png';
      final imageFile = File(imagePath);

      await imageFile.writeAsBytes(image);
      print('Image saved to $imagePath');

      // Ensure the XFile import is correct
      List<XFile> files = [XFile(imagePath)];

      // Share the image and Play Store URL via WhatsApp
      await Share.shareXFiles(
        files,
        text:
            'Check out this app on the Play Store: https://play.google.com/store/apps/details?id=com.newsbell',
      );

      print('Share dialog should appear now.');
    } catch (e) {
      print('Error while capturing and sharing: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This Appbar"),
      ),
      floatingActionButton: Transform.translate(
        offset: Offset(0, 10),
        child: Container(
          color: Colors.red,
          height: 60,
          width: double.infinity,
          child: IconButton(
            onPressed: () {
              _captureAndShare();
            },
            icon: Icon(Icons.share),
          ),
        ),
      ),
      body: Screenshot(
        controller: screenshotController,
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/back.jpg"))),
                      ),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: SizedBox(
                              height: 50,
                              width: 50,
                              child:
                                  Image.asset("assets/WhatsApp_icon.png.webp")))
                    ],
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                  TextButton(onPressed: () {}, child: Text("Read more")),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.white,
                    child: Image.asset('assets/playstore_icon.png',
                        width: 50, height: 50),
                  ),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       _captureAndShare();
                  //     },
                  //     child: Text("Share"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
