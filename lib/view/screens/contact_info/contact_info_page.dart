import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utills/attributes/app_attributes.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  int index = 0;
  bool isPassword = true;

  ImagePicker picker = ImagePicker();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> pickImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(
      source: source,
    );
    if (xFile != null) {
      image = File(xFile.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            "Contact Info",
            style: TextStyle(
              fontSize: 25.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          index = 0;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border(
                              bottom: BorderSide(
                                color: index == 0
                                    ? Colors.yellow
                                    : Colors.transparent,
                                width: 4,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade200,
                            ),
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          index = 1;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border(
                              bottom: BorderSide(
                                color: index == 1
                                    ? Colors.yellow
                                    : Colors.transparent,
                                width: 4,
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Image",
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade200,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: IndexedStack(
                  index: index,
                  children: [
                    // 0 => Contact
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 550.h,
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Form(
                              key: formKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: nameController,
                                      cursorColor: Colors.deepPurpleAccent,
                                      cursorWidth: 2,
                                      // onChanged: (val) {
                                      //   log(val);
                                      //   name = val;
                                      //   setState(() {});
                                      // },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your name...";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (val) {
                                        name = val!;
                                      },
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: "Enter your name...",
                                        hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15.sp,
                                        ),
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                        prefixIcon: Icon(
                                          CupertinoIcons.person,
                                          color: Colors.deepPurpleAccent,
                                          size: 25.sp,
                                        ),
                                        suffixIcon: const Icon(
                                          Icons.person_3,
                                          color: Colors.grey,
                                        ),
                                        // border: UnderlineInputBorder(
                                        //   borderSide: BorderSide(
                                        //     color: Colors.red,
                                        //     width: 2,
                                        //   ),
                                        // ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(14)),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.deepPurpleAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TextFormField(
                                      controller: emailController,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      // onChanged: (val) {
                                      //   email = val;
                                      //   setState(() {});
                                      // },
                                      validator: (val) => (val!.isEmpty)
                                          ? "Enter your email..."
                                          : null,
                                      onSaved: (val) {
                                        email = val!;
                                      },
                                      decoration: InputDecoration(
                                        hintText: "Enter your email...",
                                        hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15.sp,
                                        ),
                                        labelText: "Email",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: Colors.deepPurpleAccent,
                                          size: 25.sp,
                                        ),
                                        // suffixIcon: Icon(
                                        //   Icons.person_3,
                                        //   color: Colors.grey,
                                        // ),
                                        // border: UnderlineInputBorder(
                                        //   borderSide: BorderSide(
                                        //     color: Colors.red,
                                        //     width: 2,
                                        //   ),
                                        // ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.deepPurpleAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TextFormField(
                                      controller: addressController,
                                      maxLines: 2,
                                      textInputAction: TextInputAction.next,
                                      textAlign: TextAlign.start,
                                      validator: (val) => (val!.isEmpty)
                                          ? "Enter your address..."
                                          : null,
                                      // onChanged: (val) {
                                      //   log(val);
                                      //   address = val;
                                      //   setState(() {});
                                      // },
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          CupertinoIcons.location_solid,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        labelText: "Address",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                        hintText: "Enter your address...",
                                        hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15.sp,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          borderSide: const BorderSide(
                                            color: Colors.deepPurpleAccent,
                                            width: 2,
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TextFormField(
                                      controller: phoneController,
                                      // onChanged: (val) {
                                      //   log(val);
                                      //   phone = int.parse(val);
                                      //   setState(() {});
                                      // },
                                      validator: (val) => (val!.isEmpty)
                                          ? "Enter your phone number..."
                                          : null,
                                      maxLength: 10,
                                      textInputAction: TextInputAction.next,
                                      textAlign: TextAlign.start,

                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          CupertinoIcons.phone,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        labelText: "Phone",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                        hintText: "Enter your number...",
                                        hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15.sp,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          borderSide: const BorderSide(
                                            color: Colors.deepPurpleAccent,
                                            width: 2,
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TextFormField(
                                      controller: passwordController,
                                      obscureText: isPassword,
                                      obscuringCharacter: '*',
                                      textInputAction: TextInputAction.done,
                                      textAlign: TextAlign.start,
                                      // onChanged: (val) {
                                      //   log(val);
                                      //   password = val;
                                      //   setState(() {});
                                      // },
                                      validator: (val) => (val!.isEmpty)
                                          ? "Enter your password..."
                                          : null,
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            // if (isPassword == true) {
                                            //   isPassword = false;
                                            // } else {
                                            //   isPassword = true;
                                            // }
                                            isPassword = !isPassword;
                                            setState(() {});
                                          },
                                          icon: Icon((!isPassword)
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                        ),
                                        labelText: "Password",
                                        labelStyle: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                        hintText: "Enter your number...",
                                        hintStyle: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15.sp,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          borderSide: const BorderSide(
                                            color: Colors.grey,
                                            width: 2,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          borderSide: const BorderSide(
                                            color: Colors.deepPurpleAccent,
                                            width: 2,
                                          ),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                              formKey.currentState!.save();
                                              // name = nameController.text;
                                              // email = emailController.text;
                                              // address = addressController.text;
                                              // phone =
                                              //     int.parse(phoneController.text);
                                              // password = passwordController.text;
                                              setState(() {});
                                            }
                                          },
                                          child: const Text("Submit"),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            nameController.clear();
                                            emailController.clear();
                                            addressController.clear();
                                            phoneController.clear();
                                            passwordController.clear();
                                            setState(() {});
                                          },
                                          child: const Text("Reset"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text("Name : $name"),
                          Text("Email : $email"),
                          Text("Address : $address"),
                          Text("Phone : ${phone.toString()}"),
                          Text("Password : $password"),
                        ],
                      ),
                    ),

                    // 1 => Image
                    Container(
                      height: 250.h,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 70.w,
                            backgroundImage: (image != null)
                                ? FileImage(image!)
                                : const NetworkImage(
                                        "https://media.istockphoto.com/id/1327592506/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-man.jpg?s=612x612&w=0&k=20&c=BpR0FVaEa5F24GIw7K8nMWiiGmbb8qmhfkpXcp1dhQg=")
                                    as ImageProvider,
                          ),
                          FloatingActionButton.small(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text("Pick Image"),
                                  titleTextStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.sp,
                                  ),
                                  backgroundColor: Colors.blueAccent,
                                  content: Row(
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: () async {
                                          await pickImage(
                                            source: ImageSource.camera,
                                          ).then((val) {
                                            Navigator.pop(context);
                                          });

                                          setState(() {});
                                        },
                                        label: const Text("Camera"),
                                        icon: const Icon(CupertinoIcons.camera),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      ElevatedButton.icon(
                                        onPressed: () async {
                                          await pickImage(
                                                  source: ImageSource.gallery)
                                              .then(
                                            (val) => Navigator.pop(context),
                                          );
                                          setState(() {});
                                        },
                                        label: const Text("Gallery"),
                                        icon: const Icon(Icons.photo),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
