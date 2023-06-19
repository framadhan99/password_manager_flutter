import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_Styles.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';
import 'package:password_manager_flutter/pages/detail_page.dart';
import 'package:password_manager_flutter/pages/from_page.dart';
import 'package:password_manager_flutter/widgets/button_primary.dart';
import 'package:password_manager_flutter/widgets/textfield_general.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.symmetric(horizontal: 20),
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
                    'Password Manager',
                    style: AssetStyles.mediumTitle,
                  ),
                ],
              ),
              verticalSpace(40),
              ...List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: AssetColors.greenLight),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DetailPage(),
                                ));
                          },
                          child: Text(
                            'Fajar@gmail.com',
                            style: AssetStyles.mediumTitle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.delete,
                            size: 18,
                            color: AssetColors.orangePastel,
                          ),
                        ),
                        horizontalSpace(5),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  child: Container(
                                      padding: EdgeInsets.all(30),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text('Email'),
                                          verticalSpace(5),
                                          SizedBox(
                                            width: 200,
                                            child: TextFieldGeneral(),
                                          ),
                                          verticalSpace(20),
                                          Text('Password'),
                                          verticalSpace(5),
                                          SizedBox(
                                            width: 200,
                                            child: TextFieldGeneral(),
                                          ),
                                          verticalSpace(20),
                                          ButtonPrimary(
                                            width: 100,
                                            label: 'Update',
                                          )
                                        ],
                                      )),
                                );
                              },
                            );
                          },
                          child: Icon(
                            Icons.edit,
                            size: 18,
                            color: AssetColors.greyDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              verticalSpace(69),
              ButtonPrimary(
                label: 'Add',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        child: Container(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Email'),
                                verticalSpace(5),
                                SizedBox(
                                  width: 200,
                                  child: TextFieldGeneral(),
                                ),
                                verticalSpace(20),
                                Text('Password'),
                                verticalSpace(5),
                                SizedBox(
                                  width: 200,
                                  child: TextFieldGeneral(),
                                ),
                                verticalSpace(20),
                                ButtonPrimary(
                                  width: 100,
                                  label: 'Add',
                                )
                              ],
                            )),
                      );
                    },
                  );
                },
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
