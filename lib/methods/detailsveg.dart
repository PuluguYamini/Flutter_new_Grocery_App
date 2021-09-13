import 'package:flutter/material.dart';
import './subcat.dart';
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

class DV1 extends StatefulWidget {
  const DV1({Key? key}) : super(key: key);

  @override
  _DV1State createState() => _DV1State();
}

class _DV1State extends State<DV1> {

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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/v1.jpg'), fit: BoxFit.fitHeight,)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (_) => C1()));
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
                              const Text('Tomato',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$5.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$5.00/kg   ',
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
        child: const Text('Tomatoes are loaded with many, many health benefits. '
            'In fact, they are incredibly versatile and can be prepared in a seemingly endless number of dishes, as well as being great to eat alone. '
            'Keep reading to find out why you need to stop neglecting tomatoes as a part of your regular balanced diet.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DV2 extends StatefulWidget {
  const DV2({Key? key}) : super(key: key);

  @override
  _DV2State createState() => _DV2State();
}

class _DV2State extends State<DV2> {
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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/v2.jfif'), fit: BoxFit.fitHeight,)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C1()));
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
                              const Text('Onions',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$8.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$8.00/kg   ',
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
        child: const Text('It is common knowledge that chopping onions causes watery eyes. However, onions may also provide'
            'potential health benefits. These may include reducing the risk of several types of cancer, improving mood, and maintaining skin'
            'and hair health.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DV3 extends StatefulWidget {
  const DV3({Key? key}) : super(key: key);

  @override
  _DV3State createState() => _DV3State();
}

class _DV3State extends State<DV3> {
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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/v3.jpg'), fit: BoxFit.fitHeight,)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C1()));
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
                              const Text('Carrot',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$5.20.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$5.20/kg   ',
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
        child: const Text('It is crunchy, tasty and highly nutritious. '
            'Carrots are a particularly good source of beta carotene, fiber, vitamin k1, potassium and antioxidants.'
            'They are a weight loss friendly food and have been linked to lower cholesterol.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DV4 extends StatefulWidget {
  const DV4({Key? key}) : super(key: key);

  @override
  _DV4State createState() => _DV4State();
}

class _DV4State extends State<DV4> {
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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/v4.jpg'), fit: BoxFit.fitHeight,)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C1()));
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
                              const Text('Beetroot',
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
        child: const Text('Beetroots and beetroot juice have been associated with numerous health benefits, including improved blood flow,'
            'lower blood pressure, and increased exercise performance. Many of these benefits are due to their high content of inorganic nitrates.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DV5 extends StatefulWidget {
  const DV5({Key? key}) : super(key: key);

  @override
  _DV5State createState() => _DV5State();
}

class _DV5State extends State<DV5> {
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
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/v5.jpg'), fit: BoxFit.fitHeight,)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C1()));
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
                              const Text('Capsicum',
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
        child: const Text('Bell peppers are fruits that belong to the nightshade family. They are related to '
            'chilli peppers, tomatoes and breadfruit, all of which are native to central and south america.'
            'Also called as sweet peppers or capsicums, bell peppers can be eaten raw or cooked.',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}

class DV6 extends StatefulWidget {
  const DV6({Key? key}) : super(key: key);

  @override
  _DV6State createState() => _DV6State();
}

class _DV6State extends State<DV6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column( children: <Widget>[
              const SizedBox(height: 40),
              Stack( children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/v6.jpg'), fit: BoxFit.fitHeight,)),
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
                            Navigator.push(context, MaterialPageRoute(builder: (_) => C1()));
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
                              const Text('Potato',
                                  style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 10),
                              const Text(r'$5.00/kg',
                                  style: TextStyle(fontSize: 20, color: Colors.grey)),
                              const SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(r'$5.00/kg   ',
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
        child: const Text('Potatoes are versatile root vegetables and a staple food in many households.'
            'Potatoes are relatively cheap and easy to grow and packed with a variety of nutrients.'
            'They are an underground tuber that grows on the roots of the Solanum tuberosum plant',
            style: TextStyle(fontSize: 15, color: Colors.white,)
        ));
  }
}




