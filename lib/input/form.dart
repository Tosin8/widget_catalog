import 'package:flutter/material.dart';

// DISCLAIMER: EACH INDIVIDUAL FORM FIELD SHOULB EBE WRAPPRED IN A FORM FIELD WIDGET.( TEXTFORMFIELD)  - USING GLOBAL KEY TO ACHIEVE FORM STATE and can be used to identify the form and validate input.

class Form_Widget extends StatefulWidget {
  const Form_Widget({super.key});

  @override
  State<Form_Widget> createState() => _Form_WidgetState();
}

class _Form_WidgetState extends State<Form_Widget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  // validate will return true if the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // process data
                  }
                },
                child: const Text('Submit'),
              ))
        ]));
  }
}
