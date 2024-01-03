import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:Basic_network_app/UNIT/UNIT1.dart';
import 'package:Basic_network_app/UNIT/UNIT2.dart';
import 'package:Basic_network_app/UNIT/UNIT3.dart';
import 'package:Basic_network_app/UNIT/UNIT4.dart';
import 'package:Basic_network_app/UNIT/UNIT5.dart';
import 'package:Basic_network_app/UNIT/UNIT6.dart';
import 'package:Basic_network_app/UNIT/UNIT7.dart';
import 'package:Basic_network_app/UNIT/UNIT8.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 174, 255),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(gradient: mainGradientLight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.dashboard,
                                size: 30,
                                color: Colors.white,
                              ),
                              Text(
                                'วิชาเครือข่ายคอมพิวเตอร์เบื้องต้น',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                  wordSpacing: 2,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'วันนี้คุณอยากเรียนรู้เรื่องอะไรดีล่ะ ?',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(30),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 111, 0, 255),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 1\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'พื้นฐานระบบเครือข่ายคอมพิวเตอร์\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit1()));
                      print("next page 1");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 0, 128, 255),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 2\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'อุปกรณ์ระบบเครือข่าย\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit2()));
                      print("next page 2");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 0, 221, 255),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 3\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'ประเภทของเครือข่าย\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit3()));
                      print("next page 3");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 255, 102, 0),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 4\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'ตัวกลางการเชื่อมต่อเครือข่าย\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit4()));
                      print("next page 4");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 1, 36, 131),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 5\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'โปรโตคอล\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit5()));
                      print("next page 5");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 255, 0, 195),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 6\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'รูปแบบการเชื่อมต่อเครือข่าย\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit6()));
                      print("next page 6");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 0, 255, 17),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 7\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text: 'การติดตั้งระบบปฏิบัติการ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit7()));
                      print("next page 7");
                    },
                  ),
                ),
                SizedBox(height: 30),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    tileColor: Color.fromARGB(255, 255, 170, 0),
                    title: RichText(
                      text: const TextSpan(
                        text: 'UNIT 8\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5),
                        children: [
                          TextSpan(
                            text:
                                'การใช้โปรแกรมประยุกต์และ\nโปรแกรมยูทิลิตี้บนเครือข่าย\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 19,
                                height: 1.5),
                          ),
                          TextSpan(
                            text: 'มีเนื้อหาดังนี้ 1.อีบุ๊ก, 2.แบบทดสอบ\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: 13,
                                height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text(
                      'Last Updated on 29/12/2023',
                      style: TextStyle(
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => infounit8()));
                      print("next page 8");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
