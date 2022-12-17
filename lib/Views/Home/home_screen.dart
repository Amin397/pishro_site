import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import '../../Consts/colors.dart';
import '../../Controllers/Home/home_controller.dart';
import '../../Utils/responsive.dart';
import 'Widgets/build_articles_widget.dart';
import 'Widgets/build_company_info.dart';
import 'Widgets/build_footer_widget.dart';
import 'Widgets/build_future_widget.dart';
import 'Widgets/build_header_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBgColor,
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: GetBuilder(
          init: controller,
          id: 'scroll',
          builder: (ctx)=>SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              children: [
                // _buildHeader(),
                BuildHomeHeaderWidget(
                  controller: controller,
                ),
                BuildArticlesWidget(
                  controller: controller,
                ),
                SizedBox(
                  height: Get.height * .25,
                ),
                const BuildCompanyInfo(),
                const BuildFutureWidget(),
                const BuildFooterWidget()
              ],
            ),
          ),
        )
      ),
    );
  }
}
