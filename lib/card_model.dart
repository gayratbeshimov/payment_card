
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class CardModel extends StatelessWidget {
  CardModel({Key? key, required this.number, required this.date,required this.name, required this.imgNumber}) : super(key: key);
  String? name;
  String? number;
  String? date;
  int? imgNumber;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Stack(
          children: [
            Image.asset("assets/img_$imgNumber.png",width: 300,height: 200,fit: BoxFit.fill,),
            Positioned(child: Image.asset("assets/logo.png"),
              width: 80, height: 50,
              left: 24,
            ),
            Positioned(child: Image.asset("assets/chip.png"),
              width: 80, height: 50,
              top: 70,
              left: 24,
            ),
            Positioned(child: Image.asset("assets/uzcardLogo.png"),
              width: 80, height: 50,
              top: 70,
              right: 24,
            ),

            Positioned(child: Text("$number",style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w800),),
              top: 130,
              left: 24,
            ),
            Positioned(child: Text("$date",style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
              top: 150,
              left: 100,
            ),
            Positioned(child: Text("$name",style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700),),
              bottom: 8,
              left: 65,
            ),

          ],
        ),
        const SizedBox(width: 16,)
      ],
    );
  }
}





