import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsActivty extends StatefulWidget{
  const DetailsActivty({super.key});

  @override
  State<DetailsActivty> createState() => _DetailsActivity();
}

class _DetailsActivity extends State<DetailsActivty>{

  List<String> imagePaths = [
    "assets/images/sn1.jpg",
    "assets/images/sn2.jpg",
    "assets/images/sn3.png",
    "assets/images/sn4.jpg",
    "assets/images/sn5.jpg",
  ];

  final List _data =[
    {"text": "Us 6"},
    {"text": "Us 5"},
    {"text": "Us 4"},
    {"text": "Us 3"},
    {"text": "Us 9"},

  ];
  final List _selectedIndexs=[];
  bool isFavorite = false;
  int selectedColorIndex = -1; // -1 indicates no color selected

  List<Color> availableColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.purple,
  ];

  //final CarouselController carouselController = CarouselController();
  int myCurrentIndex = 0;
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context){
    return    Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      body: /*Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Card(child: Container(width: 40,height: 40,child: Icon(Icons.arrow_back_ios,))),
              Card(child: Container(width: 40,height: 40,child: Icon(Icons.favorite_border,))),

            ],),
          ),
          Spacer(),
          Container(
            height: 430,
            decoration: const
            BoxDecoration(color: Colors.black12,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
            child:  Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(children: [
                    Text("Nike Air Max 200     ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                    Text('\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.deepOrange),),
                    Text("240.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                  ],),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Align(alignment: Alignment.centerRight,child: Icon(Icons.star)),
                ),
                const Text("Available Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                Container(margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index){
                      final _isSelected=_selectedIndexs.contains(index);
                      final data = _data[index];
                      return Ink(
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black12),
                                borderRadius: BorderRadius.circular(6),
                                color: _isSelected?Colors.red:Colors.black12,
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                                //Icon(data["icon"]),

                                Text(data["text"],style: TextStyle(fontWeight: FontWeight.bold),)
                              ]),
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(_isSelected){
                                _selectedIndexs.remove(index);

                              }else{
                                _selectedIndexs.add(index);

                              }
                              //_containerColor = Colors.redAccent;
                            });
                          },
                        ),
                      );
                    },

                    scrollDirection: Axis.horizontal,


                  ),),
                const Text("Color",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                Container(margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 20,
                  child: ListView.builder(
                    itemCount: _color.length,
                    itemBuilder: (BuildContext context, int index){
                      final _isSelected=_selectedIndexs.contains(index);
                      final color = _color[index];
                      return Ink(
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.black12),
                                borderRadius: BorderRadius.circular(10),
                                color: color,
                              ),

                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(_isSelected){
                                _selectedIndexs.remove(index);

                              }else{
                                _selectedIndexs.add(index);

                              }
                              //_containerColor = Colors.redAccent;
                            });
                          },
                        ),
                      );
                    },

                    scrollDirection: Axis.horizontal,


                  ),),
              ]),
            ),
          )


          //slider


          *//*Column(
            children: [
              CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 110,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                    const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(seconds: 4),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        myCurrentIndex = index;
                      });
                    },
                  ),
                  items: myitemsList),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: AnimatedSmoothIndicator(
                  activeIndex: myCurrentIndex,
                  count: myitemsList.length,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5,
                    dotColor: Color(0xFFCED1D7),
                    activeDotColor: Color(0xFF17609A),
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              )
            ],
          )*//*
        ],
      )*/
      SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 800,
            ),
            // Product Image
            Positioned(
              top: 05,
              left: 0,
              right: 0,
              child: SizedBox(
                /*decoration: const
                BoxDecoration(color: Colors.redAccent,
                    ),*/
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  imagePaths[selectedImageIndex],
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Back Button
            Positioned(
              top: 40,
              left: 10,
              child: Card(
                color: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Colors.black45, // Ash color border
                    width: 1,
                  ),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),

            // Favorites Button
            Positioned(
              top: 40,
              right: 10,
              child: Card(
                color: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ),
            ),

            // Image Slider
            Positioned(
              top: 220,
              left: 10,
              right: 10,
              child: Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < imagePaths.length; i++)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedImageIndex = i;
                          });
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: selectedImageIndex == i
                                  ? Colors.orange
                                  : Colors.grey,
                              width: 1.5,
                            ),
                          ),
                          child: Image.asset(
                            imagePaths[i],
                            height: 70,
                            width: 70,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            //name + availabe size
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 0,
              right: 0,
              child: Container(
                child: Card(color: Colors.white,elevation: 1,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(children: [
                          Text("Nike Air Max 200     ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                          Text('\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.deepOrange),),
                          Text("240.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                        ],),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 40,bottom: 10),
                        child: Align(alignment: Alignment.centerRight,child: Icon(Icons.star)),
                      ),
                      const Text("Available Size",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                      Container(margin: const EdgeInsets.symmetric(vertical: 20),
                        height: 50,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index){
                            final _isSelected=_selectedIndexs.contains(index);
                            final data = _data[index];
                            return Ink(
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: Colors.black12),
                                      borderRadius: BorderRadius.circular(6),
                                      color: _isSelected?Colors.red:Colors.white,
                                    ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                                      //Icon(data["icon"]),
                                      Text(data["text"],style: const TextStyle(fontWeight: FontWeight.bold),)
                                    ]),
                                  ),
                                ),
                                onTap: (){
                                  setState(() {
                                    if(_isSelected){
                                      _selectedIndexs.remove(index);
                                    }else{
                                      _selectedIndexs.add(index);
                                    }
                                  });
                                },
                              ),
                            );
                          },
                          scrollDirection: Axis.horizontal,
                        ),),

                      const Text(
                        'Color',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 10,
                        children: List.generate(
                          availableColors.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedColorIndex = index;
                              });
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: availableColors[index],
                                border: Border.all(
                                  color: selectedColorIndex == index
                                      ? Colors.white24
                                      : Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              child: selectedColorIndex == index
                                  ? const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 12,
                              )
                                  : null,
                            ),
                          ),
                        ),
                      ),

                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Inspired by the energy and patterns born from the Earth—like the flow of clouds and rush of wind—the Nike Air Max 200 SE radiates cool while providing extreme comfort with its extra-tall Air unit. Super breathable and durable ripstop fabric on the upper combines with exposed zigzag stitching for an added edge.',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),

                    ]),
                  ),
                ),
              ),
            ),

            // Product Details Container
            /*Positioned(
              top: MediaQuery.of(context).size.height * 0.74,
              left: 0,
              right: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Add more product details here as needed
                  ],
                ),
              ),
            ),



            // Color Section
            Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}