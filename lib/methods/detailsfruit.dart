import 'package:flutter/material.dart';
import './subcat.dart';
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

int _itemCount = 0;
int _value = 0;

class RevCon extends StatelessWidget {
  const RevCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10), height: 145,
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('No Reviews', textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.white,)
        ));
  }
}

class DF1 extends StatefulWidget {
  const DF1({Key? key}) : super(key: key);

  @override
  _DF1State createState() => _DF1State();
}

class _DF1State extends State<DF1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 50),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/f1.jfif'), fit: BoxFit.fitHeight,)),
                ),
                Container(alignment: Alignment.centerLeft,
                    child: Column(children: <Widget>[
                      const SizedBox(height: 20),
                      IconButton(
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C2()));
                          }),
                    ])
                ),
              ]),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(-2957102),
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: ListView( scrollDirection: Axis.vertical, padding: EdgeInsets.zero, children: <Widget>[
                    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10), height:200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              const SizedBox(height: 10),
                              const Text('Strawberry',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$17.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$17.20/kg   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Text('5 Calories   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Row(children: <Widget>[
                                      Icon(Icons.star),
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text('(0)',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey)),
                                    ])
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.remove,
                                            color: Colors.black), iconSize: 30,
                                            onPressed: () {
                                              if (_itemCount <= 0)
                                                return setState(() => _itemCount = 0);
                                              return setState(() => _itemCount--);
                                            })),
                                    Text('  $_itemCount kg  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                          onPressed: () =>
                                              setState(() => _itemCount++),
                                        )),
                                  ])
                            ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded( flex: 2,
                                  child: FlatButton(
                                    onPressed: () =>
                                        setState(() => _value = 0),
                                    child: Text(
                                      'Details',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 20),
                                    ),),),
                                Expanded( flex: 2, child: FlatButton(
                                  onPressed: () => setState(() => _value = 1),
                                  child: Text(
                                    'Reviews',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                  ),),),
                              ]),
                          _value == 0 ? Container(  child: DCon1())
                              : Container( child: RevCon())

                        ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: const Text('  Similar products',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            height: 210,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                dcon[index]));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                          Colors.green,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ]));
                                      })),
                            ]))])
              ))])));
  }
}

class DCon1 extends StatelessWidget {
  const DCon1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Strawberry are bright res, juicy and sweet. They are an excellent source of vitamin C and manganese.'
            'They contain decent amount of folate and pottassium. Strawberry are very rich in antioxides and plant components.'
            'Helps in controlling heart rate and blood sugar.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DF2 extends StatefulWidget {
  const DF2({Key? key}) : super(key: key);

  @override
  _DF2State createState() => _DF2State();
}

class _DF2State extends State<DF2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 50),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/f2.jpg'), fit: BoxFit.fitHeight,)),
                ),
                Container(alignment: Alignment.centerLeft,
                    child: Column(children: <Widget>[
                      const SizedBox(height: 20),
                      IconButton(
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C2()));
                          }),
                    ])
                ),
              ]),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(-2957102),
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView( scrollDirection: Axis.vertical, padding: EdgeInsets.zero, children: <Widget>[
                    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10), height:200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              const SizedBox(height: 10),
                              const Text('Orange',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$1.00/pc',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$1.00/pc   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Text('5 Calories   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Row(children: <Widget>[
                                      Icon(Icons.star),
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text('(0)',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey)),
                                    ])
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.remove,
                                            color: Colors.black), iconSize: 30,
                                            onPressed: () {
                                              if (_itemCount <= 0)
                                                return setState(() => _itemCount = 0);
                                              return setState(() => _itemCount--);
                                            })),
                                    Text('  $_itemCount kg  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                          onPressed: () =>
                                              setState(() => _itemCount++),
                                        )),
                                  ])
                            ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded( flex: 2,
                                  child: FlatButton(
                                    onPressed: () =>
                                        setState(() => _value = 0),
                                    child: Text(
                                      'Details',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 20),
                                    ),),),
                                Expanded( flex: 2, child: FlatButton(
                                  onPressed: () => setState(() => _value = 1),
                                  child: Text(
                                    'Reviews',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                  ),),),
                              ]),
                          _value == 0 ? Container(  child: DCon2())
                              : Container( child: RevCon())

                        ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: const Text('  Similar products',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            height: 210,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                dcon[index]));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                          Colors.green,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ]));
                                      })),
                            ]))])
              ))])));
  }
}

class DCon2 extends StatelessWidget {
  const DCon2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Oranges are a healthy source of fiber, vitamin C, thiamine, folate and antioxides. They have multiple '
            'multiple health benefits. Oranges are among the worlds most popular fruits. They belong to the '
            'citrus fruits category.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DF3 extends StatefulWidget {
  const DF3({Key? key}) : super(key: key);

  @override
  _DF3State createState() => _DF3State();
}

class _DF3State extends State<DF3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 50),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/f3.jpg'), fit: BoxFit.fitHeight,)),
                ),
                Container(alignment: Alignment.centerLeft,
                    child: Column(children: <Widget>[
                      const SizedBox(height: 20),
                      IconButton(
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C2()));
                          }),
                    ])
                ),
              ]),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(-2957102),
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView( scrollDirection: Axis.vertical, padding: EdgeInsets.zero, children: <Widget>[
                    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10), height:200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              const SizedBox(height: 10),
                              const Text('Banana',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$0.20/pc',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$0.20/pc   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Text('5 Calories   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Row(children: <Widget>[
                                      Icon(Icons.star),
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text('(0)',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey)),
                                    ])
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.remove,
                                            color: Colors.black), iconSize: 30,
                                            onPressed: () {
                                              if (_itemCount <= 0)
                                                return setState(() => _itemCount = 0);
                                              return setState(() => _itemCount--);
                                            })),
                                    Text('  $_itemCount kg  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                          onPressed: () =>
                                              setState(() => _itemCount++),
                                        )),
                                  ])
                            ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded( flex: 2,
                                  child: FlatButton(
                                    onPressed: () =>
                                        setState(() => _value = 0),
                                    child: Text(
                                      'Details',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 20),
                                    ),),),
                                Expanded( flex: 2, child: FlatButton(
                                  onPressed: () => setState(() => _value = 1),
                                  child: Text(
                                    'Reviews',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                  ),),),
                              ]),
                          _value == 0 ? Container(  child: DCon3())
                              : Container( child: RevCon())

                        ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: const Text('  Similar products',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            height: 210,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                dcon[index]));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                          Colors.green,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ]));
                                      })),
                            ]))])
              ))])));
  }
}

class DCon3 extends StatelessWidget {
  const DCon3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Bananas are extremely high and delicious. They contain several high nutrients and provides '
            'benefits for digestion, heart health and weight loss. Aside from nutrients they are also a highly comfortable snack dish.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DF4 extends StatefulWidget {
  const DF4({Key? key}) : super(key: key);

  @override
  _DF4State createState() => _DF4State();
}

class _DF4State extends State<DF4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 50),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/f4.jpg'), fit: BoxFit.fitHeight,)),
                ),
                Container(alignment: Alignment.centerLeft,
                    child: Column(children: <Widget>[
                      const SizedBox(height: 20),
                      IconButton(
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C2()));
                          }),
                    ])
                ),
              ]),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(-2957102),
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView( scrollDirection: Axis.vertical, padding: EdgeInsets.zero, children: <Widget>[
                    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10), height:200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              const SizedBox(height: 10),
                              const Text('Watermelon',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$4.25/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$4.25/kg   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Text('5 Calories   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Row(children: <Widget>[
                                      Icon(Icons.star),
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text('(0)',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey)),
                                    ])
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.remove,
                                            color: Colors.black), iconSize: 30,
                                            onPressed: () {
                                              if (_itemCount <= 0)
                                                return setState(() => _itemCount = 0);
                                              return setState(() => _itemCount--);
                                            })),
                                    Text('  $_itemCount kg  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                          onPressed: () =>
                                              setState(() => _itemCount++),
                                        )),
                                  ])
                            ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded( flex: 2,
                                  child: FlatButton(
                                    onPressed: () =>
                                        setState(() => _value = 0),
                                    child: Text(
                                      'Details',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 20),
                                    ),),),
                                Expanded( flex: 2, child: FlatButton(
                                  onPressed: () => setState(() => _value = 1),
                                  child: Text(
                                    'Reviews',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                  ),),),
                              ]),
                          _value == 0 ? Container(  child: DCon4())
                              : Container( child: RevCon())

                        ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: const Text('  Similar products',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            height: 210,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                dcon[index]));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                          Colors.green,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ]));
                                      })),
                            ]))])
              ))])));
  }
}

class DCon4 extends StatelessWidget {
  const DCon4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Watermelon has a high water content. This makes it hydrating and helps you feel full. The combination of '
            'water and fiber means you are eating a good volume of food without a lot of calories. It is high in'
            'Vitamin C and vitamin A and many healthy plant products.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DF5 extends StatefulWidget {
  const DF5({Key? key}) : super(key: key);

  @override
  _DF5State createState() => _DF5State();
}

class _DF5State extends State<DF5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 50),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/f5.jpg'), fit: BoxFit.fitHeight,)),
                ),
                Container(alignment: Alignment.centerLeft,
                    child: Column(children: <Widget>[
                      const SizedBox(height: 20),
                      IconButton(
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C2()));
                          }),
                    ])
                ),
              ]),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(-2957102),
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView( scrollDirection: Axis.vertical, padding: EdgeInsets.zero, children: <Widget>[
                    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10), height:200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              const SizedBox(height: 10),
                              const Text('Apple',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$17.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$17.40/kg   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Text('5 Calories   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Row(children: <Widget>[
                                      Icon(Icons.star),
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text('(0)',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey)),
                                    ])
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.remove,
                                            color: Colors.black), iconSize: 30,
                                            onPressed: () {
                                              if (_itemCount <= 0)
                                                return setState(() => _itemCount = 0);
                                              return setState(() => _itemCount--);
                                            })),
                                    Text('  $_itemCount kg  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                          onPressed: () =>
                                              setState(() => _itemCount++),
                                        )),
                                  ])
                            ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded( flex: 2,
                                  child: FlatButton(
                                    onPressed: () =>
                                        setState(() => _value = 0),
                                    child: Text(
                                      'Details',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 20),
                                    ),),),
                                Expanded( flex: 2, child: FlatButton(
                                  onPressed: () => setState(() => _value = 1),
                                  child: Text(
                                    'Reviews',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                  ),),),
                              ]),
                          _value == 0 ? Container(  child: DCon5())
                              : Container( child: RevCon())

                        ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: const Text('  Similar products',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            height: 210,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                dcon[index]));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                          Colors.green,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ]));
                                      })),
                            ]))])
              ))])));
  }
}

class DCon5 extends StatelessWidget {
  const DCon5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Apples are also a rich source of polyphenols. while nutrition labels does not list'
            'these plant components, they are likely responsible for many of the health benefits. They have good source of fiber'
            'and vitamin C.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DF6 extends StatefulWidget {
  const DF6({Key? key}) : super(key: key);

  @override
  _DF6State createState() => _DF6State();
}

class _DF6State extends State<DF6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 50),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/f6.jpg'), fit: BoxFit.fitHeight,)),
                ),
                Container(alignment: Alignment.centerLeft,
                    child: Column(children: <Widget>[
                      const SizedBox(height: 20),
                      IconButton(
                          icon: Icon(
                            Icons.navigate_before,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C2()));
                          }),
                    ])
                ),
              ]),
              Expanded(child: Container( alignment: Alignment.topCenter, width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(-2957102),
                      border: Border.all(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView( scrollDirection: Axis.vertical, padding: EdgeInsets.zero, children: <Widget>[
                    Container(padding: EdgeInsets.all(10), margin: EdgeInsets.all(10), height:200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget> [
                              const SizedBox(height: 10),
                              const Text('Pineapple',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$15.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$15.00/kg   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Text('5 Calories   ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    VerticalDivider(
                                      width: 2,
                                      thickness: 1,
                                    ),
                                    Row(children: <Widget>[
                                      Icon(Icons.star),
                                      Text('4.5',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Text('(0)',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.grey)),
                                    ])
                                  ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.remove,
                                            color: Colors.black), iconSize: 30,
                                            onPressed: () {
                                              if (_itemCount <= 0)
                                                return setState(() => _itemCount = 0);
                                              return setState(() => _itemCount--);
                                            })),
                                    Text('  $_itemCount kg  ',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Ink(
                                        decoration: const ShapeDecoration(
                                            color: Colors.green,
                                            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                                        child: IconButton(icon: Icon(Icons.add, color: Colors.black), iconSize: 30,
                                          onPressed: () =>
                                              setState(() => _itemCount++),
                                        )),
                                  ])
                            ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column( children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded( flex: 2,
                                  child: FlatButton(
                                    onPressed: () =>
                                        setState(() => _value = 0),
                                    child: Text(
                                      'Details',
                                      style:
                                      TextStyle(color: Colors.black, fontSize: 20),
                                    ),),),
                                Expanded( flex: 2, child: FlatButton(
                                  onPressed: () => setState(() => _value = 1),
                                  child: Text(
                                    'Reviews',
                                    style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                  ),),),
                              ]),
                          _value == 0 ? Container(  child: DCon6())
                              : Container( child: RevCon())

                        ])),
                    Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                alignment: Alignment.centerLeft,
                                child: const Text('  Similar products',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),),
                              Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(5),
                                  height: 210,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: imglist.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            height: 210,
                                            child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  InkResponse(
                                                      splashColor: Colors
                                                          .deepOrange
                                                          .withOpacity(0.5),
                                                      highlightColor: Colors
                                                          .blueGrey
                                                          .withOpacity(0.5),
                                                      child: Image.asset(
                                                        imglist[index],
                                                        fit: BoxFit.cover,
                                                        height: 125,
                                                      ),
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (_) =>
                                                                dcon[index]));
                                                      }),
                                                  Text(namelist[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                  Text(p1[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey)),
                                                  Text(p2[index],
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color:
                                                          Colors.green,
                                                          fontWeight:
                                                          FontWeight.bold)),
                                                ]));
                                      })),
                            ]))])
              ))])));
  }
}

class DCon6 extends StatelessWidget {
  const DCon6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(12)),
        child: const Text('Pineapple is an incredibly delicious and healthy tropical fruit. This popular fruit is'
            'packed with nutrients, antioxidants and other helpful compounds, such as enzymes that can fight '
            'inflammation and disease.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}




