import 'package:ecomapp_demo/data/data1.dart';
import 'package:ecomapp_demo/model/trending_model.dart';
import 'package:ecomapp_demo/model/best_selling_model.dart';
import 'package:ecomapp_demo/model/topcategories_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<TrendingModel> trendingData = new List();
  List<BestSellingModel> bestSellingData = new List();
  List<TopCategoriesModel> categories = new List();

  @override
  void initState() {
    super.initState();
    trendingData = getTrendingData();
    bestSellingData = getBestSellingData();
    categories = getTopCategoriesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Material(
                    elevation: 4,
                    shadowColor: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 55,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search", border: InputBorder.none),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                              onTap: () {
                                print("you clicked search icon");
                              },
                              child: Icon(Icons.search))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Todays Trending",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "4th April",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 190,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: trendingData.length,
                        itemBuilder: (context, index) {
                          return TrendingTile(
                            imgAssetPath: trendingData[index].imgAssetPath,
                            prize: trendingData[index].prize,
                            productName: trendingData[index].productName,
                            storeName: trendingData[index].storeName,
                            starRating: trendingData[index].starRating,
                            noOfPeopleRated:
                                trendingData[index].noOfPeopleRated,
                          );
                        }),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Best Selling",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "This week",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(color: Color(0xff557AC7)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 210,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: bestSellingData.length,
                        itemBuilder: (context, index) {
                          return BestSellingTile(
                            imgAssetPath: bestSellingData[index].imgAssetPath,
                            price: bestSellingData[index].price,
                            title: bestSellingData[index].title,
                            starRating: bestSellingData[index].starRating,
                            noOfPeopleRated:
                                bestSellingData[index].noOfPeopleRated,
                          );
                        }),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top Categories",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Color(0xff000000)),
                      ),
                      Text("See all",
                          style: TextStyle(color: Color(0xff557AC7)))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return TopCategoriesTile(
                            imgAssetPath: categories[index].imgAssetPath,
                            color1: categories[index].color1,
                            color2: categories[index].color2,
                            label: categories[index].label,
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Top Categaory
class TopCategoriesTile extends StatelessWidget {
  final String label;
  String color1;
  String color2;
  String imgAssetPath;

  TopCategoriesTile({this.imgAssetPath, this.label, this.color1, this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 12),
            padding: EdgeInsets.all(8),
            height: 60,
            width: 80,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(int.parse("$color1")),
                  Color(int.parse("$color2"))
                ]),
                borderRadius: BorderRadius.circular(5)),
            child: Image.asset(imgAssetPath),

          ),
          SizedBox(
            height: 6,
          ),
          Text(label)
        ],
      ),
    );
  }
}

//Best Selling Tile
class BestSellingTile extends StatelessWidget {
  final String imgAssetPath;
  final String price;
  final String title;
  final int starRating;
  final int noOfPeopleRated;

  BestSellingTile(
      {this.imgAssetPath,
      this.price,
      this.title,
      this.starRating,
      this.noOfPeopleRated});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        margin: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  imgAssetPath,
                  width: 120,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xff8EA2FF).withOpacity(0.5),
                        const Color(0xff557AC7).withOpacity(0.5)
                      ]),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.only(top: 8, left: 8),
                  child: Text(price),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(title),
            SizedBox(
              height: 8,
            ),
            Row(
              children: <Widget>[
                RatingStars(
                  starRating: starRating,
                  heightOfStar: 13.0,
                ),
                SizedBox(
                  width: 6,
                ),
                Text("($noOfPeopleRated)")
              ],
            )
          ],
        ));
  }
}

//Trending Tile
class TrendingTile extends StatelessWidget {
  String imgAssetPath;
  String prize;
  String productName;
  String storeName;
  int starRating;
  int noOfPeopleRated;
  TrendingTile(
      {this.noOfPeopleRated,
      this.starRating,
      this.storeName,
      this.productName,
      this.prize,
      this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(3),
      shadowColor: Colors.grey.withOpacity(0.3),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: <Widget>[
            Container(
              height: 170,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.only(left: 16),
              child: Stack(children: <Widget>[
                Image.asset(
                  imgAssetPath,
                  height: 190,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(left: 8, top: 8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    const Color(0xff8EA2FF).withOpacity(0.5),
                    const Color(0xff557AC7).withOpacity(0.5)
                  ])),
                  width: 50,
                  child: Text(prize),
                )
              ]),
            ),
            SizedBox(
              width: 17,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    storeName,
                    style: TextStyle(color: Colors.black26, fontSize: 15),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: <Widget>[
                      RatingStars(starRating: starRating),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "($noOfPeopleRated)",
                        style: TextStyle(color: Colors.black26, fontSize: 15),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("you liked this product");
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: LinearGradient(colors: [
                            const Color(0xff8EA2FF),
                            const Color(0xff557AC7)
                          ])),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Rating Stars
class RatingStars extends StatelessWidget {
  int starRating;
  double heightOfStar;

  RatingStars({this.starRating, this.heightOfStar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Image.asset(
              starRating >= 1
                  ? 'images/yellowStar.png'
                  : 'images/greayStar.png',
              height: heightOfStar ?? 15.0),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            starRating >= 2 ? 'images/yellowStar.png' : 'images/greayStar.png',
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            starRating >= 3 ? 'images/yellowStar.png' : 'images/greayStar.png',
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            starRating >= 4 ? 'images/yellowStar.png' : 'images/greayStar.png',
            height: heightOfStar ?? 15.0,
          ),
          SizedBox(
            width: 2,
          ),
          Image.asset(
            starRating >= 5 ? 'images/yellowStar.png' : 'images/greayStar.png',
            height: heightOfStar ?? 15.0,
          ),
          //SizedBox(width: 4,),
        ],
      ),
    );
  }
}
