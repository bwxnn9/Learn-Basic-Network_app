import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:Basic_network_app/screens/home.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {

  static const String routeName = '/WelcomeScreen';

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: mainGradient(context)),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(
            Icons.wifi_password,
            size: 65,
            color: Color.fromARGB(255, 238, 255, 0),
            //color: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Learn_Basic_network",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Text(
              "Learning media for basic computer networks",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 227, 227, 227),
              ),
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "สร้างขึ้นเพื่อศึกษาและปฏิบัติเกี่ยวกับหลักการทำงานเเละองค์ประกอบของระบบเครือข่ายคอมพิวเตอร์เบื้องต้น",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 227, 227, 227),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Material(
            color: const Color(0xFF674AEF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homepage()
                  ));
                  print("press next");
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                child: const Text(
                  "ถัดไป",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    )
    );
  }
}
