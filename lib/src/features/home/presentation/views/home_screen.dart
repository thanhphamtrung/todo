import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/src/cores/constants/app_assets.dart';
import 'package:todo/src/cores/constants/app_colors.dart';
import 'package:todo/src/cores/widgets/task_card.dart';
import 'package:todo/src/features/home/presentation/controllers/home_controller.dart';

import '../../../../cores/routes/app_pages.dart';
import '../../../../cores/routes/route_generator.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO DO LIST'),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(ImageAssetsPath.settings),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 44),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      height: 24.39,
                      ImageAssetsPath.smallLogo,
                    ),
                    const SizedBox(width: 9),
                    Text(
                      'LIST OF TODO',
                      style: TextStyle(
                          fontFamily: 'BebasNeue-Regular',
                          color: AppColors.primaryColor,
                          fontSize: 36),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    ImageAssetsPath.filter,
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            Obx(
              () => !controller.isLoading.value
                  ? Column(
                      children: controller.tasks
                          .map((e) => Column(
                                children: [
                                  TaskCard(
                                    title: e.title ?? '',
                                    content: e.content ?? '',
                                    createTime: e.createTime ?? '',
                                    onTap: () {
                                      Get.toNamed(RouteGenerator.routeAppend(
                                          context, Routes.detail));
                                    },
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ))
                          .toList())
                  : const Center(child: CircularProgressIndicator()),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(ImageAssetsPath.floatButton),
      ),
    );
  }
}
