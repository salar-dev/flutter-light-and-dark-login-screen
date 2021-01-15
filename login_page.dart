import 'package:flutter/material.dart';

// Salar Dev
// YouTube:- https://www.youtube.com/channel/UCphD-Ww9JnrBXRfzy6Ivg0g

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool itsDark = true;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: itsDark ? Color(0xff171717) : Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.brightness_high),
        onPressed: (){
          setState(() {
            if(itsDark){
              itsDark = false;
            }else{
              itsDark = true;
            }
            print(itsDark);
          });
        },
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: _height,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello.\nWelcome Back",
                  style: TextStyle(
                    color: itsDark ? Colors.white : Colors.black,
                    fontSize: _width * 0.10,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: _height * 0.070),
                TextField(
                  style: TextStyle(
                    color: itsDark ? Colors.white : Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: "Enter you'r username or email",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    labelText: "USERNAME",
                    labelStyle: TextStyle(
                      color: Colors.blue,
                    ),
                      prefixIcon: Icon(Icons.person,
                        color: Colors.blue,),
                  ),
                ),
                SizedBox(height: _height * 0.030),
                TextField(
                  obscureText: true,
                  style: TextStyle(
                    color: itsDark ? Colors.white : Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: "Enter you'r username or email",
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(
                      color: Colors.blue,
                    ),
                    prefixIcon: Icon(Icons.vpn_key,
                      color: Colors.blue,),
                  ),
                ),
                SizedBox(height: _height * 0.030),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        print("Forget Password");
                      },
                      child: Text('Forget Password?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: _height * 0.070),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: 8,
                        offset: Offset(2,5),
                      )
                    ],
                  ),
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.blue,
                    child: Text("LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _height * 0.070),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Create Account',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Salar Dev
