

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minggu_9/controller/demoController.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();
  //getting the cart controller, you can show amount or anything
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Demo Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Get.arguments),
              ),
              SwitchListTile(
                value: ctrl.isDark,
                title: Text("touch to change ThemeMode"), 
                onChanged: ctrl.changeTheme,
                ),
                ElevatedButton(
                  onPressed: () => Get.snackbar("Snackbar", 
                  "hello this is the snackbar message",
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.white,
                  backgroundColor: Colors.black),
                  child: Text("snack bar")),
                ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                    title: "Dialog",
                    content: Text("hey from dialogue",)),
                    child: Text('dialogue'),),
                ElevatedButton(
                  onPressed: () => Get.bottomSheet(Container(
                    height: 150,
                    color: Colors.white,
                    child: Text('helo from bottom sheet',
                    style: TextStyle(fontSize: 30.0),
                    ),
                  )), 
                  child: Text("bottom sheet")),
                  ElevatedButton(
                    onPressed: () => Get.offAllNamed('/'), 
                    child: Text('back to home')),
                  ElevatedButton(
                    onPressed: () => Get.offNamed('/'), 
                    child: Text("back to home")) ,
          ],
        ),
      ),
    );
  }
}
