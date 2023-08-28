import 'package:flutter/material.dart';
class SecPage extends StatefulWidget {
  const SecPage({super.key});

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      bottomNavigationBar:BottomNavigationBar(

        onTap: (index){
          setState(() {
            a=index;
          });
        },
        currentIndex: a,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'post',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: 'reel',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
              icon: Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    image: DecorationImage(fit: BoxFit.fill,
                      image: AssetImage('assets/selena.jpg'),
                    )
                ),
              ),
              label: 'account',
              backgroundColor: Colors.black
          ),

        ],
      ) ,
      body:CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            flexibleSpace: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.lock,color: Colors.white,),
                      ),
                      Text('Selena_gomez',style: TextStyle(color: Colors.white,fontSize: 18),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.keyboard_arrow_up_sharp,size: 21,color: Colors.white,),
                      ),
                      Icon(Icons.add_box_outlined,size: 25,color: Colors.white,),
                      Icon(Icons.read_more_outlined,size: 25,color: Colors.white,)

                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )

    );
  }
}
