import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login UI ",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: new Home(),

    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        title: const Text("Login UI "),
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.only(left: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTitle(),
            SizedBox(height: 25.0),
            buildEmailTextField(),
            SizedBox(height: 10.0),
            buildPassswordTextField(),
            SizedBox(height: 15.0),
            buildForgetPassword(),
            SizedBox(height: 40),
            buildLoginButton(),
            SizedBox(height: 10.0),
            buildFacebookButton(),
            SizedBox(height: 40),
            buildOther()
          ],
        ),
      )/*SafeArea(
         child: Container(
           padding: EdgeInsets.only(left: 16.0, right: 16.0),
           child: Column(
             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             //crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               buildTitle(),
               //SizedBox(height: 35.0),
               //buildEmailTextField(),
               //SizedBox(height: 20.0),
               //buildPassswordTextField(),
               //SizedBox(height: 20),
               //buildForgetPassword(),
               //SizedBox(height: 40),
               //buildLoginButton(),
               //SizedBox(height: 20.0),
               //buildFacebookButton()

             ],
           ),
         ),
      )*/,
    );
  }
}

Widget buildTitle(){
  return Container(
    padding: EdgeInsets.only(top: 20.0, left: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Welcome,', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 26.0,
        )),
        const Text("Sign in to continue!", style: TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),)
      ],
    ),
  );
}


Widget buildEmailTextField(){
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red
            ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
                color: Colors.red
            )
        ),
        labelText: "Email",
        labelStyle: TextStyle(
          //fontSize: 25.0,
          color: Colors.black
        ),
        hintText: "Enter your e-mail",
        hintStyle: TextStyle(
          color: Colors.black,
          //fontSize: 15.0
        )
      ),
    ),
  );
}

Widget buildPassswordTextField(){
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.red
              )
          ),
          labelText: "Password",
          labelStyle: TextStyle(
              //fontSize: 25.0,
              color: Colors.black
          ),
          hintText: "Enter your Password",
          hintStyle: TextStyle(
              color: Colors.black,
              //fontSize: 15.0
          )
      ),
    ),
  );
}

Widget buildForgetPassword(){
  return Container(
    padding: EdgeInsets.only(right: 20.0),
    child: Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () => {},
        child: const Text("Forgot Password ?", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    ),
  );
}

Widget buildLoginButton(){
  return Container(
      height: 50.0,
      width: double.infinity,
    child: FlatButton(
      onPressed: () => {},
      textColor: Colors.black,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffff5f6d),
                  Color(0xffff5f6d),
                  Color(0xffffc371)
                ]
            )
        ),
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(maxHeight: double.infinity, minHeight: 50),
          child: Text("Login", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
      shape: RoundedRectangleBorder(

      ),
    ),
  );
}

Widget buildFacebookButton(){
  return Container(
    height: 50.0,
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(6)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ImageIcon(AssetImage('assets/facebook.png')),
          ),
          Center(
            child: const Text("Login with facebook", style: TextStyle(
                fontWeight: FontWeight.bold
            )),
          )
        ],
      ),
    ),
  );
}

Widget buildOther(){
  return Container(
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("I'am new usser ", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          )),
          InkWell(
            onTap: () => {},
            child: const Text(' Sign up', style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    ),
  );
}