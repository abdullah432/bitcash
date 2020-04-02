import 'package:bitcash/Utils/colors.dart';
import 'package:bitcash/screens/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  MediaQueryData _mediaQuery;
  //text controller
  TextEditingController _nameC = new TextEditingController();
  TextEditingController _emailC = new TextEditingController();
  TextEditingController _numberC = new TextEditingController();
  TextEditingController _passC = new TextEditingController();

  @override
  void dispose() {
    _nameC.dispose();
    _emailC.dispose();
    _numberC.dispose();
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
        'Signup',
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
            nameTxtField(),
            emailTxtField(),
            numberTxtField(),
            passTxtField(),
            orText(),
            fgAccounts(),
            loginBtn(),
            signUpRichTxt(),
          ],
        ));
  }

  nameTxtField() {
    return TextFormField(
        controller: _emailC,
        decoration: new InputDecoration(
          hintText: "Enter your name",
          icon: Icon(
            Icons.edit,
            color: CustomColor.primarycolor,
          ),
          labelText: "Name",
          labelStyle: new TextStyle(color: CustomColor.primarycolor),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
        ));
  }

  emailTxtField() {
    return TextFormField(
        controller: _emailC,
        keyboardType: TextInputType.emailAddress,
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

  numberTxtField() {
    return TextFormField(
        controller: _emailC,
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
          hintText: "Enter your phone number",
          icon: Icon(
            Icons.phone,
            color: CustomColor.primarycolor,
          ),
          labelText: "Phone Number",
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
          obscureText: true,
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
          },
          child: Text(
            'Signup',
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
          navigateToLoginPage();
        },
        child: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Center(
                child: RichText(
              text: TextSpan(
                text: 'Already have an account?',
                style: TextStyle(
                    color: CustomColor.primarycolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Login',
                    style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                  )
                ],
              ),
            ))));
  }

  void navigateToLoginPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }
}
