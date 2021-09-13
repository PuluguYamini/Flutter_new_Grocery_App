import 'package:flutter/material.dart';
import './categories.dart';
import './detailsveg.dart';
import './detailsfruit.dart';
import './btmnavbar.dart';
import './cartscreen.dart';
import './homepage.dart';
class C1 extends StatefulWidget {
  const C1({Key? key}) : super(key: key);

  @override
  _C1State createState() => _C1State();
}

class _C1State extends State<C1> {
  final List<String> imglist = [
    'images/v1.jpg',
    'images/v2.jfif',
    'images/v3.jpg',
    'images/v4.jpg',
    'images/v5.jpg',
    'images/v6.jpg'
  ];
  final List<String> namelist = [
    'Tomato (1KG)',
    'Onion (1KG)',
    'Carrot (1KG)',
    'BeetRoot (1KG)',
    'Capcisum (1KG)',
    'Potato (1KG)'
  ];
  final List<String> p1 = [
    r'$5.00/kg',
    r'$8.00/kg',
    r'$5.20/kg',
    r'$4.25/kg',
    r'$17.00/kg',
    r'$5.00/kg'
  ];
  final List<String> p2 = [
    r'$5.00',
    r'$8.00',
    r'$5.20',
    r'$4.25',
    r'$17.40',
    r'$5.00'
  ];

  final List<Widget> dcon = [
    DV1(),
    DV2(),
    DV3(),
    DV4(),
    DV5(),
    DV6(),
  ];
  int currentIndex = 0;
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  final List _itemCount = [0, 0, 0, 0, 0, 0];

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
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
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
            ),
          ),
        ),
        body: Container(
        child: Column( children: <Widget>[
        const SizedBox(height:40),
    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
      IconButton(
          icon: Icon(Icons.navigate_before, color: Colors.white,),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Categories()));}),
      const Text('Vegetables', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
      const Text('       ', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold))]),
          const SizedBox(height:10),
          Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white70,
                  border: Border.all(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              child: Column( children: <Widget>[
                Expanded(child: Container(padding: EdgeInsets.all(10), margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.2),),
                        shrinkWrap: true,
                        itemCount: imglist.length,
                        itemBuilder: (context, index) {
                          return Container( padding: EdgeInsets.all(5), margin: EdgeInsets.all(5),
                              alignment: Alignment.centerLeft,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                InkResponse(
                                    splashColor: Colors.deepOrange.withOpacity(0.5),
                                    highlightColor: Colors.blueGrey.withOpacity(0.5),
                                    child: Image.asset(imglist[index], fit: BoxFit.cover, height: 120),
                                    onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) => dcon[index]));
                                    }),
                                Stack(
                                    children: <Widget>[
                                      Container( width: MediaQuery.of(context).size.width, height:120,
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(namelist[index], textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                                            Text(p1[index], textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 12, color: Colors.grey)),
                                            Text(p2[index], textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold)),])),
                                      Container( width: MediaQuery.of(context).size.width, height:120, alignment: Alignment.bottomRight,
                                          child:Column(
                                          children: <Widget>[
                                            _itemCount[index] != 0 ? new IconButton(icon: new Icon(Icons.remove),
                                                onPressed: () => setState(() => _itemCount[index]--)) : new Icon(Icons.remove, color: Colors.white),
                                            _itemCount[index] != 0 ? new Text(_itemCount[index].toString(), textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold))
                                                : new Text('0', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                            new IconButton(icon: new Icon(Icons.add),
                                                onPressed: () => setState(() => _itemCount[index]++)),
                                          ]))]),
                                Divider(height: 2, thickness: 1,),
                                VerticalDivider(width: 2, thickness:1),
                              ]));
                        })))
              ])))
        ])));
  }
}

class C2 extends StatefulWidget {
  const C2({Key? key}) : super(key: key);

  @override
  _C2State createState() => _C2State();
}

class _C2State extends State<C2> {
  final List<String> imglist = [
    'images/f1.jfif',
    'images/f2.jpg',
    'images/f3.jpg',
    'images/f4.jpg',
    'images/f5.jpg',
    'images/f6.jpg'
  ];
  final List<String> namelist = [
    'Strawberry(1KG)',
    'Orange (10Pcs)',
    'Banana (8Pcs)',
    'Watermelon(1KG)',
    'Apple (1KG)',
    'Pineapple (1KG)'
  ];
  final List<String> p1 = [
    r'$17.00/kg',
    r'$1.00/pc',
    r'$0.20/pc',
    r'$4.25/kg',
    r'$17.00/kg',
    r'$15.00/kg'
  ];
  final List<String> p2 = [
    r'$17.20',
    r'$10.00',
    r'$1.60',
    r'$4.25',
    r'$17.40',
    r'$15.00'
  ];
  final List<Widget> dcon = [
    DF1(),
    DF2(),
    DF3(),
    DF4(),
    DF5(),
    DF6(),
  ];
  int currentIndex = 0;
  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }
  final List _itemCount = [0, 0, 0, 0, 0, 0];

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
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
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
            ),
          ),
        ),
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height:40),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                IconButton(
                    icon: Icon(Icons.navigate_before, color: Colors.white,),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Categories()));}),
                const Text('Fruits', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                const Text('       ', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold))]),
              const SizedBox(height:10),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white70,
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: Column( children: <Widget>[
                    Expanded(child: Container(padding: EdgeInsets.all(10), margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height / 1.2),),
                            itemCount: imglist.length,
                            itemBuilder: (context, index) {
                              return Container( padding: EdgeInsets.all(5), margin: EdgeInsets.all(5),
                                  alignment: Alignment.centerLeft,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                                    InkResponse(
                                        splashColor: Colors.deepOrange.withOpacity(0.5),
                                        highlightColor: Colors.blueGrey.withOpacity(0.5),
                                        child: Image.asset(imglist[index], fit: BoxFit.cover, height: 120,),
                                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) => dcon[index]));
                                        }),
                                    Stack(
                                        children: <Widget>[
                                          Container( width: MediaQuery.of(context).size.width, height:120,
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(namelist[index], textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                                                Text(p1[index], textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 12, color: Colors.grey)),
                                                Text(p2[index], textAlign: TextAlign.center,
                                                    style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold)),])),
                                          Container( width: MediaQuery.of(context).size.width, height:120, alignment: Alignment.bottomRight,
                                          child: Column(
                                              children: <Widget>[
                                                _itemCount[index] != 0 ? new IconButton(icon: new Icon(Icons.remove),
                                                    onPressed: () => setState(() => _itemCount[index]--)) : new Icon(Icons.remove, color: Colors.white),
                                                _itemCount[index] != 0 ? new Text(_itemCount[index].toString(),
                                                    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold))
                                                    : new Text('0', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                                new IconButton(icon: new Icon(Icons.add),
                                                    onPressed: () => setState(() => _itemCount[index]++)),
                                              ]))]),
                                    Divider(height: 2, thickness: 1,),
                                    VerticalDivider(width: 2, thickness:1),
                                  ]));
                            })))
                  ])))
            ])));
  }
}


class C3 extends StatefulWidget {
  const C3({Key? key}) : super(key: key);

  @override
  _C3State createState() => _C3State();
}

class _C3State extends State<C3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Meat Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C4 extends StatefulWidget {
  const C4({Key? key}) : super(key: key);

  @override
  _C4State createState() => _C4State();
}

class _C4State extends State<C4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Milk & Eggs Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C5 extends StatefulWidget {
  const C5({Key? key}) : super(key: key);

  @override
  _C5State createState() => _C5State();
}

class _C5State extends State<C5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Fish Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C6 extends StatefulWidget {
  const C6({Key? key}) : super(key: key);

  @override
  _C6State createState() => _C6State();
}

class _C6State extends State<C6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Drinks Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );;
  }
}

class C7 extends StatefulWidget {
  const C7({Key? key}) : super(key: key);

  @override
  _C7State createState() => _C7State();
}

class _C7State extends State<C7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Sea Food Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C8 extends StatefulWidget {
  const C8({Key? key}) : super(key: key);

  @override
  _C8State createState() => _C8State();
}
class _C8State extends State<C8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Cakes Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C9 extends StatefulWidget {
  const C9({Key? key}) : super(key: key);

  @override
  _C9State createState() => _C9State();
}

class _C9State extends State<C9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Bakery Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C10 extends StatefulWidget {
  const C10({Key? key}) : super(key: key);

  @override
  _C10State createState() => _C10State();
}

class _C10State extends State<C10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Biscuits Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C11 extends StatefulWidget {
  const C11({Key? key}) : super(key: key);

  @override
  _C11State createState() => _C11State();
}

class _C11State extends State<C11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Icecream Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}

class C12 extends StatefulWidget {
  const C12({Key? key}) : super(key: key);

  @override
  _C12State createState() => _C12State();
}

class _C12State extends State<C12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: const Text('Juice Screen', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold))
        )
    );
  }
}
