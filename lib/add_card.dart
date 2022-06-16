import 'package:floor/floor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_card/card_model.dart';
import 'package:payment_card/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dao/dao.dart';


class AddCard extends StatefulWidget {
  AddCard({Key? key, required this.number, required this.ExpiryDate,required this.name, required this.imgNumber,} ) : super(key: key);
  String name; String number; String ExpiryDate;  int imgNumber;
  CardModel1? cardModel1;

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
 TextEditingController nameCon=TextEditingController();

 TextEditingController numberCon=TextEditingController();

 TextEditingController dateCon=TextEditingController();

 TextEditingController imgNumberCon=TextEditingController();
 int onClick = 4, offClick=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new card"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 300, height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage("assets/img_$onClick.png",),
                  fit: BoxFit.fill,
                )
              ),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Image.asset("assets/logo.png", width: 80, height: 50),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/chip.png",width: 80, height: 50,),
                          Image.asset("assets/uzcardLogo.png",width: 80, height: 50,),
                        ],),
                    ), const SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: SizedBox( height: 25, width: 200,
                        child: TextField(
                          controller: numberCon,
                          keyboardType: TextInputType.number,
                          decoration:const InputDecoration(
                            hintText: "Number of card",
                            border: OutlineInputBorder(),contentPadding: EdgeInsets.all(8)),),
                      ),
                    ),const SizedBox(height: 4,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: SizedBox( height: 30, width: 200,
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          controller: dateCon,
                          decoration:const InputDecoration(
                          hintText: "date of card",
                          border: OutlineInputBorder(),contentPadding: EdgeInsets.all(8),),),
                      ),
                    ),const SizedBox(height: 4,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: SizedBox( height: 30, width: 200,
                        child: TextField(controller: nameCon, decoration:const InputDecoration(
                          hintText: "Name Surname",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(8),),),
                      ),
                    ),const SizedBox(height: 4,),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text("Choose card view", style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w700),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                     onClick=4;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 100, height: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:  AssetImage("assets/img_4.png",),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      onClick=3;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 100, height: 60,
                      decoration: const BoxDecoration(
                          image: const DecorationImage(
                            image:  AssetImage("assets/img_3.png",),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      onClick=2;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      width: 100, height: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:  AssetImage("assets/img_2.png",),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )



        ],
      ),



      floatingActionButton: ElevatedButton(
        onPressed: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child:const Text("Save"),
      ),
    );
  }
  int ImgNum(int imgNum){
    return imgNum;
  }
}

