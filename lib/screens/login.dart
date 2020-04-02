import 'package:bitcash/Utils/colors.dart';
import 'package:bitcash/screens/home.dart';
import 'package:bitcash/screens/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  MediaQueryData _mediaQuery;
  //text controller
  TextEditingController _emailC = new TextEditingController();
  TextEditingController _passC = new TextEditingController();

  @override
  void dispose() {
    _emailC.dispose();
    _passC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        upperPart(),
        lowerPart(),
      ],
    )));
  }

  upperPart() {
    return Container(
      height: _mediaQuery.size.height / 3.5,
      width: double.infinity,
      color: CustomColor.primarycolor,
      child: Center(
          child: Text(
        'Login',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
      )),
    );
  }

  lowerPart() {
    return Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            emailTxtField(),
            passTxtField(),
            orText(),
            fgAccounts(),
            loginBtn(),
            signUpRichTxt(),
          ],
        ));
  }

  emailTxtField() {
    return TextFormField(
        controller: _emailC,
        decoration: new InputDecoration(
          hintText: "Enter your email",
          icon: Icon(
            Icons.email,
            color: CustomColor.primarycolor,
          ),
          labelText: "Email",
          labelStyle: new TextStyle(color: CustomColor.primarycolor),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
        ));
  }

  passTxtField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: TextFormField(
          controller: _emailC,
          decoration: new InputDecoration(
            hintText: "Enter Password",
            icon: Icon(
              Icons.lock,
              color: CustomColor.primarycolor,
            ),
            labelText: "Password",
            labelStyle: new TextStyle(color: CustomColor.primarycolor),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          )),
    );
  }

  orText() {
    return Container(
      // width: MediaQuery.of(context).size.width / 1.35,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Divider(
              color: CustomColor.primarycolor,
              height: 45,
              thickness: 2,
            ),
          ),
          Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'OR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: CustomColor.primarycolor),
                ),
              )),
          Expanded(
            flex: 1,
            child: Divider(
              color: CustomColor.primarycolor,
              height: 45,
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }

  fgAccounts() {
    return Padding(
      padding: EdgeInsets.only(top: 1.0),
      child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width / 1.25,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  flex: 8,
                  child: RaisedButton(
                    padding: EdgeInsets.all(13),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () {},
                    child: Text('Facebook',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: CustomColor.primarycolor)),
                  )),
              Spacer(
                flex: 1,
              ),
              Expanded(
                  flex: 8,
                  child: RaisedButton(
                    padding: EdgeInsets.all(13),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    onPressed: () {
                      // signInWithGoogle();
                    },
                    child: Text(
                      'Google',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: CustomColor.primarycolor),
                    ),
                  )),
            ],
          )),
    );
  }

  loginBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 35.0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.25,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25))),
        child: RaisedButton(
          color: CustomColor.primarycolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          onPressed: () {
            //remove cursor blink of search textfield
            FocusScope.of(context).requestFocus(new FocusNode());
            // validateUser();
            navigateToHomePage();
          },
          child: Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    );
  }

  signUpRichTxt() {
    return GestureDetector(
        onTap: () {
          navigateToRegisterPage();
        },
        child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Center(
                child: RichText(
              text: TextSpan(
                text: 'New user?',
                style: TextStyle(
                    color: CustomColor.primarycolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Sign up',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                  )
                ],
              ),
            ))));
  }

  void navigateToRegisterPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return RegisterPage();
    }));
  }

  void navigateToHomePage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }
}
