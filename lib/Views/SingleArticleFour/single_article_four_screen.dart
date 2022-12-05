import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/Articles/single_article_four_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widget/build_main_text_part_widget.dart';
import 'Widget/build_single_article_header_four_widget.dart';

class SingleArticleFourScreen extends StatelessWidget {
  SingleArticleFourScreen({Key? key}) : super(key: key);


  final SingleArticleFourController controller = Get.put(SingleArticleFourController());

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
              BuildSingleArticleHeaderFourWidget(
                controller: controller,
              ),
              const BuildMainTextPartWidget(),
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
