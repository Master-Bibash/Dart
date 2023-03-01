import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profile extends StatelessWidget {

  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text("Profile"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
                color: Theme.of(context).primaryColor,
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/pic.jpg"),
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  Text(
                    "Bibash karki",
                    style: TextStyle(
                        color: Color.fromARGB(255, 225, 220, 220),
                        fontSize: 23),
                  ),
                  Text(
                    "Flutter developer",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 19, 234)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Age"), Text("21")],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [Text("Id"), Text("2121221")],
                  ),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 40,
              // color: Colors.red,
              child: InkWell(
                splashColor: Colors.red,
                onTap: () {},
                child: Text(
                  "click me",
                  style: TextStyle(color: Color.fromARGB(255, 21, 20, 20)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("i am clicked ",textAlign: TextAlign.center,),duration: Duration(seconds: 1),
              ),
              
              );
            }, child: Text("click me",),
            
            ),
         ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(
              "cleared",
            ),
            duration: Duration(seconds: 1),
            )
          );
         }, child: Text("cleared"),
         
         
         
         ),
         ElevatedButton(onPressed: (){
          Navigator.pop(context);
         },
          child: Text("first page"), )
            
          ],
        ));
  }
}
