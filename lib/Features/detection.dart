import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class Detection extends StatefulWidget {
  @override
  app createState() => app();
}

class app extends State<Detection> {

  File _Image;
  final picker =  ImagePicker();

  Future getImage(ImageSource src) async {
    final PickedFile = await picker.getImage(source: src);

    setState(() {
      if (PickedFile != null){
        _Image = File (PickedFile.path);
      }
      else{
        print("no itesms");
      }
    });
  }

  add_image(){
    var add =AlertDialog(
        title: Text("choose from"),
        content: Column(
          children: [
            Container(
              child: ListTile(
                  leading: Icon(Icons.camera),
                  title: Text("Camera"),
                  onTap:(){
                    getImage(ImageSource.camera);
                    Navigator.of(context).pop();
                  }
              ),
            ),
            Container(
              child: ListTile(
                  leading: Icon(Icons.add_a_photo),
                  title: Text("gallery"),
                  onTap: (){
                    getImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  }

              ),
            ),
          ],
        )

    );
    showDialog(
        builder: (context) => add, context: context
    );
  }

  Widget decide_image_view(){
    _Image== null ? Image.file(_Image, width: 400.0, height: 400.0): Image.asset('assets/2.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("picking images for detection"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
          child: Center(
              child: decide_image_view()
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add_image,
        child: Icon(Icons.image),
      ),
    );
  }
}