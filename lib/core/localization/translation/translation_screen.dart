import 'package:dukaan/core/helper/spaces.dart';
import 'package:dukaan/core/localization/translation/change_lang.dart';
import 'package:dukaan/core/widget/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationScreen extends StatefulWidget {
  TranslationScreen({super.key});

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

final LocaleController localeController = Get.find();
List<String> options = ["option 1", "option 2"];

class _TranslationScreenState extends State<TranslationScreen> {
  String currentOption = options[1];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          ListTile(
            title: const Text("English"),
            leading: Radio(
                value: options[0],
                groupValue: currentOption,
                onChanged: (val) {
                  setState(() {
                    currentOption = val.toString();
                    localeController.changeLange("en");
                  });
                }),
          ),
          ListTile(
            title: const Text("Arabic"),
            leading: Radio(
                value: options[1],
                groupValue: currentOption,
                onChanged: (val) {
                  setState(() {
                    currentOption = val.toString();
                    localeController.changeLange("ar");
                  });
                }),
          ),
          verticalSpace(20),
          AppElevatedButton(
              isButtonEnabled: true,
              onPressed: () {
                Get.back();
              },
              elevateText: "Update")
        ],
      ),
    );
  }
}
