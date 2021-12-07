import 'package:cubitstate/colors.dart';
import 'package:cubitstate/widgets/app_large_text.dart';
import 'package:cubitstate/widgets/app_text.dart';
import 'package:cubitstate/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    '11-2.jpg',
    '22-2.jpg',
    '33-2.jpg',
  ];

  List text = [
    'Sarajevo is one of the most historically interesting and varied cities in Europe.',
    'It is a place where the people of the Christian Roman Catholic, Orthodox and the Muslim Ottoman, met, lived and warred.',
    'It has been both an example of historical turbulence and the clash of civilizations, as well as a beacon of hope for peace and tolerance through multi-cultural integration.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/" + images[index],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      AppLargeText(text: 'Sarajevo'),
                      AppText(text: 'Bosnia & Hersegovina', size: 30),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300,
                        child: AppText(
                          text: text[index],
                          color: AppColors.textColor2,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ResponsiveButton(
                        width: 120,
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 3),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3)),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
