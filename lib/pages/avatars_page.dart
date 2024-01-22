import 'dart:math';

import 'package:demo/helpers/testdata.dart';
import 'package:demo/model/avatar.dart';
import 'package:flutter/material.dart';

import '../widget/avatar_widget.dart';

class AvatarsPage extends StatefulWidget {
  const AvatarsPage({super.key});

  @override
  State<AvatarsPage> createState() => _AvatarsPageState();
}

class _AvatarsPageState extends State<AvatarsPage> {
  List<Avatar> _avatars = [];
  bool _loading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
        centerTitle: true,
        actions: [
          _loading
          ? CircularProgressIndicator(color: Colors.white,)
              : IconButton(onPressed: () async {
                setState((){
                  _loading = true;
                });
                Future.delayed(const Duration(milliseconds: 500), (){
                  var avatar = allAvatars[Random().nextInt(allAvatars.length)];
                  setState(() {
                    _loading = false;
                    _avatars.add(avatar);
                  });
                });
          }, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: _avatars.length,
        itemBuilder: (BuildContext context, int index) {
          return avatar_widget(avatar: _avatars[index],);
        },
      ),

    );
  }
}