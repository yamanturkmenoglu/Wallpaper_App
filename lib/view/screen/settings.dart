import 'package:flutter/material.dart';
import 'package:zpaper/core/constant/colors.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xff2C2929),
      ),
      backgroundColor: Appcolor.black,
      body: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                "Zpaper Account",
                style: TextStyle(
                  color: Appcolor.white,
                  fontSize: 20,
                  fontFamily: "SF-Pro-Display-Semibold",
                ),
              ),
              subtitle: Text(
                "create or access your Zpepar account",
                style: TextStyle(
                  color: Appcolor.gri,
                  fontSize: 18,
                  fontFamily: "SF-Pro-Display-Semibold",
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Appcolor.gri,
              ),
            ),
          ),
          Divider(
            thickness: 20,
            color: Color(0xff2C2929),
          ),
          ListTile(
            title: Text(
              "App Version",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            subtitle: Text(
              "0.0.1+",
              style: TextStyle(
                color: Appcolor.gri,
                fontSize: 18,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Ringtone Guid",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Appcolor.gri,
            ),
          ),
          ListTile(
            title: Text(
              "Help",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Appcolor.gri,
            ),
          ),
          Divider(
            thickness: 20,
            color: Color(0xff2C2929),
          ),
          ListTile(
            title: Text(
              "İNFORMATİON",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
          ),
          ListTile(
            title: Text(
              "About Zpaper",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Appcolor.gri,
            ),
          ),
          ListTile(
            title: Text(
              "Trems of services",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Appcolor.gri,
            ),
          ),
          ListTile(
            title: Text(
              "Privacy policy",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Appcolor.gri,
            ),
          ),
          ListTile(
            title: Text(
              "DMCA",
              style: TextStyle(
                color: Appcolor.white,
                fontSize: 20,
                fontFamily: "SF-Pro-Display-Semibold",
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Appcolor.gri,
            ),
          ),
        ],
      ),
    );
  }
}
