import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/Articles/single_article_one_controller.dart';
import '../Home/Widgets/build_footer_widget.dart';
import 'Widgets/build_first_text_widget.dart';
import 'Widgets/build_single_article_header_one_widget.dart';

class SingleArticleOneScreen extends StatelessWidget {
  SingleArticleOneScreen({Key? key}) : super(key: key);

  final SingleArticleOneController controller =
      Get.put(SingleArticleOneController());

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
              BuildSingleArticleHeaderOneWidget(
                controller: controller,
              ),
              const BuildFirstTextWidget(),
              const BuildFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
