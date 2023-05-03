import 'package:flutter/material.dart';
import 'colors.dart'; 
import 'constants.dart';

// ignore: camel_case_types
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
      double width =MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                    Image.asset(pbimage,
            height: height *0.35,
            width: width,
            
            fit: BoxFit.cover,),
            Container(
              height: height *0.40,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.3,0.9],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  
                  colors: [
                  Colors.transparent,
                  Colors.white,
                ])
              ),
            )
      
              ],
            ),
        
            
            
           Center(
             child: Text(appName,
                   style: TextStyle( 
              fontSize: 40,fontWeight:FontWeight.bold
                   ),),
           ),
      
           Center(
             child: Text(slogan ,
                   style:TextStyle(color: Colors.blue ,fontSize:20 ) ,),
           ),
      
      
          Container(
            child: Text(" $loginstring ",
            style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)
             ),
             decoration: BoxDecoration(
              gradient: LinearGradient(colors: [primarycolor .withOpacity(0.3),primarycolor.withOpacity(0.2)]),
              border: Border(left:BorderSide(color: primarycolor, width:5))
             ),
             
          ),
      
      
      
      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
            
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color:primarycolor)),
                prefixIcon:Icon(Icons.email,color: primarycolor,),
                
                labelText: "Emailaddress",
                labelStyle: TextStyle(color: primarycolor,fontSize: 20)
              ),
            ),
          ),
                 Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
            
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(borderSide:BorderSide(color:primarycolor)),
                prefixIcon:Icon(Icons.lock_clock,color: primarycolor,),
                
                labelText: "Password",
                labelStyle: TextStyle(color:primarycolor,fontSize: 16)
              ),
            ),
          ),
        Align(
        alignment:Alignment.centerRight,
        child: TextButton(onPressed:(){},child: Text("forget posssword"),)),
        Align
        (alignment: Alignment.bottomCenter,
        child:SizedBox(height: height *0.07,width: width -40,
          child:FilledButton( 
            onPressed: (){}, child: const Text("LOGIN TO ACCOUNT",)
             ))),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                 Text("Dont have an acconut ?"),
                 TextButton (onPressed: (){}, child:Text("creat acconut"))
              ],
             ),
            
          ],
        ),
      ),
    );
  }
}