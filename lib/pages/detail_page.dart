import 'package:cubitstate/colors.dart';
import 'package:cubitstate/widgets/app_buttons.dart';
import 'package:cubitstate/widgets/app_large_text.dart';
import 'package:cubitstate/widgets/app_text.dart';
import 'package:cubitstate/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetailedPage extends StatefulWidget {
  DetailedPage({Key? key}) : super(key: key);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  int gottonStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('images/sarajevo.jpg'),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            text: 'Sarajevo',
                            color: Colors.black.withOpacity(0.8)),
                        AppLargeText(
                            text: '\$ 250', color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: AppColors.mainColor),
                        const SizedBox(width: 5),
                        AppText(
                            text: 'BiH, Sarajevo', color: AppColors.textColor1)
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(Icons.star,
                                  color: index < gottonStars
                                      ? AppColors.starColor
                                      : AppColors.textColor2);
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(text: '(4.0)', color: AppColors.textColor2),
                      ],
                    ),
                    const SizedBox(height: 25),
                    AppLargeText(
                      text: 'People',
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    const SizedBox(height: 5),
                    AppText(
                      text: 'Number of people in your group',
                      color: AppColors.mainTextColor,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButton(
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                size: 50,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    AppLargeText(
                        text: 'Description',
                        color: Colors.black.withOpacity(0.8),
                        size: 20),
                    const SizedBox(height: 10),
                    AppText(
                      text:
                          'Sarajevo is a very historically significant city, its landmarks come with a story so it is recommended taking a walking tour of Sarajevo on your arrival.',
                      color: AppColors.mainTextColor,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      size: 60,
                      color: AppColors.textColor1,
                      backgroundColor: Colors.white,
                      borderColor: AppColors.textColor1,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(width: 20),
                    ResponsiveButton(
                      isResponsive: true,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
