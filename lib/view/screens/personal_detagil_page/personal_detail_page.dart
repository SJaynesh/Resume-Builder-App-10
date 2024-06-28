import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resume_builder_app/utills/attributes/app_attributes.dart';

class PersonalDetailPage extends StatefulWidget {
  const PersonalDetailPage({super.key});

  @override
  State<PersonalDetailPage> createState() => _PersonalDetailPageState();
}

class _PersonalDetailPageState extends State<PersonalDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Personal Detail ",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Birth Date",
                        hintText: "DD/MM/YYYY",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.deepPurple,
                              width: 2,
                            ))),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Gender : $gender",
                    style: TextStyle(
                      fontSize: 25.sp,
                    ),
                  ),
                  Row(
                    children: [
                      Radio(
                        value: "Male",
                        groupValue: gender,
                        activeColor: Colors.green,
                        // fillColor: WidgetStateProperty.all(Colors.green),
                        overlayColor:
                            WidgetStateProperty.all(Colors.green.shade200),
                        splashRadius: 50,
                        onChanged: (val) {
                          gender = val!;
                          setState(() {});
                        },
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                      Radio(
                        value: "Female",
                        groupValue: gender,
                        onChanged: (val) {
                          gender = val!;
                          setState(() {});
                        },
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          value: "Male",
                          title: const Text("Male"),
                          tileColor: Colors.yellow.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          controlAffinity: ListTileControlAffinity.platform,
                          subtitle: const Text("Gender"),
                          secondary: Text(
                            "👦",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value!;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: RadioListTile(
                          value: "Female",
                          title: Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          tileColor: Colors.yellow.shade200,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          controlAffinity: ListTileControlAffinity.platform,
                          subtitle: const Text("Gender"),
                          secondary: Text(
                            "👧",
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value!;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Language : ",
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: english,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.pink.shade200,
                        ),
                        // fillColor: WidgetStateProperty.all(Colors.brown),
                        activeColor: Colors.brown,
                        checkColor: Colors.white,
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        onChanged: (value) {
                          english = value!;
                          setState(() {});
                        },
                      ),
                      const Text("English"),
                      Checkbox(
                        value: hindi,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.pink.shade200,
                        ),
                        // fillColor: WidgetStateProperty.all(Colors.brown),
                        activeColor: Colors.brown,
                        checkColor: Colors.white,
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        onChanged: (value) {
                          hindi = value!;
                          setState(() {});
                        },
                      ),
                      const Text("Hindi"),
                      Checkbox(
                        value: gujarati,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.pink.shade200,
                        ),
                        // fillColor: WidgetStateProperty.all(Colors.brown),
                        activeColor: Colors.brown,
                        checkColor: Colors.white,
                        side: const BorderSide(
                          color: Colors.grey,
                        ),
                        onChanged: (value) {
                          gujarati = value!;
                          setState(() {});
                        },
                      ),
                      const Text("Gujarati")
                    ],
                  ),
                  CheckboxListTile(
                    value: english,
                    onChanged: (val) {
                      english = val!;
                      setState(() {});
                    },
                    title: const Text("English "),
                    subtitle: const Text("Language"),
                    secondary: Text(
                      "💂",
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  Switch(
                    activeColor: Colors.blue,
                    thumbColor: WidgetStateProperty.all(
                      Colors.red,
                    ),
                    activeThumbImage: const NetworkImage(
                        "https://emojiisland.com/cdn/shop/products/Emoji_Icon_-_Sunglasses_cool_emoji_large.png?v=1571606093"),
                    inactiveThumbImage: const NetworkImage(
                        "https://emojiisland.com/cdn/shop/products/Super_Angry_Face_Emoji_ios10_large.png?v=1571606092"),
                    // inactiveThumbColor: Colors.black,
                    value: isDeclaration,
                    onChanged: (val) {
                      isDeclaration = val;
                      setState(() {});
                    },
                  ),
                  Visibility(
                    visible: isDeclaration,
                    child: Container(
                      height: 100.h,
                      width: double.infinity,
                      color: Colors.yellow.shade200,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
