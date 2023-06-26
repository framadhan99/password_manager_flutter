import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/asset_styles.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';
import 'package:password_manager_flutter/widgets/button_primary.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: AssetColors.greenLight),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              verticalSpace(40),
              Text(
                'Profile',
                style: AssetStyles.mediumTitle,
              ),
              verticalSpace(40),
              CircleAvatar(
                radius: 40,
              ),
              verticalSpace(20),
              Text(
                'Fajar Ramadhan',
                style: AssetStyles.mediumTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
