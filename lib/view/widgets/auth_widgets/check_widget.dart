import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ocd/controllers/auth_controller/auth_controller.dart';
import 'package:ocd/utils/constrants/colors/colors.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({Key? key, required this.onPressed}) : super(key: key);

  final controller = Get.find<AuthController>();
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              controller.checkBox();
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: controller.isCheckBox
                  ? const Icon(
                      Icons.done,
                      color: Colors.black,
                      size: 20,
                    )
                  : Container(),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Row(
            children: [
              const Text(
                "Do you agree to our",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: BLACKTEXT,
                  decoration: TextDecoration.none,
                ),
              ),
              TextButton(
                onPressed: onPressed,
                child: const Text(
                  "Privacy Policy",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: MAINCOLOR,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
