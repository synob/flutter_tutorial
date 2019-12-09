import 'package:flutter/material.dart';

class MyFormValidation extends StatefulWidget {
  @override
  _MyFormValidationState createState() => _MyFormValidationState();
}

class _MyFormValidationState extends State<MyFormValidation> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return '공백싫어';
                  }
                },
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    //valid
                    Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(
                      content: Text('처리중...'),
                    ));
                  }
                },
                child: Text('완료'),
              ),
              TextFormField(
                controller: nameController,
                onChanged: (text){
                  print(text);
                },
                decoration: InputDecoration(
                  hintText: '글을입력해주세요',
                  border: InputBorder.none,
                  labelText: '이름',
                ),

                autofocus: true,
              ),
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    //valid
                    Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(
                      content: Text('처리중...'),
                    ));
                  }
                },
                child: Text('완료'),
              ),
              RaisedButton(
                onPressed: () {
                  print(nameController.text);
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      content: Text(nameController.text),
                    );
                  });
                },
                child: Text('textfield result confirm'),
              ),
            ],
          )),
    );
  }
}
