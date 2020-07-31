import 'package:flutter/material.dart';
import 'dart:io';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 150,
          height: 100,
          alignment: Alignment.center,
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          child: _storedImage != null ? 
            Image.file(_storedImage, fit: BoxFit.cover, width: double.infinity,) 
            : Text("No Image Taken", textAlign: TextAlign.center,),
        ),
        SizedBox(width: 10,),
        FlatButton.icon(
          icon: Icon(Icons.camera),
          label: Text("Take Picture"),
          textColor: Theme.of(context).primaryColor,
          onPressed: () {
            
          },
        )
      ],
    );
  }
}
