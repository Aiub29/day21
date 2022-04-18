import 'package:day21/welcome.dart';
import 'package:flutter/material.dart';

class FormFieldDemo extends StatefulWidget {
  const FormFieldDemo({Key? key}) : super(key: key);

  @override
  State<FormFieldDemo> createState() => _FormFieldDemoState();
}

class _FormFieldDemoState extends State<FormFieldDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                label: Text(
                  'Enter Name',
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Welcome(nameController.text, emailController.text)))
            }, child: Text('Send'))
          ],
        ),

      
      ),
    );
  }
}
