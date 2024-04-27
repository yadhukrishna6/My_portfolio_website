import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class SuccessMessageScreen extends StatelessWidget {
  const SuccessMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                )
              ]),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/new.png', // Change the image path as per your assets
                  width: 450, // Adjust width as needed
                  height: 400, // Adjust height as needed
                ),
                Text('Thank YOU!', style: AppTextStyles.headerTextStyle1()),
                const SizedBox(height: 5),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Message has been sent successfully.',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Thank you for visiting my portfolio! I'm thrilled to have the opportunity to showcase my work and \n"
                  "share my passion and interest in Flutter development. Within these pages, you'll find a collection\n"
                  "of projects that reflect my dedication to creativity,innovation,and excellence.Whether you're here\n"
                  "to explore my projects or learn more about my professional journey , feel free to contact me. I'm \n"
                  "excited to connect and discuss how we can collaborate on exciting projects together! , Thank you \n",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                  ),
                  textAlign: TextAlign.start,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Home Page',
                    style: TextStyle(
                        color: Colors.orange,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange,
                        decorationThickness: 2),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Uri uri = Uri.parse('https://github.com/yadhukrishna6');
                        launchUrl(uri);
                      },
                      icon: Image.asset(
                        'assets/images/icons8-facebook-circled-48.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Uri uri = Uri.parse(
                            'https://www.linkedin.com/in/yadhu-krishna-2b1173249');
                        launchUrl(uri);
                      },
                      icon: Image.asset(
                        'assets/images/icons8-linkedin-48.png',
                        width: 32,
                        height: 32,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Uri uri =
                            Uri.parse('https://www.instagram.com/__yadhu___/');
                        launchUrl(uri);
                      },
                      icon: Image.asset(
                        'assets/images/icons8-instagram-94.png',
                        width: 32,
                        height: 32,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'contact',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Privacy policy',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Tearms of service',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '@Copyrights 2024 design by yadhukrishnan . All Rights',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
