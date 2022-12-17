import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/Articles/single_article_five_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widgets/build_single_article_header_five_widget.dart';


class SingleArticleFiveScreen extends StatelessWidget {
  SingleArticleFiveScreen({Key? key}) : super(key: key);


  final SingleArticleFiveController controller = Get.put(SingleArticleFiveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildSingleArticleHeaderFiveWidget(
                controller: controller,
              ),
              // const BuildMainTextWidget(),
              // const BuildLastTextWidget(),
              const BuildFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
