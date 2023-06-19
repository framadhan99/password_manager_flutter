import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/asset_styles.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            color: AssetColors.greenLight,
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 50,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: AssetStyles.mediumTitle,
                  ),
                  const Spacer(),
                  Container(
                    height: 23,
                    width: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AssetColors.orangePastel,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              ...List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: AssetStyles.mediumTitle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          '5',
                          style: AssetStyles.bigDescription.copyWith(
                            color: AssetColors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Logout',
                    style: AssetStyles.mediumTitle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  horizontalSpace(20),
                  const Icon(
                    Icons.exit_to_app,
                    color: AssetColors.grey,
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
