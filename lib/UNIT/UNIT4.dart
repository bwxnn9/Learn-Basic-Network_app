import 'package:Basic_network_app/E-Books/Book_UNIT4.dart';
import 'package:Basic_network_app/Quiz/quiz_U4/screens/quiz_screen4.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class infounit4 extends StatelessWidget {
  const infounit4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 0, 17, 255),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "UNIT 4",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Container(
      decoration: BoxDecoration(gradient: mainGradientLight),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                
                image: const DecorationImage(
                  image: AssetImage("assets/UNIT/UNIT_4.png"),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "ตัวกลางการเชื่อมต่อเครือข่าย",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "หัวข้อเรื่อง (Topics - E-Book)",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(1),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "4.1 สายทองเเดง\n4.2 สายใยแก้วนำแสง\n4.3 การสื่อสารไร้สาย\n",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(1),
              ),
            ),
            const SizedBox(height: 10),            
            const Text(
              "ในหน่วยนี้มีเนื้อหามีทั้งหมด 2 รายการ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 1),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: Color.fromARGB(255, 47, 0, 255),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => book_4()));
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                        child: const Text(
                          "E-Book",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  
                  Material(
                    color: Color.fromARGB(255, 47, 0, 255),
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => QuizScreen4()));
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                        child: const Text(
                          "Quiz",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
      ));
  }
}
