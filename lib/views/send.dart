import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:animate_do/animate_do.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_buttons.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';
import 'contact_us.dart';

class Contasend extends StatefulWidget {
  const Contasend({Key? key}) : super(key: key);

  @override
  _ContasendState createState() => _ContasendState();
}

class _ContasendState extends State<Contasend> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailSubjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  Future<void> sendMessage(
      String fullName,
      String emailAddress,
      String mobileNumber,
      String emailSubject,
      String message,
      BuildContext context) async {
    try {
      // Add a new document with a generated ID
      await FirebaseFirestore.instance.collection('messages').add({
        'fullName': fullName,
        'emailAddress': emailAddress,
        'mobileNumber': mobileNumber,
        'emailSubject': emailSubject,
        'message': message,
      });

      // Clear text fields after message sent successfully
      fullNameController.clear();
      emailAddressController.clear();
      mobileNumberController.clear();
      emailSubjectController.clear();
      messageController.clear();

      // Message sent successfully, handle accordingly
      print('Message sent successfully');
      // Show success message screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SuccessMessageScreen()),
      );
    } catch (e) {
      // Error handling
      print('Failed to send message: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: buildForm(context),
      tablet: buildForm(context),
      desktop: buildForm(context),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Widget buildForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    controller: fullNameController,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.normalStyle1(),
                    decoration: buildInputDecoration(hintText: 'Full Name'),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    controller: emailAddressController,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.normalStyle1(),
                    decoration: buildInputDecoration(hintText: 'Email Address'),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    controller: mobileNumberController,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.normalStyle1(),
                    decoration: buildInputDecoration(hintText: 'Mobile Number'),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                  elevation: 8,
                  child: TextField(
                    controller: emailSubjectController,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.normalStyle1(),
                    decoration: buildInputDecoration(hintText: 'Email Subject'),
                  ),
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 20.0),
          Material(
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
            elevation: 8,
            child: TextField(
              controller: messageController,
              maxLines: 10,
              cursorColor: AppColors.black,
              style: AppTextStyles.normalStyle1(),
              decoration: buildInputDecoration(hintText: 'Your Message'),
            ),
          ),
          Constants.sizedBox(height: 40.0),
          AppButtons.buildMaterialButton(
            buttonName: 'Send Message',
            onTap: () {
              sendMessage(
                fullNameController.text,
                emailAddressController.text,
                mobileNumberController.text,
                emailSubjectController.text,
                messageController.text,
                context,
              );
            },
          ),
          Constants.sizedBox(height: 30.0),
        ],
      ),
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'Contact ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'Me!',
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppTextStyles.comfortaaStyle(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: AppColors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    );
  }
}
