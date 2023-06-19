import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/asset_styles.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';
import 'package:password_manager_flutter/widgets/button_primary.dart';
import 'package:password_manager_flutter/widgets/textfield_general.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

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
                'Your Account',
                style: AssetStyles.mediumTitle,
              ),
              verticalSpace(30),
              Text('username'),
              verticalSpace(5),
              TextFieldGeneral(),
              verticalSpace(20),
              Text('email'),
              verticalSpace(5),
              TextFieldGeneral(),
              verticalSpace(20),
              Text('password'),
              verticalSpace(5),
              TextFieldGeneral(),
              verticalSpace(50),
              ButtonPrimary(
                label: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
