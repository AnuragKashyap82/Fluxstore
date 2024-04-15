import 'package:flucstore/utils/colors.dart';
import 'package:flucstore/widgets/category_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/logo.png", width: 36, height: 36,),
                    Text("Fluxstore", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: colorGrey,
                        letterSpacing: 0,
                        fontSize: 26
                    ),)
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CategoryWidgets(color: Color(0xffe6f3f9),path: "assets/logo.png", title: "Men",),
                        CategoryWidgets(color: Color(0xffe5ecf5),path: "assets/logo.png", title: "Women",),
                        CategoryWidgets(color: Color(0xffe4f3f6),path: "assets/logo.png", title: "Clothing",),
                        CategoryWidgets(color: Color(0xffe6eaf0),path: "assets/logo.png", title: "Posters",),
                        CategoryWidgets(color: Color(0xffe4e8e7),path: "assets/logo.png", title: "Music",),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      color: colorBackground,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0).copyWith(right: 0),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 36,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                 Container(
                                   height: 16,
                                   width: 2,
                                   decoration: BoxDecoration(
                                     color: colorGrey.withOpacity(0.4)
                                   ),
                                 ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text("SUMMER COLLECTION 2019", style: TextStyle(
                                      fontSize: 12,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w600,
                                      color: colorGrey.withOpacity(0.4)
                                  ),)
                                ],
                              ),
                              SizedBox(
                                height: 48,
                              ),
                              Expanded(
                                child: Text("Blue Summer\nare already in\nstore", style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2,
                                    color: colorBlack
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: colorBlack,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                  ],
                                ),
                              )
                            ],


                          ),
                          Positioned(
                            right: -15,
                              child: Image.asset("assets/girl.png", height: 240,))
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: colorGrey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0).copyWith(right: 0),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 42,
                              ),
                              Text("For Gen", style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w600,
                                  color: colorGrey.withOpacity(0.8)
                              ),),
                              SizedBox(
                                height: 0,
                              ),
                              Expanded(
                                child: Text("HANG OUT & PARTY", style: TextStyle(
                                    fontSize: 18,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2,
                                    color: colorGrey
                                ),),
                              ),
                            ],

                          ),
                          Positioned(
                              right: 0,
                              child: Image.asset("assets/boy.png", height: 170, ))
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                            color: colorBackground,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.5,),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 42.0),
                                    child: Text("T- Shirts", style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w600,
                                        color: colorGrey.withOpacity(0.8)
                                    ),),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 4.0),
                                      child: Text("THE OFFICE\nLIFE", style: TextStyle(
                                          fontSize: 14,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          color: colorGrey
                                      ),),
                                    ),
                                  ),
                                ],

                              ),
                              Positioned(
                                  left: 0,
                                  child: Image.asset("assets/lower.png", height: 140, width: 72, fit: BoxFit.cover,))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.44,
                        decoration: BoxDecoration(
                            color: colorBackground,
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: MediaQuery.of(context).size.width * 0.5,),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text("Dress", style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.w600,
                                        color: colorGrey.withOpacity(0.8)
                                    ),),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text("ELEGENT\nDESIGN", style: TextStyle(
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2,
                                          color: colorGrey
                                      ),),
                                    ),
                                  ),
                                ],

                              ),
                              Positioned(
                                  right: 0,
                                  child: Image.asset("assets/glower.png", height: 140, ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 16,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
