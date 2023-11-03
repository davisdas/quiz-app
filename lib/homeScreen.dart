import 'package:flutter/material.dart';
import 'package:quizapp/database.dart';
import 'package:quizapp/score.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int qnum=0;
int ?value;
int crtanswer=0;
int option=0;
 var boxcolor=Colors.grey;

 

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[850],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questions",style: TextStyle(color: Colors.white,fontSize: 30),),
              Text("${qnum+1}/10",style: TextStyle(color: Colors.white,fontSize: 30)),
            ],
           ),
         ),
         Text("Score : $crtanswer",style: TextStyle(color: Colors.white,fontSize: 20),),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
            ),

            child: Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(DataBase.quizData[qnum]["question"],style: TextStyle(fontSize: 20),),
            )),
            ),
          ),
         
         Container(
          
          height: 400,
          color: Colors.grey[850],
          child: ListView.builder(itemCount: 4,itemBuilder: (context, index) => 
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                   value=index;
                   option=index;
                });
              },
              child: Container(
              decoration: BoxDecoration(
                color: value==index&&value==DataBase.quizData[qnum]["answer"]?
                Colors.green:
                value==index&&value!=DataBase.quizData[qnum]["answer"]?
                Colors.red:Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(DataBase.quizData[qnum]['options'][index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              ),
            ),
          )
          
          ),
         )
          

        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 50,right: 50,bottom: 10),
        child: InkWell(

          onTap: () {
            setState(() {
               qnum++;
               if(qnum==9){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScoreBoard(),));
               }
                // score(option);
                // print(option);
                 value=null;
            });
          },
          child: Container(
            height: 60,
           
            decoration: BoxDecoration( color: Color.fromARGB(255, 79, 163, 205),borderRadius: BorderRadius.circular(40)),
            child: Center(child: Text("Next",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ),

      )
    );
  }
}