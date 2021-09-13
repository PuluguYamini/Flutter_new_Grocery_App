import 'package:flutter/material.dart';
import './signs.dart';
class LogoPage extends StatefulWidget {
  const LogoPage({Key? key}) : super(key: key);

  @override
  _LogoPageState createState() => _LogoPageState();
}

class _LogoPageState extends State<LogoPage> {
  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder(
        future: _scrolls(),
        builder: (context, snapshot) {
          return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/open.PNG'),
                    fit: BoxFit.cover,
                  )));
        });
  }

  Future<String> _scrolls() async {
    await Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return Onboarding();
          }));
    });
    return 'Welcome';
  }
}

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column( children: <Widget>[
          const SizedBox(height: 40),
          Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.navigate_before, color: Colors.white,), onPressed: () {   }),
              FlatButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));},
                  child: Text('Skip', style: TextStyle(color: Colors.white, fontSize: 15),
              ))]),
          Expanded(child:
          LoginPage()),
        ]));
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PageController controller = PageController();
  int _curr = 0;
  @override
  Widget build(BuildContext context) {
    return PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        onPageChanged: (num) => setState(() => _curr = num),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(12)),
            child: Column(children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10), margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  const SizedBox(height: 20),
                  Image.asset('images/p1.PNG'),
                  const Text('Shop your daily needs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const Text(
                      'You wont find it cheaper anywhere else than Gronik',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18, color: Colors.black)),
                  const SizedBox(height: 50),
                  Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('.', style: TextStyle(fontSize: 100, color: Color(-13318564))),
                        const Text('.', style: TextStyle(fontSize: 100, color: Color(-1907225))),
                        const Text('.', style: TextStyle(fontSize: 100, color: Color(-1907225))),
                      ])
                ])),
              const SizedBox(height: 10),
              Expanded( child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(12)),
                  child: SizedBox(
                      height: 50,
                      width: 370,
                      child: ElevatedButton(
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              side: BorderSide(width: 1, color: Colors.green)),
                          child: Text('Get Started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white)))))),
    ])),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10), margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          Image.asset('images/p2.PNG'),
                          const Text('Exciting Offers',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          const Text(
                              'Get new offers and great deals everyday every hour',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black)),
                          const SizedBox(height: 50),
                          Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('.', style: TextStyle(fontSize: 100, color: Color(-1907225))),
                                const Text('.', style: TextStyle(fontSize: 100, color: Color(-13318564))),
                                const Text('.', style: TextStyle(fontSize: 100, color: Color(-1907225))),
                              ])
                        ])),
                const SizedBox(height: 10),
                Expanded( child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: SizedBox(
                        height: 50,
                        width: 370,
                        child: ElevatedButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                side: BorderSide(width: 1, color: Colors.green)),
                            child: Text('Get Started',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white)))))),
              ])),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10), margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          const SizedBox(height: 20),
                          Image.asset('images/p3.PNG'),
                          const Text('1000+ products',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          const Text(
                              'Shop and get delivery at your convenience',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black)),
                          const SizedBox(height: 50),
                          Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('.', style: TextStyle(fontSize: 100, color: Color(-1907225))),
                                const Text('.', style: TextStyle(fontSize: 100, color: Color(-1907225))),
                                const Text('.', style: TextStyle(fontSize: 100, color: Color(-13318564))),
                              ])
                        ])),
                const SizedBox(height: 10),
                Expanded( child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(12)),
                    child: SizedBox(
                        height: 50,
                        width: 370,
                        child: ElevatedButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                side: BorderSide(width: 1, color: Colors.green)),
                            child: Text('Get Started',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white)))))),
              ])),
          ]);
  }
}
