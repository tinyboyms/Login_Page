import 'package:flutter/material.dart';
import 'package:uilog/icon.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //getting the size property
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: SingleChildScrollView( // using this avoid bottom pixel overflowed
      child:Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(10,50, 0, 0),
              //margin: EdgeInsets.all(8),
              child:  Text('Welcome Back 👋',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.deepPurple),),
              width: 400,
              height: 100,
            ),
            Container(
              width: 500,
              height: 70,
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              color: Colors.white,
              child: Text("We happy to se you again.To use  your account,you should log in first",style: TextStyle(fontSize:19),),

            ),
            Container(
              width: 500,
              height: 100,
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              color: Colors.white,
              child:ElevatedButton(
                child: Text("Email",style: TextStyle(fontSize: 30,color: Colors.white),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
                  backgroundColor: Colors.deepPurpleAccent,
                ),
              ),
            ),
        Container(
            width: 500,
            height: 100,
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(30,10,30,30),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter valid mail id as abc@gmail.com',
                    prefixIcon: Icon(Icons.mail_outline),
                ),
              ),
            ),
            Container(
              width: 500,
              height: 100,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(30,10,30,30),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your secure password',
                    prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 150,
                  ),
                  TextButton(onPressed: (){},
                      child: Text("Forget Password")),
                ],
              ),
            ),

        Container(
            width: 500,
            height: 90,
            padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
            color: Colors.white,
            child:ElevatedButton(
              child: Text("Login",style: TextStyle(fontSize: 25,color: Colors.white,),),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
                backgroundColor: Colors.deepPurpleAccent,
              ),

            ),
        ),
            Row(
              children: [
                Expanded(child:Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
                ),
                Text("Sign in With Google or Facebook",style: TextStyle(fontSize:19)),
                Expanded(child:Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
                ),
              ],
            ),
            Container(
              width: 400,
              height:70,padding:EdgeInsets.fromLTRB(30,10,30,0) ,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(child: ElevatedButton.icon(
                        onPressed: (){},
                        icon: Icon(MyFlutterApp.gg),
                        label: new Text("Google"),
                      ),

                      ),
                      SizedBox(
                        width: 20, //<-- SEE HERE
                      ),
                      Expanded(child: ElevatedButton.icon(
           //            color:  Colors.blueAccent[600],
                        onPressed: (){},
                        icon: Icon(MyFlutterApp.fb),
                         //size: 50.0,

                        label: new Text("Facebook"),
                      ),
                      ),
                    ],
                  ),
            ),

           Container(
             padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
             child: Row(
               children: [
                 Text("Don't have an account?",style: TextStyle(fontSize: 20),),
                 TextButton(onPressed: (){},
                     child: Text("Signup")),
               ],
             ),
           )
            ]// This trailing comma makes auto-formatting nicer for build methods.
    ),
    ),
    );

   }
  }


