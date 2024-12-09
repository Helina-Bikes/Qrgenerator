import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mygenerator/generator_Qr_code.dart';
import 'package:mygenerator/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR code scanner and  generator',
      debugShowCheckedModeBanner:false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}):super(key: key);

  @override
 _HomePageState createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
 Widget build(BuildContext context){
  return Scaffold(
   appBar: AppBar(
    title:Text("QR code scanner and generator"),
    backgroundColor: Colors.blue,
   ),
   body: Center(
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: (){
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
          });
        }, child: Text("Scan Qr code")),
        SizedBox(height: 40,),
        ElevatedButton(onPressed: (){
          setState(() {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQRCode()));
          });
        }, child: Text("Generate QR code"))
      ],
    )
   ),
  );
 }
   
  
  }

