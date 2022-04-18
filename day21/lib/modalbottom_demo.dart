import 'package:flutter/material.dart';

class ModalBottom_Demo extends StatefulWidget {
  const ModalBottom_Demo({Key? key}) : super(key: key);

  @override
  State<ModalBottom_Demo> createState() => _ModalBottom_DemoState();
}

class _ModalBottom_DemoState extends State<ModalBottom_Demo> {
  Future _showModal() async {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            width: 200,
            color: Colors.amberAccent,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  tileColor: Colors.black,
                  title: Text('Add to Cart'),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle),
                  tileColor: Colors.black,
                  title: Text('Check out'),
                  trailing: Icon(Icons.edit),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  tileColor: Colors.black,
                  title: Text('Favourite'),
                  trailing: Icon(Icons.edit),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Modal Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showModal();
          },
          child: Text('Show'),
        ),
      ),
    );
  }
}
