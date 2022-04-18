import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({Key? key}) : super(key: key);

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  Future<void> _showdialog() async {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: AlertDialog(
              title: Text('Alert !'),
              content: Text('Do you want to delete ?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Yes')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No')),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          _showdialog();
        },
        child: Text('Submit'),
      )),
    );
  }
}
