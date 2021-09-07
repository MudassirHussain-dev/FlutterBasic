import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../constants.dart';
class SignUpForm extends StatelessWidget {
   SignUpForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);
  final GlobalKey formKey;
  late String _userName,_email,_password,_phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldName(
              text: "User Name",
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "theflutterway"),
              validator: RequiredValidator(errorText: "Username is required"),
              onSaved: (value)=>_userName,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            TextFieldName(
              text: "Email",
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "myemail@gmail.com"),
              validator: RequiredValidator(errorText: "Emai is required"),
              onSaved: (value)=>_email,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            TextFieldName(
              text: "Phone",
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "+123456789"),
              validator: RequiredValidator(errorText: "Phone no is required"),
              onSaved: (phoneNumber)=>_phoneNumber=phoneNumber!,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            TextFieldName(
              text: "Password",
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "****"),
              onSaved: (password)=>_password=password!,
              onChanged: (password)=>_password=password,

            ),
            const SizedBox(
              height: defaultPadding,
            ),
            TextFieldName(
              text: "Confirm Password",
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "****"),
              validator: (pass)=>MatchValidator(errorText: "password do not match").validateMatch(pass!, _password),
            ),
          ],
        ));
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}
