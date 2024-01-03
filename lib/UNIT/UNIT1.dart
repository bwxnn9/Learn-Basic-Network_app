import 'package:Basic_network_app/E-Books/Book_UNIT1.dart';
import 'package:Basic_network_app/Quiz/quiz_U1/screens/quiz_screen.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class infounit1 extends StatelessWidget {
  const infounit1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 0, 17, 255),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "UNIT 1",
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
                  image: AssetImage("assets/UNIT/UNIT_1.png"),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "พื้นฐานระบบเครือข่ายคอมพิวเตอร์",
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
              "1.1 ความหมายของระบบเครือข่าย\n1.2 ประโยชน์ของเครือข่ายคอมพิวเตอร์\n1.3 หลักการทำงานของระบบเครือข่าย\n1.4 แบบจำลอง OSI\n1.5 องค์ประกอบของระบบเครือข่าย",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(1),
              ),
            ),
            const SizedBox(height: 30),            
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
                            MaterialPageRoute(builder: (context) => book_1()));
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
                            MaterialPageRoute(builder: (context) => QuizScreen1()));
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
