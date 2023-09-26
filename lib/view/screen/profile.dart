import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zpaper/core/constant/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 130,
              ),
              const Text(
                "My Zpaper",
                style: TextStyle(
                    color: Appcolor.white,
                    fontSize: 28,
                    fontFamily: "SF-Pro-Display"),
              ),
              const SizedBox(
                width: 100,
              ),
              InkWell(
                  child: const Icon(
                    FontAwesomeIcons.bell,
                    color: Appcolor.white,
                  ),
                  onTap: () {})
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  width: 80,
                  child: CircleAvatar(
                    backgroundColor: Appcolor.white,
                    child: Image.asset(
                      "assets/images/user.png",
                    ),
                  ),
                ),
              ),
              const Spacer(),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(30),
                      color: Appcolor.zcolor2),
                  child: const Center(
                    child: Text(
                      "Log in ",
                      style: TextStyle(
                          color: Appcolor.white,
                          fontSize: 23,
                          fontFamily: "SF-Pro-Display"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Recent activiti",
              style: TextStyle(
                  color: Appcolor.white,
                  fontSize: 22,
                  fontFamily: "SF-Pro-Display-Semibold"),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 300,
                    width: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/recent.jpg",
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/recent1.jpg",
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/recent2.jpg",
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 300,
                    width: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/images/recent3.jpg",
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Your contant",
              style: TextStyle(
                  color: Appcolor.white,
                  fontSize: 22,
                  fontFamily: "SF-Pro-Display-Semibold"),
            ),
          ),
          const ListTile(
            leading: Icon(
              FontAwesomeIcons.solidHeart,
              color: Appcolor.white,
            ),
            title: Text(
              "Favorites",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 22,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              FontAwesomeIcons.arrowDown,
              color: Appcolor.white,
            ),
            title: Text(
              "Downloads",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 22,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              FontAwesomeIcons.solidRectangleList,
              color: Appcolor.white,
            ),
            title: Text(
              "Collections",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 22,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              FontAwesomeIcons.rightToBracket,
              color: Appcolor.white,
            ),
            title: Text(
              "sign out",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 22,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
