import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/asset_styles.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';
import 'package:password_manager_flutter/pages/from_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Dashboard',
            style: AssetStyles.bigTitle.copyWith(color: AssetColors.greyDark),
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AssetColors.greenDark,
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Categories',
                          style: AssetStyles.mediumTitle
                              .copyWith(color: Colors.white),
                        ),
                        verticalSpace(20),
                        Text(
                          '5',
                          style: AssetStyles.mediumTitle.copyWith(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ],
      ),
    ));
  }
}
