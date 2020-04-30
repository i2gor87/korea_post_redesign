import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:koreapostredesign/components/menu_icon.dart';
import 'package:koreapostredesign/components/iconmenu_container.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:koreapostredesign/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark()
          .copyWith(primaryColor: Color(0xffEE2622), accentColor: Colors.white),
      theme:
          ThemeData(primaryColor: Color(0xffEE2622), accentColor: Colors.black),
      home: KoreaPostMainPage(),
    );
  }
}

class KoreaPostMainPage extends StatefulWidget {
  @override
  _KoreaPostMainPageState createState() => _KoreaPostMainPageState();
}

class _KoreaPostMainPageState extends State<KoreaPostMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 20.0),
            child: InkWell(
              onTap: () {
                print('pressed login');
              },
              child: Text(
                '로그인',
                style: TextStyle(
                    fontFamily: 'fonts/NanumGothicCoding-Regular.ttf',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                    color: Theme.of(context).accentColor),
              ),
            ),
          )
        ],
        leading: InkWell(
          child: Icon(
            Icons.dehaze,
            color: Theme.of(context).accentColor,
          ),
          onTap: () {
            print('tap');
          },
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/kp_logo.png',
              scale: 20.0,
            ),
            Text(
              '우편',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).accentColor),
            )
          ],
        ),
      ),
      body: SlidingUpPanel(
          color: Theme.of(context).scaffoldBackgroundColor,
          maxHeight: MediaQuery.of(context).size.height * 0.38,
          minHeight: MediaQuery.of(context).size.height * 0.12,
          panel: Container(
            child: Center(child: Text('hello')),
            decoration: BoxDecoration(
              color: Theme.of(context).bottomAppBarColor,
              borderRadius: slidingPanelRadius,
            ),
          ),
          collapsed: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).bottomAppBarColor,
              borderRadius: slidingPanelRadius,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '홈',
                      outline: false,
                      iconData: AntDesign.home,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '포스트톡',
                      outline: false,
                      iconData: Feather.message_square,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '콜센터연결',
                      outline: false,
                      iconData: Feather.headphones,
                    ),
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: MenuIcon(
                      iconText: '연관앱',
                      outline: false,
                      iconData: MaterialCommunityIcons.layers_outline,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          body: postBody()),
    );
  }
}

class postBody extends StatelessWidget {
  postBody({
    Key key,
  }) : super(key: key);

  final List<String> imgList = [
    'images/delivery1.png',
    'images/delivery2.png',
    'images/delivery3.png',
    'images/delivery4.png',
    'images/delivery5.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: CarouselSlider(
                      items: imgList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  BoxDecoration(color: Color(0xffFFD6D0)),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    height: MediaQuery.of(context).size.height *
                                        0.415,
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.asset(i),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        viewportFraction: 0.8,
                        enlargeCenterPage: false,
                        height: MediaQuery.of(context).size.height * 0.45,
                        autoPlay: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15.0,
                      left: 15.0,
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        primaryColor: Colors.red,
                        accentColor: Colors.blue,
                      ),
                      child: TextField(
                        onChanged: (val) {},
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                          fillColor: Theme.of(context).scaffoldBackgroundColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 3.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blueAccent,
                              width: 2.0,
                            ),
                          ),
                          labelText: '등기번호 (국내, 국제) 13자리',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              MenuContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
