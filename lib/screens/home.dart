import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_test_app/screens/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
//        backgroundColor: Colors.transparent,
        backgroundColor: Color(0x44000000).withAlpha(1),
        elevation: 0,
        //title: Text("Car Shoppe"),
        leading: Image.asset('assets/images/sidemenu.png',
          color: Colors.white,),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
            child: Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent),
              child: TextField(
                autofocus: false,
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  prefix: Image.asset(
                    'assets/images/filter.png',
                    height: 30,
                    width: 30,
                  ),
                  suffix: Image.asset(
                    'assets/images/search.png',
                    height: 30,
                    width: 30,
                  ),
                  filled: true,
                  fillColor: Colors.white.withAlpha(1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(kToolbarHeight)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height - 353,
                child: Column(
                  children: [
                    Container(
                        height: 100,
                        color: Colors.black,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/shoppe_btn.png',
                                height: 90, width: 90),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(SecondPage());
                              },
                              child: Image.asset('assets/images/carspa.png',
                                  height: 90, width: 90),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/mechanical.png',
                                height: 90, width: 90),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/quick.png',
                                height: 90, width: 90),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shoppe'),
                          TextButton(onPressed: () {}, child: Text('More'))
                        ],
                      ),
                    ),
                    GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        mainAxisExtent: 120.0,
                        mainAxisSpacing: 10.0,
                      ),
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/0.png',
                              height: 200,
                              width: 200,
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/1.png',
                              height: 200,
                              width: 200,
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/2.png',
                              height: 200,
                              width: 200,
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/3.png',
                              height: 200,
                              width: 200,
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/4.png',
                              height: 200,
                              width: 200,
                            )),
                        Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/images/5.png',
                              height: 200,
                              width: 200,
                            )),
                      ],
                    ),
                    // GridView.builder(
                    //     shrinkWrap: true,
                    //     scrollDirection: Axis.vertical,
                    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //         crossAxisSpacing: 10,
                    //         mainAxisSpacing: 10,
                    //         crossAxisCount: 3),
                    //     itemCount: 6,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       print(index);
                    //       return Container(
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             color: Colors.white),
                    //         child: Image.asset('assets/images/1.png',
                    //             height: 150, width: 150),
                    //       );
                    //     })
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    ));
  }
}
