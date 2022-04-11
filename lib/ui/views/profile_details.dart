import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validus/ui/views/update_profile_details_page.dart';
import 'package:validus/ui/widgets/app_card.dart';
import 'package:validus/utils/string_const.dart';

import '../../controller/validus_controller.dart';
import '../../utils/enums.dart';
import '../usefull/palette.dart';
import '../usefull/styles/text_styles.dart';

class ProfileDetails extends StatelessWidget {
  ValidusController controller;

  ProfileDetails(this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Obx(() => getBody)],
    );
  }

  Widget get getBody {
    return AppCard(
      child: Column(
        children: [
          getIteam(StringConst.name, controller.name.value, () {
            Get.to(UpdateProfileDetailsPage(), arguments: UpdateProfile.name)
                ?.then((value) {
              controller.getProfileData();
            });
          }),
          getIteam(StringConst.email, controller.email.value, () {
            Get.to(UpdateProfileDetailsPage(), arguments: UpdateProfile.email)
                ?.then((value) {
              controller.getProfileData();
            });
          }),
          getIteam(StringConst.address, controller.address.value, () {
            Get.to(UpdateProfileDetailsPage(), arguments: UpdateProfile.address)
                ?.then((value) {
              controller.getProfileData();
            });
          }),
        ],
      ),
    );
  }

  Widget getIteam(String title, String value, GestureTapCallback function) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyles.sp18(color: Palette.colorWhite),
              ),
              InkWell(
                  onTap: function,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      StringConst.edit,
                      style: TextStyles.sp20(color: Palette.colorWhite),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            value,
            style: TextStyles.sp20(),
          ),
        ],
      ),
    );
  }
}
