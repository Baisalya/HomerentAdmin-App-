
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with TickerProviderStateMixin {
  var  images={
    "home1.jpg":"home",
    "hotel.jpg":"hotel",
    "appartment.jpg":"appartment",
    "mrghall.jpg":"resort"
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 3,vsync:this );
    return Scaffold(
/*        appBar: AppBar(
          elevation:0,
          backgroundColor:Colors.white,
          title: const Center(
              child:Text("")),
        ),
        drawer: MyDrawer()*/
    body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 70,left: 10),
          /**created  drawer  and a logo **/
          child:Row(
            children: [
              Icon(Icons.menu_rounded,color:Colors.black,),
              Expanded(child: Container(),),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:Colors.grey.withOpacity(0.5)
                ),

              ),
            ],
          ),
        ),
        const SizedBox(height: 40,),
        /**Discover Text **/
        Container(
          margin: const EdgeInsets.only(left:20),
            child: Text("Discover",style: GoogleFonts.recursive(fontSize: 25,fontWeight:FontWeight.bold,letterSpacing:1),)
        ),
        const SizedBox(height: 30,),
        /**Tab bar **/
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 25,right: 25),
              labelColor:Colors.black,
              isScrollable:true,
              unselectedLabelColor:Colors.grey,
              controller: _tabController,
             indicatorSize: TabBarIndicatorSize.label,
              indicator:CircleTabIndicator(color: Colors.blueAccent, radius: 4),
              tabs: [
              Tab(text: "To-let",),
              Tab(text: "Hotel",),
              Tab(text: "Hostel",),
            ],),
          ),
        ),
        /**Tabbar View **/
        Container(
          height: 300,
          width: double.maxFinite,//available width given
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount:3,
                scrollDirection:Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  //container box
                  return  Container(
                    margin: const EdgeInsets.only(right: 10,top: 10,left:5),
                    width:200,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,
                        image: DecorationImage(
                            image: AssetImage("Assets/homebg.jpeg"),
                            fit:BoxFit.cover
                        )
                    ),
                  );
                },

              ),
              Text("data"),
              Text("data"),
            ],
          ),
        ),
        /** Explore more Row**/
        Container(
          margin:const EdgeInsets.only(left:10,right: 20,top: 20),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(left:20),
                  child: Text("Explore more",style: GoogleFonts.recursive(fontSize: 18,fontWeight:FontWeight.bold),),
              ),
              Container(
                margin: const EdgeInsets.only(left:20),
                child: Text("Show all",style: GoogleFonts.recursive(fontSize: 15,fontWeight:FontWeight.bold,letterSpacing:1,color:Colors.blueAccent),),
              ),

            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height:100,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left:20),

          child:ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_,index){

                return Container(
                  margin: const EdgeInsets.only(right:30),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                       // margin: const EdgeInsets.only(right: 50),
                        width:80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          //  boxShadow:,
                            color:Colors.white,
                            image: DecorationImage(
                                //image: AssetImage('Assets/hotel.jpg'),
                                image: AssetImage("img/"+images.keys.elementAt(index)),
                                fit:BoxFit.cover,
                              scale: 1.0
                            ),
                        ),

                      ),
                      Container(
                        margin: const EdgeInsets.only(right:1),
                        child: Text(images.values.elementAt(index)),
                      ),
                    ],
                  ),
                );
              }),
        ),
        /** Explore more Row
        Container(
          margin:const EdgeInsets.only(left:10,right: 20,top: 20),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left:20),
                child: Text("Homes guests love",style: GoogleFonts.recursive(fontSize: 18,fontWeight:FontWeight.bold),),
              ),
              Container(
                margin: const EdgeInsets.only(left:20),
                child: Text("Show all",style: GoogleFonts.recursive(fontSize: 15,fontWeight:FontWeight.bold,letterSpacing:1,color:Colors.blueGrey),),
              ),

            ],
          ),
        ),**/
      ],
    ),
    );

  }
}

class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback ?onChanged]) {
    // TODO: implement createBoxPainter
    return _Circlepainter(color:color,radius:radius);
  }

}
class _Circlepainter extends BoxPainter{
  final Color color;
  double radius;
  _Circlepainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset,
      ImageConfiguration configuration) {
    Paint _paint=Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleoffset=Offset(configuration.size!.width/2 -radius/2,configuration.size!.height-1);//its for middle
    canvas.drawCircle(offset+circleoffset, radius, _paint);
    // TODO: implement paint
  }

}