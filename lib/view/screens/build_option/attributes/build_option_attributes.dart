import 'package:resume_builder_app/utills/routes/routes.dart';

String assetIconPath = "assets/images/build_option/";

List buildOptionList = [
  {
    'icon': "${assetIconPath}contact-books.png",
    'title': "Contact Info",
    'page': Routes.contactInfo,
  },
  {
    'icon': "${assetIconPath}briefcase.png",
    'title': "Carrier Objective",
    'page': Routes.contactInfo,
  },
  {
    'icon': "${assetIconPath}user.png",
    'title': "Personal Detail",
    'page': Routes.personalDetail,
  },
  {
    'icon': "${assetIconPath}mortarboard.png",
    'title': "Education",
    'page': Routes.contactInfo,
  },
  {
    'icon': "${assetIconPath}experience.png",
    'title': "Technical Skill",
    'page': Routes.technicalPage,
  },
];
