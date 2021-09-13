import 'package:flutter/material.dart';
import './homepage.dart';
import './btmnavbar.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<String> imglist = ['images/f1.jfif', 'images/f2.jpg', 'images/f3.jpg',
    'images/f4.jpg',];
  final List<String> namelist = ['Strawberry (1KG)', 'Orange (10Pcs)', 'Banana (8Pcs)',
    'Watermelon (1KG)',];
  final List<String> p1 = [r'$17.00/kg', r'$1.00/pc', r'$0.20/pc', r'$4.25/kg',];
  final List<String> p2 = [r'$17.20', r'$10.00', r'$1.60', r'$4.25',];
  final List count = [17.20, 10.00, 1.60, 4.25];
  final List _itemCount = [1, 1, 1, 1,];
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
          const SizedBox(height:60),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
            IconButton( icon: Icon(Icons.navigate_before, color: Colors.white,),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
            }),
            const Text('Cart', textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
            const Text('       ', textAlign: TextAlign.center, style:
            TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold))
          ]),
          const SizedBox(height:10),
          Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
              child: Column( children: <Widget>[
                Expanded(flex: 5, child: Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                    child: Container(
                        child: ListView.separated(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: imglist.length,
                            separatorBuilder: (BuildContext context, int index) => Divider( height: 3, color: Colors.grey),
                            itemBuilder: (BuildContext context, int index) {
                              return SizedBox( height:120, child:
                              ListTile(
                                  leading: IconButton(icon: Icon(Icons.delete, color: Colors.red, size: 50,),
                                    onPressed: () => setState(() => imglist.removeAt(index))),
                                  title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                                    Image.asset(imglist[index], fit: BoxFit.cover, height: 80, width: 80),
                                    Column( crossAxisAlignment: CrossAxisAlignment.center,  mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                      Text(namelist[index], textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                                      Text(p1[index], textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 12, color: Colors.grey)),
                                      Text(p2[index], textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold)),
                                    ]),
                                    new Column(crossAxisAlignment: CrossAxisAlignment.center,children: <Widget>[
                                      new IconButton(icon: new Icon(Icons.add), onPressed: () => setState(()=> _itemCount[index]++)),
                                      new Text(_itemCount[index].toString(),
                                          style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)),
                                      new IconButton(icon: new Icon(Icons.remove),
                                          onPressed: () {
                                            if (_itemCount[index] <= 0)   return setState(() => _itemCount[index] = 0);
                                            return setState(() => _itemCount[index]--);})
                                    ])])
                              ));
                            }
                        )))),
                Expanded( flex: 1, child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        border: Border.all(
                            color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget> [
                      Text(r'Total: $33.05',
                          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
                      SizedBox(
                          height: 50, width: 150,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(primary: Colors.green,
                                  side: BorderSide(width: 1, color: Colors.green)),
                              child: Text('Checkout >>', textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20, color: Colors.white)))),
                    ])
                ))])
          ))])));
  }
}
