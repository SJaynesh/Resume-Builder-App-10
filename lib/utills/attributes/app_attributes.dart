// Contact Page

import 'dart:io';

import 'package:flutter/cupertino.dart';

String name = "";
String email = "";
String address = "";
int phone = 0;
String password = "";
File? image;

// Personal Detail Page

String gender = "";

bool english = false;
bool hindi = false;
bool gujarati = false;

bool isDeclaration = false;

// Technical Skills Page

List<String> technicalSkillList = [
  "",
  "",
];

List<TextEditingController> technicalSkillController = [
  TextEditingController(),
  TextEditingController(),
];
