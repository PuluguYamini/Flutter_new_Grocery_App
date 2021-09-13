import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './categories.dart';
import 'package:image_picker/image_picker.dart';
import './subcat.dart';
import './cartscreen.dart';
import './btmnavbar.dart';
import './searching.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  XFile? _image;
  Future<void> getImage() async {
    final XFile? image =
    await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }
  final List listimg = [
    'images/veg.jpg',
    'images/meat.jfif',
    'images/cake.jfif',
    'images/drink.jpg',
    'images/cheese.jfif',
    'images/bakery.jpeg',
    'images/biscuits.jfif',
  ];

  final List imglist = [
    'images/c1.PNG',
    'images/c2.PNG',
    'images/c3.PNG',
    'images/c4.PNG',
    'images/c5.PNG',
    'images/c6.PNG',
    'images/c7.PNG',
    'images/c8.PNG',
    'images/c9.PNG',
    'images/c10.PNG',
    'images/c11.PNG',
    'images/c12.PNG'
  ];

  final List<String> namelist = [
    'Vegetables',
    'Fruits',
    'Meat',
    'Milk & eggs',
    'Fish',
    'Drinks',
    'Sea food',
    'Cakes',
    'Bakery',
    'Biscuits',
    'Ice Cream',
    'Juice'
  ];
  final List<Widget> navlist = [
    C1(),
    C2(),
    C3(),
    C4(),
    C5(),
    C6(),
    C7(),
    C8(),
    C9(),
    C10(),
    C11(),
    C12()
  ];
  int currentIndex = 0;
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) =>
                      Cart()));},
          child: Icon(Icons.shopping_cart, color: Colors.green),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
          ),
          child: BottomAppBar(
            color: Colors.green,
            shape: CircularNotchedRectangle(),
            notchMargin: 5,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(children: <Widget>[
                  // button 1
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 30,
                      color: currentIndex == 0 ? Colors.white : Colors.white70,
                    ),
                    onPressed: () {
                      setBottomBarIndex(0);
                    },
                    splashColor: Colors.white,
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                Column(children: <Widget>[
                  // button 2
                  IconButton(
                      icon: Icon(
                        Icons.store,
                        size: 30,
                        color:
                        currentIndex == 1 ? Colors.white : Colors.white70,
                      ),
                      onPressed: () {
                        setBottomBarIndex(1);
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Orders()));
                      }),
                  const Text(
                    'Orders',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                SizedBox.shrink(),
                Column(children: <Widget>[
                  // button 3
                  IconButton(
                      icon: Icon(
                        Icons.redeem,
                        size: 30,
                        color:
                        currentIndex == 2 ? Colors.white : Colors.white70,
                      ),
                      onPressed: () {
                        setBottomBarIndex(2);
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Offers()));
                      }),
                  const Text(
                    'Offers',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
                Column(children: <Widget>[
                  // button 4
                  IconButton(
                      icon: Icon(
                        Icons.more,
                        size: 30,
                        color:
                        currentIndex == 3 ? Colors.white : Colors.white70,
                      ),
                      onPressed: () {
                        setBottomBarIndex(3);
                        Navigator.push(context, MaterialPageRoute(builder: (_) => More()));
                      }),
                  const Text(
                    'More',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ],
            ))),
      body: Container(
        child: Column( children: <Widget>[
          const SizedBox(height:50),
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('       Hey ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white, fontSize: 17)),
                    const Text('       Lets search your grocery food.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white, fontSize: 17)),
                  ]),
              Container(
                child: _image == null
                    ? Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              primary: Colors.white),
                          onPressed: () => getImage(),
                          child: Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle),
                            child: Text('+',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blueGrey)),
                          )),
                    ],
                  ),
                )
                    : Container(width: 50, height: 50, alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                    child: Image.file(File(_image!.path), fit: BoxFit.cover,)),
              )),]),
              Container(
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Center(
                    child: SizedBox(height: 50, width: 370,
                      child: ElevatedButton(
                          onPressed: () => {Navigator.push(context,MaterialPageRoute(builder: (_) => Search()))},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.search, color: Colors.blueGrey),
                              Text("    Search your daily grocery food..", style: TextStyle(fontSize: 15, color: Colors.grey)),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(-1052680),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              side: BorderSide(width: 1, color: Color(-1052680)))),
                    ),
                  )),
    Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    color: Colors.white70,
    border: Border.all(color: Colors.white70, width: 1),
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    child: ListView( padding: EdgeInsets.zero, children: <Widget>[
    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('Categories', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                        FlatButton(
                            onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (_) =>Categories()));},
                            child: const Text('See all', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.green))),
                        ])),
              Divider(height:1), const SizedBox(height:10),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: imglist.length,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Column(
                                    children: <Widget>[
                                      Container(
                                          padding: EdgeInsets.all(5),
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(
                                                  12),
                                              child: InkResponse(
                                                  splashColor: Colors
                                                      .deepOrange
                                                      .withOpacity(0.5),
                                                  highlightColor: Colors
                                                      .blueGrey
                                                      .withOpacity(0.5),
                                                  child: Image.asset(
                                                    imglist[index],
                                                    fit: BoxFit.fill,
                                                    height: 100,
                                                  ),
                                                  onTap: () {Navigator.push(context,MaterialPageRoute(builder: (_) =>navlist[index]));}))),
                                      Text(namelist[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.bold))
                                    ],
                                  );
                                })),
                      ])),
      Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: ImgScroll(),
      ),
      Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 1),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(' Popular deals',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          FlatButton(
                              onPressed: () {},
                              child: const Text('See all',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(-13318564)))),
                        ])),
                Divider(height:1,), const SizedBox(height: 5),
                Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: listimg.length,
                        itemBuilder:
                            (BuildContext context, int index) {
                          return Container(
                              padding: EdgeInsets.all(5),
                              child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.circular(12),
                                  child: InkResponse(
                                      splashColor: Colors
                                          .deepOrange
                                          .withOpacity(0.5),
                                      highlightColor: Colors
                                          .blueGrey
                                          .withOpacity(0.5),
                                      child: Image.asset(
                                        listimg[index],
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 200,
                                      ),
                                      onTap: () {})));
                        })),
              ])),
            ]))),
    ])));
  }
}


class ImgScroll extends StatefulWidget {
  const ImgScroll({Key? key}) : super(key: key);

  @override
  _ImgScrollState createState() => _ImgScrollState();
}

class _ImgScrollState extends State<ImgScroll> {
  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: new AssetImage('images/b1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: new AssetImage('images/b2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: new AssetImage('images/b3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
