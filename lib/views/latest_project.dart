import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';

class LatestProject extends StatefulWidget {
  const LatestProject({Key? key}) : super(key: key);

  @override
  State<LatestProject> createState() => _LatestProjectState();
}

class _LatestProjectState extends State<LatestProject> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 40.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: ' E-commerce App',
              asset: AppAssets.code,
              assetbig: AppAssets.ecommerce,
              hover: true,
              subtitle:
                  'This Flutter application is an e-commerce platform powered by Firebase for backend services and GetX for state management, featuring a new UI design',
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: 'Chat-App',
              asset: AppAssets.comp,
              assetbig: AppAssets.chatApp,
              hover: true,
              subtitle:
                  'Real-time Messaging Instantly send and receive messages with other users.Securely sign in and register users with Firebase Authentication.View and update user profiles',
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: 'Flutter Facebook App',
              asset: AppAssets.comp,
              assetbig: AppAssets.faceboo,
              hover: true,
              subtitle:
                  'facebook_ui_flutter_app Flutter app mimicking Facebook UI with news feed, profile, friend requests, and messages,post. Showcase complex UIs cross-platform.',
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: 'Flutter Grocery Store ',
              asset: AppAssets.comp,
              assetbig: AppAssets.grocery,
              hover: true,
              subtitle:
                  'Gogrocery app revolutionizes shopping with Firebase backend for robust data management and GetX for efficient state management.',
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: 'MY portfolio website',
              asset: AppAssets.brush,
              assetbig: AppAssets.profile,
              hover: true,
              subtitle:
                  'my portfolio website,with Flutter for stunning animations and Firebase for dynamic content.it promises an engaging UI and showcases my best work.',
            ),
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'E-commerce App',
                  asset: AppAssets.code,
                  assetbig: AppAssets.ecommerce,
                  hover: true,
                  subtitle:
                      'This Flutter application is an e-commerce platform powered by Firebase for backend services and GetX for state management, featuring a new UI design',
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'Chat-App',
                  asset: AppAssets.comp,
                  assetbig: AppAssets.chatApp,
                  hover: true,
                  subtitle:
                      'Real-time Messaging Instantly send and receive messages with other users.Securely sign in and register users with Firebase Authentication.View and update user profiles',
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'Flutter Facebook App',
                  asset: AppAssets.comp,
                  assetbig: AppAssets.faceboo,
                  hover: true,
                  subtitle:
                      'facebook_ui_flutter_app Flutter app mimicking Facebook UI with news feed, profile, friend requests, and messages,post. Showcase complex UIs cross-platform.',
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: 'Flutter Grocery Store',
              asset: AppAssets.brush,
              width: 725.0,
              hoverWidth: 735.0,
              assetbig: AppAssets.grocery,
              hover: true,
              subtitle:
                  'Gogrocery app revolutionizes shopping with Firebase backend for robust data management and GetX for efficient state management.',
            ),
          ),
          Constants.sizedBox(width: 24.0),
          InkWell(
            onTap: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            onHover: (value) {
              setState(() {});
            },
            child: buildContainer(
              title: 'MY portfolio website',
              asset: AppAssets.comp,
              assetbig: AppAssets.profile,
              hover: true,
              subtitle:
                  'my portfolio website,with Flutter for stunning animations and Firebase for dynamic content.it promises an engaging UI and showcases my best work.',
            ),
          ),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'E-commerce App',
                  asset: AppAssets.code,
                  assetbig: AppAssets.ecommerce,
                  hover: true,
                  subtitle:
                      'This Flutter application is an e-commerce platform powered by Firebase for backend services and GetX for state management, featuring a new UI design',
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'Chat-App',
                  asset: AppAssets.comp,
                  assetbig: AppAssets.chatApp,
                  hover: true,
                  subtitle:
                      'Real-time Messaging Instantly send and receive messages with other users.Securely sign in and register users with Firebase Authentication.View and update user profiles',
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'Flutter Facebook App',
                  asset: AppAssets.comp,
                  assetbig: AppAssets.faceboo,
                  hover: true,
                  subtitle:
                      'facebook_ui_flutter_app Flutter app mimicking Facebook UI with news feed, profile, friend requests, and messages,post. Showcase complex UIs cross-platform.',
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {
                  Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                  launchUrl(uri);
                },
                onHover: (value) {
                  setState(() {});
                },
                child: buildContainer(
                  title: 'Flutter Grocery Store',
                  asset: AppAssets.brush,
                  assetbig: AppAssets.grocery,
                  hover: true,
                  subtitle:
                      'Gogrocery app revolutionizes shopping with Firebase backend for robust data management and GetX for efficient state management.',
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                  onTap: () {
                    Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                    launchUrl(uri);
                  },
                  onHover: (value) {
                    setState(() {});
                  },
                  child: buildContainer(
                    title: 'MY portfolio website',
                    asset: AppAssets.brush,
                    assetbig: AppAssets.profile,
                    hover: true,
                    subtitle:
                        'my portfolio website,with Flutter for stunning animations and Firebase for dynamic content.it promises an engaging UI and showcases my best work.',
                  ))
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Latest ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Projets',
              style: AppTextStyles.headingStyles(
                  fontSize: 30.0, color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }

  Container buildContainer(
      {required String title,
      required String subtitle,
      required String asset,
      required bool hover,
      double width = 250,
      double hoverWidth = 260,
      required String assetbig}) {
    return Container(
      width: hover ? hoverWidth : width,
      height: hover ? 330 : 340,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(136, 10, 10, 10),
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 255,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(assetbig), fit: BoxFit.cover)),
          ),
          Constants.sizedBox(height: 15.0),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.black, fontSize: 15.0),
          ),
          Constants.sizedBox(height: 8.0),
          Text(
            subtitle,
            style: AppTextStyles.normalStyle3(
              color: Colors.black,
              fontSize: 10.0,
            ),
          ),
          Expanded(child: SizedBox(height: 34.0)),
          ElevatedButton(
            onPressed: () {
              Uri uri = Uri.parse('https://github.com/yadhukrishna6');
              launchUrl(uri);
            },
            child: Text(
              'Checkout',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 23, 22, 22),
                elevation: 0),
          )
        ],
      ),
    );
  }
}
