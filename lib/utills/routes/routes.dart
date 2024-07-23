import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/build_option/build_option_page.dart';
import 'package:resume_builder_app/view/screens/contact_info/contact_info_page.dart';
import 'package:resume_builder_app/view/screens/pdf_view_page/pdf_view_page.dart';
import 'package:resume_builder_app/view/screens/personal_detagil_page/personal_detail_page.dart';

import '../../view/screens/splsh/spalsh_screen.dart';
import '../../view/screens/technical_page/technical_page.dart';

class Routes {
  static String splashScreen = '/';
  static String buildOption = 'build_option_page';
  static String contactInfo = 'contact_info_page';
  static String personalDetail = 'personal_detail_page';
  static String technicalPage = 'technical_page';
  static String pdfViewPage = 'pdf_view_page';

  static Map<String, WidgetBuilder> myroutes = {
    splashScreen: (context) => const SplashScreen(),
    buildOption: (context) => const BuildOptionPage(),
    contactInfo: (context) => const ContactInfoPage(),
    personalDetail: (context) => const PersonalDetailPage(),
    technicalPage: (context) => const TechnicalPage(),
    pdfViewPage: (context) => const PDFViewPage(),
  };
}
