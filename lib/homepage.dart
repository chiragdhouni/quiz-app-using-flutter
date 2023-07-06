import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/text.dart';
import 'package:quiz_app/QuizScreen.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.indigo.shade800, Colors.blue]))
          ,child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.lightBlue,width: 2)),
              child: IconButton(onPressed: (){}, icon:Icon(CupertinoIcons.xmark,color: Colors.black,size: 30,)
              ,),
            )
            ,Image.asset("assets/balloon2.png"),
            SizedBox(height:20),
            normal_text(text: "Welcome to our",size: 16,color: Color.fromARGB(255, 225, 224, 224)),
            const SizedBox(height: 5)
            ,headingText(text: 'Quiz App',size: 32,color: Colors.white),
            const SizedBox(height: 20),
            normal_text(
                  color: Color.fromARGB(255, 225, 224, 224),
                  size: 16,
                  text: "Do you feel confident? Here you'll face our most difficult questions!"),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const QuizScreen()));},
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: size.width - 40,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child:  Center(child: headingText(text: "Continue",size:18,color: Colors.blue)),
                ),
              ),
            )
            ],
          )
          
        ),
      ),
      );
  }
}