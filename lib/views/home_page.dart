import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:my_portfolio/views/downloadcv.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];

  int? socialBI;

  @override
  void dispose() {
// Dispose of the scroll controller when the widget is disposed
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SlideInUp(
          child: FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: Text(
              'Hello, Its Me',
              style: AppTextStyles.montserratStyle(color: Colors.white),
            ),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'Yadhukrishna',
            style: AppTextStyles.headingStyles(),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                'And Im a ',
                style: AppTextStyles.montserratStyle(color: Colors.white),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Flutter Developer',
                    textStyle:
                        AppTextStyles.montserratStyle(color: Colors.lightBlue),
                  ),
                  TyperAnimatedText('Freelancer',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue)),
                  TyperAnimatedText('Designer',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue))
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        SlideInUp(
          child: FadeInDown(
            duration: const Duration(milliseconds: 1600),
            child: Text(
              ' A passionate Flutter developer I specialize in not just meeting technical '
              'requirements but in crafting applications that align with your business'
              ' objectives, ensuring a digital strategy that stands out in the market.',
              style: AppTextStyles.normalStyle(),
            ),
          ),
        ),
        Constants.sizedBox(height: 22.0),
        SlideInUp(
          child: FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: SizedBox(
              height: 48,
              child: Row(
                // Change ListView.separated to Row
                children: socialButtons.map((asset) {
                  final index = socialButtons.indexOf(asset);
                  return InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        socialBI = value ? index : null;
                      });
                    },
                    borderRadius: BorderRadius.circular(550.0),
                    hoverColor: AppColors.themeColor,
                    splashColor: AppColors.lawGreen,
                    child: buildSocialButton(
                      asset: asset,
                      hover: socialBI == index ? true : false,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        Constants.sizedBox(height: 18.0),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: AppButtons.buildMaterialButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageViewer()),
              );
            },
            buttonName: 'Download CV',
          ),
        ),
      ],
    );
  }

  Ink buildSocialButton({required String asset, required bool hover}) {
// Define the URLs for each social network
    final List<String> socialUrls = [
      'https://www.facebook.com/yourusername',
      'https://twitter.com/yourusername',
      'https://www.linkedin.com/in/yadhu-krishna-2b1173249',
      'https://www.instagram.com/yadhu_/',
      'https://github.com/yadhukrishna6',
    ];

    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: GestureDetector(
        onTap: () {
          // Determine the index of the social button
          final index = socialButtons.indexOf(asset);
          // Launch the corresponding URL
          launchUrl(Uri.parse(socialUrls[index]));
        },
        child: Image.asset(
          asset,
          width: 10,
          height: 12,
          color: hover ? AppColors.bgColor : AppColors.themeColor,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
