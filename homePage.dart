import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
              // expandedHeight: 350,
              flexibleSpace: Stack(
                children:[ 
                  Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,

                  child: Text('Instagram',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: Colors.white,fontStyle:FontStyle.italic ),),
                ),
                  Positioned(
                    top: 10,
                      right: 70,
                      child: Icon(Icons.favorite_border,color: Colors.white,)
                  ),
                  Positioned(
                    top: 10,
                      right: 30,
                      child: Icon(Icons.messenger_outline,color: Colors.white,))
        ]
              ),
            



          ),

          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*2.7,
              // color: Colors.lightGreenAccent,
              child: Column(
                children: [Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(fit:BoxFit.fill,
                                  image: AssetImage('assets/selena.jpg')),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(80),
                            border: Border.all(width: 3,color: Colors.red)
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                            child: Text('My story',style: TextStyle(color: Colors.white),)
                        )
                      ],
                    ),

                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(fit:BoxFit.fill,
                                  image: AssetImage('assets/rahman.jpg')),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(width: 3,color: Colors.red)
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text('AR rahman',style: TextStyle(color: Colors.white),)
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(fit:BoxFit.fill,
                                  image: AssetImage('assets/lipaa.webp')),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(width: 3,color: Colors.red)
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text('dua',style: TextStyle(color: Colors.white),)
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(fit:BoxFit.fill,
                                  image: AssetImage('assets/tylor.jpg')),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(width: 3,color: Colors.red)
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text('tylor',style: TextStyle(color: Colors.white),)
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(fit:BoxFit.fill,
                                  image: AssetImage('assets/Rappp.jpg')),
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(width: 3,color: Colors.red)
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text('RM',style: TextStyle(color: Colors.white),)
                        )
                      ],
                    ),

                  ],
                ),

                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.1,color: Colors.white)
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(fit: BoxFit.fill,
                            image: AssetImage('assets/lipaa.webp')),
                            border: Border.all(width: 2,color: Colors.red)

                          ),

                        ),
                        Text('dua lipa',style: TextStyle(color: Colors.white),),
                        Container(
                          margin: EdgeInsets.only(left: 370),
                            child: Icon(Icons.more_vert,color: Colors.white,))
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.fill,
                          image: AssetImage('assets/lipa.webp'))
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                        child: Icon(Icons.account_circle_sharp)),


                  ),
                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: 40,

                    decoration: BoxDecoration(
                        color: Colors.black,
                      border: Border.all(width: 0.05,color: Colors.white)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 26,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.mode_comment_outlined,color: Colors.white,size: 26,),
                        ),
                        Icon(Icons.schedule_send_rounded,color: Colors.white,size: 26,),
                        Container(
                          // color: Colors.amber,
                          margin: EdgeInsets.only(left: 375),
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 26,))

                      ],

                    ),

                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Text('1098 likes',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)),
                  Align(
                    alignment: Alignment.bottomLeft,
                      child: Text('dua lipa Met Gala 2023,\nTankyou @claudiaschiffer for the iconic bridal Tweed Gown',style: TextStyle(color: Colors.white),)),
                  Align(
                    alignment: Alignment.bottomLeft,
                      child: Text('view all 987 comments',style: TextStyle(color: Colors.grey,fontSize: 13),)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('2 hours ago',style: TextStyle(color: Colors.grey,fontSize: 11),)),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black38,
                    child: Column(
                      children: [
                        SizedBox(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text('suggested for you',style:
                            TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text('see All',style:
                          TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 15),),
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 240,
                                width: 150,

                                decoration: BoxDecoration(
                                    color: Colors.black,
                                  border: Border.all(width: 0.4,color: Colors.white)
                                ),


                                child: Column(
                                  children: [
                                    // Align(
                                    //   alignment:Alignment.topRight,
                                    //     child: Icon(Icons.cancel_outlined,color: Colors.grey,size: 15,)),

                                    Container(
                                      margin: EdgeInsets.all(14),
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(110),
                                    image: DecorationImage(fit: BoxFit.fill,
                                        image: AssetImage('assets/charlie.jpg')),
                                  )
                                    ),
                                    Text('charlie_puth',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(9),

                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              image: DecorationImage(fit: BoxFit.fill,
                                                  image: AssetImage('assets/Rappp.jpg')

                                              ),

                                            ),

                                        ),
                                        Text('Followed by RM',style: TextStyle(color: Colors.grey,fontSize:12),),
                                      ],

                                    ),
                                    Container(
                                      height: 27,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(7)
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                          child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                                    )

                                  ],
                                ),
                              ),
                              //contain above
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 240,
                                width: 150,

                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(width: 0.4,color: Colors.white)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(14),
                                        height: 110,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(110),
                                          image: DecorationImage(fit: BoxFit.fill,
                                              image: AssetImage('assets/suga.png')),
                                        )
                                    ),
                                    Text('Min yongi',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(9),

                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(fit: BoxFit.fill,
                                                image: AssetImage('assets/dua.jpg')

                                            ),

                                          ),

                                        ),
                                        Text('Followed by dua ',style: TextStyle(color: Colors.grey,fontSize:12),),
                                      ],

                                    ),
                                    Container(
                                      height: 27,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(7)
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                                    )

                                  ],
                                ),
                              ),
                              //contain above
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 240,
                                width: 150,

                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(width: 0.4,color: Colors.white)
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(14),
                                        height: 110,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(110),
                                          image: DecorationImage(fit: BoxFit.fill,
                                              image: AssetImage('assets/nick.jpg')),
                                        )
                                    ),
                                    Text('Nick minaj',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(9),

                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            image: DecorationImage(fit: BoxFit.fill,
                                                image: AssetImage('assets/tylor.jpg')

                                            ),

                                          ),

                                        ),
                                        Text('Followed by tylor',style: TextStyle(color: Colors.grey,fontSize:12),),
                                      ],

                                    ),
                                    Container(
                                      height: 27,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(7)
                                      ),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text('Follow',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),)),
                                    )

                                  ],
                                ),
                              ),

                            )
                          ],
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1,color: Colors.white)
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(fit: BoxFit.fill,
                                  image: AssetImage('assets/tylor.jpg')),
                              border: Border.all(width: 2,color: Colors.red)

                          ),

                        ),
                        Text('tylor',style: TextStyle(color: Colors.white),),
                        Container(
                            margin: EdgeInsets.only(left: 370),
                            child: Icon(Icons.more_vert,color: Colors.white,))
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fill,
                            image: AssetImage('assets/swiftt.jpg'))
                    ),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(Icons.account_circle_sharp)),

                  ),

                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: 40,

                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(width: 0.05,color: Colors.white)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white,size: 26,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.mode_comment_outlined,color: Colors.white,size: 26,),
                        ),
                        Icon(Icons.schedule_send_rounded,color: Colors.white,size: 26,),
                        Container(
                          // color: Colors.amber,
                            margin: EdgeInsets.only(left: 375),
                            child: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 26,))

                      ],

                    ),

                  ),

                  Align(
                      alignment: Alignment.topLeft,
                      child: Text('2898 likes',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('tylor Its a Love story baby, just  yes',style: TextStyle(color: Colors.white),)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('view all 2098 comments',style: TextStyle(color: Colors.grey,fontSize: 13),)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('4 hours ago',style: TextStyle(color: Colors.grey,fontSize: 11),)),







                ],


              ),

            ),

          ),

          
        ],

      ),
    );
  }
}
