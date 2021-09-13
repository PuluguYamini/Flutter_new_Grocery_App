import 'package:flutter/material.dart';
import './homepage.dart';
import './detailsfruit.dart';
import './detailsveg.dart';
class Buildgrid{
  String img;
  String name;
  String p1;
  String p2;
  Widget nav;

  Buildgrid({required this.img, required this.name, required this.p1, required this.p2, required this.nav});
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  int _itemCount = 0;
  TextEditingController cntrl = TextEditingController();
  List<Buildgrid> newlist = [];

  List<Buildgrid> namelist = [
  (Buildgrid(img: 'images/v1.jpg', name: 'Tomato', p1: r'$5.00/kg', p2: r'$5.00', nav: DV1())),
  (Buildgrid(img: 'images/v2.jfif', name: 'Onions', p1: r'$8.00/kg', p2: r'$8.00', nav: DV2())),
  (Buildgrid(img: 'images/v3.jpg', name: 'Carrot', p1: r'$5.20/kg', p2: r'$5.20', nav: DV3())),
  (Buildgrid(img: 'images/v4.jpg', name: 'Beetroot', p1: r'$4.25/kg', p2: r'$4.25', nav: DV4())),
  (Buildgrid(img: 'images/v5.jpg', name: 'Capsicum', p1: r'$17.00/kg', p2: r'$17.40', nav: DV5())),
  (Buildgrid(img: 'images/v6.jpg', name: 'Potato', p1: r'$5.00/kg', p2: r'$5.00', nav: DV6())),
  (Buildgrid(img: 'images/f1.jfif', name: 'Strawberry', p1: r'$17.00/kg', p2: r'$17.20', nav: DF1())),
  (Buildgrid(img: 'images/f2.jpg', name: 'Orange', p1: r'$1.00/pc', p2: r'$10.00', nav: DF2())),
  (Buildgrid(img: 'images/f3.jpg', name: 'Banana', p1: r'$0.20/pc', p2: r'$1.60', nav: DF3())),
  (Buildgrid(img: 'images/f4.jpg', name: 'Watermelon', p1: r'$4.25/kg', p2: r'$4.25', nav: DF4())),
  (Buildgrid(img: 'images/f5.jpg', name: 'Apple', p1: r'$17.00/kg', p2: r'$17.40', nav: DF5())),
  (Buildgrid(img: 'images/f6.jpg', name: 'Pineapple', p1: r'$15.00/kg', p2: r'$15.00', nav: DF6())),
  ];

  void _runFilter(String enteredKeyword) {
    List<Buildgrid> results = [];
    if (enteredKeyword.isEmpty) {
      results = namelist;
    } else {
      results = namelist
          .where((string) => string.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      newlist = results;
    });
  }

  @override
  initState() {
    // at the beginning, all users are shown
    newlist = namelist;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height:40),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                IconButton(
                    icon: Icon(Icons.navigate_before, color: Colors.white,),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));}),
                const Text('Search', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                const Text('       ', textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold))]),
              Container( alignment: Alignment.center, padding: EdgeInsets.all(20),
                  child: TextField(
                    controller: cntrl,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      filled: true,
                      fillColor: Color(-1052680),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: '   Search Here...',),
                    onChanged: (value) => _runFilter(value),
                  )),
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
                        child: Container(
                            height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
                            child: newlist.length > 0 ? GridView.builder(
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                padding: EdgeInsets.zero,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio:
                                  MediaQuery.of(context).size.width /
                                      (MediaQuery.of(context).size.height / 1.5),),
                                itemCount: newlist.length,
                                itemBuilder: (context, index) {
                                  return Container( alignment: Alignment.center,
                                      padding: EdgeInsets.all(5), margin: EdgeInsets.all(5),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            InkResponse(
                                                splashColor: Colors.deepOrange.withOpacity(0.5),
                                                highlightColor: Colors.blueGrey.withOpacity(0.5),
                                                child: Image.asset(newlist[index].img, fit: BoxFit.cover, height: 125,),
                                                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) => newlist[index].nav));}),
                                            Text(newlist[index].name, textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
                                            Text(newlist[index].p1, textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 12, color: Colors.grey)),
                                            Text(newlist[index].p2, textAlign: TextAlign.left,
                                                style: TextStyle(fontSize: 16, color: Color(-13318564), fontWeight: FontWeight.bold)),
                                            Expanded(child: SizedBox( height:10,
                                                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget> [
                                                  _itemCount != 0 ? new IconButton(icon: new Icon(Icons.remove), onPressed: () => setState(() =>_itemCount--),): new Container(),
                                                  _itemCount != 0 ? new Text(_itemCount.toString(),
                                                      style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)): new Container(),
                                                  new IconButton(icon: new Icon(Icons.add), onPressed: () => setState(()=> _itemCount++))
                                                ])))
                                          ]));
                                }) : Text('No results found', textAlign: TextAlign.center, style: TextStyle(fontSize: 24),)
                        )))])))
            ])));
  }
}
