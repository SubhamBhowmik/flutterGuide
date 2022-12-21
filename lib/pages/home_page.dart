import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Subham"),
      ),
      body: Center(
        child: Text("homepage body"),
      ),
      drawer: Drawer(),
    );
  }
}
