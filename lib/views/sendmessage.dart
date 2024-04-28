import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:my_portfolio/views/contact_us.dart';

class Contasendmes extends StatefulWidget {
  const Contasendmes({Key? key}) : super(key: key);

  @override
  _ContasendmesState createState() => _ContasendmesState();
}

class _ContasendmesState extends State<Contasendmes> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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

  bool isValidEmail(String email) {
    // Regular expression for a valid email pattern
    final RegExp emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
      caseSensitive: false,
      multiLine: false,
    );
    return emailRegex.hasMatch(email);
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
      child: Form(
        // Create a GlobalKey for the Form
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildContactText(),
            Constants.sizedBox(height: 40.0),
            // Full Name and Email Address in one row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: fullNameController,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.normalStyle1(),
                    decoration: buildInputDecoration(hintText: 'Full Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                ),
                Constants.sizedBox(width: 20.0),
                Expanded(
                  child: TextFormField(
                    controller: emailAddressController,
                    cursorColor: AppColors.black,
                    style: AppTextStyles.normalStyle1(),
                    decoration: buildInputDecoration(hintText: 'Email Address'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      } else if (!isValidEmail(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            Constants.sizedBox(height: 20.0),
            // Mobile Number in one row
            TextFormField(
              controller: mobileNumberController,
              cursorColor: AppColors.black,
              style: AppTextStyles.normalStyle1(),
              decoration: buildInputDecoration(hintText: 'Mobile Number'),
              keyboardType: TextInputType.phone, // Set keyboard type to phone
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ], // Allow only digits
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your mobile number';
                }
                return null;
              },
            ),
            Constants.sizedBox(height: 20.0),
            // Email Subject in one row
            TextFormField(
              controller: emailSubjectController,
              cursorColor: AppColors.black,
              style: AppTextStyles.normalStyle1(),
              decoration: buildInputDecoration(hintText: 'Email Subject'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the email subject';
                }
                return null;
              },
            ),
            Constants.sizedBox(height: 20.0),
            // Message TextFormField
            TextFormField(
              controller: messageController,
              maxLines: 10,
              cursorColor: AppColors.black,
              style: AppTextStyles.normalStyle1(),
              decoration: buildInputDecoration(hintText: 'Your Message'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your message';
                }
                return null;
              },
            ),
            Constants.sizedBox(height: 40.0),
            AppButtons.buildMaterialButton(
              buttonName: 'Send Message',
              onTap: () {
                // Validate the form before submitting
                if (_formKey.currentState?.validate() ?? false) {
                  sendMessage(
                    fullNameController.text,
                    emailAddressController.text,
                    mobileNumberController.text,
                    emailSubjectController.text,
                    messageController.text,
                    context,
                  );
                }
              },
            ),
            Constants.sizedBox(height: 30.0),
          ],
        ),
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
