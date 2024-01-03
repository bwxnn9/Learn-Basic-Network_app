import 'package:Basic_network_app/E-Books/Book_UNIT5.dart';
import 'package:Basic_network_app/Quiz/quiz_U5/screens/quiz_screen5.dart';
import 'package:Basic_network_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class infounit5 extends StatelessWidget {
  const infounit5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 0, 17, 255),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "UNIT 5",
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
                  image: AssetImage("assets/UNIT/UNIT_5.png"),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "โปรโตคอล",
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
              "5.1 ความหมายของโปรโตคอล\n5.2 โปรโตคอล TCP/IP\n5.3 โปรโตคอล FTP\n(File Transfer Protocol)\n5.4 โปรโตคอล HTTP\n(Hyper Text Transport Protocol)\n5.5 โปรโตคอล UDP\n(User Datagram Protocol)",
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
                            MaterialPageRoute(builder: (context) => book_5()));
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
                            MaterialPageRoute(builder: (context) => QuizScreen5()));
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
