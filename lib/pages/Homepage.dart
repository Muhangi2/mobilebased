import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarr(),
      body: Column(
         children: [
          Container(
            decoration:BoxDecoration(
              //it was green color
              // color:Color.fromARGB(255, 52, 187, 11),
              boxShadow:[
                BoxShadow(
                 color:Color(0xff).withOpacity(0.11),
                 blurRadius: 40,
                 spreadRadius: 0.0
                )
              ]
            ),
            margin:EdgeInsets.only(top:40,left: 20,right: 40),
            child: TextField(           
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset("icons/Search.svg"),
                ),
                hintText: "Search food",
                suffixIcon: Container(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color:Colors.black,
                          thickness: 0.1,
                          indent:10,
                          endIndent: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset("icons/Filter.svg"),
                        ),
                      ],
                    ),
                  ),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                )
              ),
            )
            )
         ],
      ),
    );
  }

  AppBar AppBarr() {
    return AppBar(
      leading: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: SvgPicture.asset('icons/arrowleft.svg',width: 20,height: 20,),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
   actions: [
    GestureDetector(
      onTap: (){
        
      },
      child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          width: 37,
          child: SvgPicture.asset('icons/arrowleft.svg',width: 20,height: 20,),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
    ),

   ],

      backgroundColor: Color.fromARGB(255, 184, 196, 17),
      elevation: 0,
      centerTitle: true,
      title: Text("Breakfast",
      style: TextStyle(
        color: Colors.black,
       fontSize: 18,
       fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}