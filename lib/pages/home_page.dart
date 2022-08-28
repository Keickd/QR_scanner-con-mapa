import 'package:flutter/material.dart';
import 'package:qr_scanner/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete_forever),
          )
        ],
      ),
      body: Center(
        child: Text('Home PAge'),
      ),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
