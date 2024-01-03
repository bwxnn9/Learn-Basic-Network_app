import 'package:flutter/material.dart';

// สถานะ รอไฟล์ภาพ จัดเรียงตำแหน่ง และตกแต่ง
class book_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "หน่วยการเรียนรู้ที่ 5",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (1).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (2).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (3).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (4).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (5).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (6).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (7).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (8).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (9).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (10).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (11).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (12).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),
        Container(
        padding: EdgeInsets.symmetric(vertical: 10,),
        child: InteractiveViewer(
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 10,
          child: Image.asset("assets/E-Book/E_UNIT_1/E1P (13).jpeg",
          width: 500,
          height: 500,
          fit: BoxFit.cover,
          ),
        ),
        ),

          
          ],
        ),
      ),
    );
    }
}