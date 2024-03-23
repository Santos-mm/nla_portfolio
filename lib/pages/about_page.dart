import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_app/utils/constants.dart';
import 'package:portfolio_app/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenHelper(
      desktop: _buildUi(desktopMaxWidth, context),
      tablet: _buildUi(tabletMaxWidth, context),
      mobile: _buildUi(ScreenHelper.mobileMaxWidth(context), context),
    );
  }
}

Widget _buildUi(double width, BuildContext context) => SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: LayoutBuilder(builder: (context, constraints) {
         
          
          return Expanded(
            child: ResponsiveWrapper(
                maxWidth: width,
                minWidth: width,
                child: Flex(
                  direction: ScreenHelper.isMobile(context)
                      ? Axis.vertical
                      : Axis.horizontal,
                  children: [
                    Expanded(
                      flex: ScreenHelper.isMobile(context) ? 0 : 3,
                      child: Lottie.asset(
                        'assets/animation/coder.json',
                        width: 500,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      flex: ScreenHelper.isMobile(context) ? 0 : 4,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(aboutFirst),
                          Text(aboutSecond),
                            SizedBox(height: 5)
                        ],
                      ),
                    ),
                  ],
                )),
          );
        }),
      ),
    );
