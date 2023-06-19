import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/asset_styles.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(
              color: AssetColors.greenLight,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              verticalSpace(60),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Detail Accoount Password ',
                    style: AssetStyles.mediumTitle,
                  ),
                ],
              ),
              verticalSpace(40),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email'),
                    verticalSpace(5),
                    Container(
                      height: 35,
                      width: screenWidth(context),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: AssetColors.greenLight),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Fajar@gmail.com',
                        style: AssetStyles.mediumTitle.copyWith(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(20),
              SizedBox(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password'),
                      verticalSpace(5),
                      Container(
                        height: 35,
                        width: screenWidth(context),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: AssetColors.greenLight),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              '.........',
                              style:
                                  AssetStyles.smallTitle.copyWith(height: 0.5),
                            ),
                            Spacer(),
                            Icon(
                              Icons.remove_red_eye,
                              size: 18,
                              color: AssetColors.orangePastel,
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_rounded),
                          horizontalSpace(20),
                          Text(
                            'Back',
                            style: AssetStyles.smallTitle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Logout',
                    style: AssetStyles.smallTitle,
                  ),
                  horizontalSpace(20),
                  Icon(Icons.exit_to_app),
                ],
              ),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
