import 'package:flutter/material.dart';
import 'package:password_manager_flutter/config/asset_Styles.dart';
import 'package:password_manager_flutter/config/asset_colors.dart';
import 'package:password_manager_flutter/config/navigation_service.dart';
import 'package:password_manager_flutter/config/ui_helper.dart';
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
              verticalSpace(40),
              Row(
                children: [
                  SizedBox(
                    width: 33,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    'Categories',
                    style: AssetStyles.mediumTitle,
                  ),
                  Spacer(
                    flex: 2,
                  ),
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
                                    Text('Category'),
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
                    child: Container(
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
                  ),
                  // Spacer(),
                ],
              ),
              verticalSpace(30),
              ...List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FormPage(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Categories',
                          style: AssetStyles.mediumTitle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AssetColors.orangePastel,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            '5',
                            style: AssetStyles.bigDescription.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(Icons.delete),
                        Icon(Icons.edit)
                      ],
                    ),
                  ),
                );
              }),
              verticalSpace(50),
              ButtonPrimary(label: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}
