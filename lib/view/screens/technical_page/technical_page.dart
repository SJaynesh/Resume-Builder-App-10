import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/utills/attributes/app_attributes.dart';

class TechnicalPage extends StatefulWidget {
  const TechnicalPage({super.key});

  @override
  State<TechnicalPage> createState() => _TechnicalPageState();
}

class _TechnicalPageState extends State<TechnicalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   title: Text(
      //     "Personal Detail",
      //     style: TextStyle(
      //       fontSize: 25.sp,
      //       color: Colors.white,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.blue,
      // ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "Technical Skills ",
                style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Enter your Skills",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ...List.generate(
                      technicalSkillList.length,
                      (index) => SkillField(
                        index: index,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        technicalSkillList.add(" ");
                        technicalSkillController.add(TextEditingController());
                        setState(() {});
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.deepPurple.shade300,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    ...technicalSkillList.map(
                      (e) => Text(e),
                    ),
                    ...technicalSkillController.map(
                      (e) => Text(e.text),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SkillField({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: technicalSkillController[index],
              onChanged: (val) {
                technicalSkillList[index] = val;
                setState(() {});
                log("LIST : $technicalSkillList");
              },
              decoration: InputDecoration(
                hintText: "Flutter FrameWork, Dart Language, C++",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5.w,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.blue.shade300,
                    width: 2.w,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              log("INDEX: $index");
              technicalSkillList.removeAt(index);
              technicalSkillController.removeAt(index);
              setState(() {});
            },
            icon: Icon(
              CupertinoIcons.delete,
              size: 30.h,
            ),
          ),
        ],
      ),
    );
  }
}
