import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/screens/bottomnavigation.dart';
import 'package:slacks_test/screens/details/detail_page.dart';
import 'package:slacks_test/screens/details/detail_page_2.dart';
import 'package:slacks_test/screens/details/detailpage_4.dart';
import 'package:slacks_test/screens/home-screen.dart';
class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
      CarouselSlider(
      items: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/images/banner_1.png"),
    )),
    ),
    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/banner_2.png"),
    )),
    )
    ],
    options: CarouselOptions(
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayCurve: Curves.fastOutSlowIn,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 2000),
    viewportFraction: 0.8,
    )),
    Padding(padding: EdgeInsets.all(10),),
            Column(
              children: [
                Container(height: 200,
                 width: 800,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.black)
                 ),
                  child: Text("OFFERS", textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontStyle: FontStyle.italic)),
                ),
                SizedBox(height: 19,),
                Container(height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black)
                  ),
                ),
                CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/banner_1.png"),
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/banner_2.png"),
                            )),
                      )
                    ],
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      viewportFraction: 0.8,
                    )),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => DetailPage()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/baggy.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DetailPage_3()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/product/ex.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_4()));
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/black.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]
      )
    );
  }
}
