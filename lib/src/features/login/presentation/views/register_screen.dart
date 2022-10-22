import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/src/cores/constants/app_assets.dart';
import 'package:todo/src/cores/constants/app_colors.dart';
import 'package:todo/src/cores/constants/string_consts.dart';
import 'package:todo/src/cores/widgets/app_text_field.dart';
import 'package:todo/src/features/login/presentation/controllers/register_controller.dart';

import '../../../../cores/routes/app_pages.dart';
import '../../../../cores/widgets/rounded_button.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Center(
                  child: SizedBox(
                      height: 187,
                      width: 180,
                      child: Image.asset(ImageAssetsPath.logo)),
                ),
              ),
              AppTextField(
                hintText: LoginConst.email,
              ),
              const SizedBox(height: 16),
              AppTextField(
                hintText: LoginConst.fullName,
              ),
              const SizedBox(height: 16),
              AppTextField(
                hintText: LoginConst.password,
                suffixIcon: const Icon(Icons.visibility_off_rounded),
              ),
              const SizedBox(height: 16),
              AppTextField(
                hintText: LoginConst.confirmPassword,
                suffixIcon: const Icon(Icons.visibility_off_rounded),
              ),
              const SizedBox(height: 16),
              Center(
                child: RoundedButton(
                  onPressed: () {},
                  isLarge: true,
                  child: Text(LoginConst.signIn.toUpperCase()),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(LoginConst.dontHaveAcount),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.login);
                    },
                    child: Text(
                      LoginConst.signIn,
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 46),
            ],
          ),
        ),
      ),
    );
  }
}
