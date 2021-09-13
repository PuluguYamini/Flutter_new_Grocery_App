import 'package:flutter/material.dart';
import './homepage.dart';
import './subcat.dart';
import './cartscreen.dart';
import './btmnavbar.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                icon: Icon(
                  Icons.navigate_before,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Home()));
                }),
            const Text('Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            const Text('       ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))
          ]),
          const SizedBox(height:10),
          Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white70,
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, childAspectRatio: MediaQuery.of(context).size.width/
                            (MediaQuery.of(context).size.height/1.6),),
                        itemCount: imglist.length,
                        itemBuilder: (context, index){
                          return Column(
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: InkResponse(
                                        splashColor: Colors.deepOrange.withOpacity(0.5),
                                        highlightColor: Colors.blueGrey.withOpacity(0.5),
                                        child: Image.asset(imglist[index], fit: BoxFit.fill, height: 100, width: 100,),
                                        onTap: () {Navigator.push(context,MaterialPageRoute(builder: (_) =>navlist[index]));
                                        })),
                                          const SizedBox(height: 10),
                                          Text(namelist[index],textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight:
                                                  FontWeight.bold))]);
                                  }))),
                        ])))
              ])));
  }
}
