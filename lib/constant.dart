import 'package:flutter/material.dart';

const kMainTextStyle = TextStyle(
  fontSize: 45,
  color: Colors.black54,
  fontWeight: FontWeight.bold,
);

const KRoundedButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const KTextfieldInputDecoration = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const KChatTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const KChatDecoration = InputDecoration(
  border: InputBorder.none,
  isCollapsed: true,
  hintText: 'Write your message',
);
const KSendButtonStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const KsenderBubbleMessageStyle = TextStyle(
  fontSize: 12.0,
  color: Colors.black45,
);
const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter Email',
  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
  ),
);
