import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/view/screens/build_option/attributes/build_option_attributes.dart';

class BuildOptionPage extends StatefulWidget {
  const BuildOptionPage({super.key});

  @override
  State<BuildOptionPage> createState() => _BuildOptionPageState();
}

class _BuildOptionPageState extends State<BuildOptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Resume Workspace",
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
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
                  "Build Option",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ...buildOptionList.map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(4),
                          child: Card(
                            // shadowColor: Colors.yellow,
                            // elevation: 5,
                            child: ListTile(
                              onTap: () {
                                log("Tapped....");
                                Navigator.of(context).pushNamed(e['page']);
                              },
                              leading: CircleAvatar(
                                radius: 40.w,
                                backgroundColor: Colors.grey.shade300,
                                child: Image.asset(
                                  e['icon'],
                                  height: 35.h,
                                ),
                              ),
                              title: Text(
                                e['title'],
                                style: TextStyle(
                                  fontSize: 22.sp,
                                ),
                              ),
                              subtitle: const Text("Resume"),
                              trailing: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
