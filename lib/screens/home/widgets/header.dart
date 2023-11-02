import 'package:decipher/screens/home/widgets/home_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../theme/text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 250,
          child: Stack(
            children: [
              Positioned(top: 0, left: 0, right: 0, child: HomeBanner()),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                const Radius.circular(50),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/images/me.jpeg",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Hello, Ara Gamaliel!",
                            style: semiBoldText.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/svg/hamburger-menu.svg",
                        color: Colors.white,
                        width: 35,
                        height: 35,
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
