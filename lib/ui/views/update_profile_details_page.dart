import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:validus/ui/usefull/palette.dart';
import 'package:validus/ui/usefull/styles/text_styles.dart';
import 'package:validus/ui/widgets/app_button.dart';
import 'package:validus/utils/string_const.dart';

import '../../utils/enums.dart';

class UpdateProfileDetailsPage extends StatelessWidget {
  //var controller = Get.put(ValidusController());
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(24.0),
          child: AppButton(
            text: "Save",
            onPressed: () {
              if(Get.arguments==UpdateProfile.email){
                if(controller.text.isEmail){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("data Saved"),
                  ));
                  saveData();
                }else{
                  //Scaffold.of(context).showSnackBar(snackbar)
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("email id is not valid"),
                  ));
                }
              }else{
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("data Saved"),
                ));
                saveData();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget get getBody {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.close,
                  color: Palette.textColor,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Edit $getTitle',
                    style: TextStyles.sp18(color: Palette.colorWhite),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text('We will send you an email to confirm you new $getTitle',
              style: TextStyles.sp16(color: Palette.colorWhite)),
          const SizedBox(
            height: 24,
          ),
          getFields
        ],
      ),
    );
  }

  Widget get getFields {
    return Container(
      //color: const Color(0xFF2F3444),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),

      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        color: Palette.cardBg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTitle,
            style: TextStyles.sp14(color: const Color(0xFFA1A1A1)),
          ),
          const SizedBox(
            height: 4,
          ),
          TextField(
            controller: controller,
            autofocus: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
              //hintText: getTitle,
            ),
            style: TextStyles.sp18(color: const Color(0xFFD2D2D2)),
          ),
        ],
      ),
    );
  }

  String get getTitle {
    var title = '';
    switch (Get.arguments) {
      case UpdateProfile.name:
        title = 'Name';
        break;
      case UpdateProfile.email:
        title = 'Email';
        break;
      case UpdateProfile.address:
        title = 'Address';
        break;
    }

    return title;
  }

  void saveData() {
    final storage = GetStorage();
    switch (Get.arguments) {
      case UpdateProfile.name:
        storage.write(StringConst.namekey, controller.text);
        break;
      case UpdateProfile.email:
        storage.write(StringConst.emailkey, controller.text);
        break;
      case UpdateProfile.address:
        storage.write(StringConst.addresskey, controller.text);
        break;
    }
    Get.back(result: true);
  }
}
