import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Home(),));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List l=[];
  String run="";
  List<bool> temp = [];
  int r=0;

  @override
  void initState() {
    l=List.filled(9, "");
    temp = List.filled(9, false);
    for(int i=0;i<9;)
    {
      run="GAME IS ON";
      r=Random().nextInt(9);
      if(!l.contains(r))
      {
        l[i]=r;
        i++;
      }

    }
    for(int i=0;i<l.length;i++)
    {
      if(l[i]==0)
      {
        l[i]="";
      }
    }
    setState(() {
      win();
    });
  }
  win()
  {
    if(l[0] == 1 && l[1] == 2 && l[2] == 3 && l[3] == 4 && l[4] == 5 && l[5] == 6 && l[6] == 7 && l[7] == 8)
    {
      run="GAME IS WIN.";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THE PUZZLE GAME",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          child: Text("${run}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
          alignment: Alignment.center,
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(color: Colors.grey),
        ),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[1] == "")
              {
                l[1]=l[0];
                l[0]="";
              }
              else if(l[3] == "")
              {
                l[3]=l[0];
                l[0]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[0]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[0] == "")
              {
                l[0]=l[1];
                l[1]="";
              }
              else if(l[2] == "")
              {
                l[2]=l[1];
                l[1]="";
              }
              else if(l[4] == "")
              {
                l[4]=l[1];
                l[1]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[1]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),

            ),
          )),
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[1] == "")
              {
                l[1]=l[2];
                l[2]="";
              }
              else if(l[5] == "")
              {
                l[5]=l[2];
                l[2]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[2]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
        ],)),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[0] == "")
              {
                l[0]=l[3];
                l[3]="";
              }
              else if(l[4] == "")
              {
                l[4]=l[3];
                l[3]="";
              }
              else if(l[6] == "")
              {
                l[6]=l[3];
                l[3]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[3]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[1] == "")
              {
                l[1]=l[4];
                l[4]="";
              }
              else if(l[3] == "")
              {
                l[3]=l[4];
                l[4]="";
              }
              else if(l[5] == "")
              {
                l[5]=l[4];
                l[4]="";
              }
              else if(l[7] == "")
              {
                l[7]=l[4];
                l[4]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[4]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[2] == "")
              {
                l[2]=l[5];
                l[5]="";
              }
              else if(l[4] == "")
              {
                l[4]=l[5];
                l[5]="";
              }
              else if(l[8] == "")
              {
                l[8]=l[5];
                l[5]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[5]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
        ],)),
        Expanded(child: Row(children: [
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[3] == "")
              {
                l[3]=l[6];
                l[6]="";
              }
              else if(l[7] == "")
              {
                l[7]=l[6];
                l[6]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[6]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[4] == "")
              {
                l[4]=l[7];
                l[7]="";
              }
              else if(l[6] == "")
              {
                l[6]=l[7];
                l[7]="";
              }
              else if(l[8] == "")
              {
                l[8]=l[7];
                l[7]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[7]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
          Expanded(child: InkWell(onTap: () {
            setState(() {
              if(l[5] == "")
              {
                l[5]=l[8];
                l[8]="";
              }
              else if(l[7] == "")
              {
                l[7]=l[8];
                l[8]="";
              }
            });
            win();
          },
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text("${l[8]}",style: TextStyle(fontSize: 25,color: Colors.white),),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey),
            ),
          )),
        ],)),
        Expanded(child: InkWell(onTap: () {
          setState(() {
            run="GAME IS ON.";
          });
          l=List.filled(9, "");


          for(int i=0;i<9;)
          {
            r=Random().nextInt(9);
            if(!l.contains(r))
            {
              l[i]=r;
              i++;
            }

          }
          for(int i=0;i<l.length;i++)
          {
            if(l[i]==0)
            {
              l[i]="";
            }
          }
        },

          child: Container(
            height: 100,
            width: double.infinity,
            margin: EdgeInsets.all(3),
            child: Text("RESET",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ))
      ],
      ),
    );
  }
}
