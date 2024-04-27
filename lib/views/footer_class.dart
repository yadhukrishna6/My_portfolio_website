import 'package:flutter/material.dart';

import 'package:my_portfolio/globals/app_colors.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: AppColors.bgColor2,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: const Stack(
        children: [
          Center(
            child: Text(
              '@Copyrights 2024 design by yadhukrishnan . All Rights',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
