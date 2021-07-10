// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'MobOps app-2',
  home: SafeArea(
    child: Scaffold(
      appBar: AppBar(title: Text('Custom List',style: const TextStyle(fontSize: 20))),
      body: Container(
          child: Column(
            children: <Widget>[
              new Flexible(child: CustomListView(), flex: 2),
              new Flexible(
                  child: Container(
                    child: Center(
                      child: Text(
                        'This is my list',
                        style: const TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  flex: 1),
            ],
          )),
    ),
  ),
));

class CustomListView extends StatefulWidget {
  @override
  _CustomListViewState createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      if (i % 6 == 0) {
        return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 30),
            title: buildHeadingElement(i)
        );
      } else {
        return ListTile(
          title: buildSenderElement(i),
          subtitle: buildMessageBody(i),
        );
      }
    });
  }

  Widget buildHeadingElement(int index) {
    return Center(
      child: Text(
          'Heading ' + index.toString(),
          style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[700]
          )
      ),
    );
  }

  Widget buildSenderElement(int index) {
    return Text(
        'Sender ' + index.toString(),
        style: const TextStyle(
            fontSize: 25
        )
    );
  }

  Widget buildMessageBody(int index) {
    return Text(
        'Message body ' + index.toString(),
        style: const TextStyle(
            fontSize: 20
        )
    );
  }
}