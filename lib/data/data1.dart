import 'package:ecomapp_demo/model/best_selling_model.dart';
import 'package:ecomapp_demo/model/topcategories_model.dart';
import 'package:ecomapp_demo/model/trending_model.dart';


List<TrendingModel> getTrendingData(){
  List<TrendingModel> trendingData = new List();
  TrendingModel trendingModel=new TrendingModel();

  trendingModel.imgAssetPath="images/happybirthday_card.png";
  trendingModel.prize="\$30";
  trendingModel.productName="Happy Birthday Cards";
  trendingModel.storeName="Card Factory";
  trendingModel.starRating=3;
  trendingModel.noOfPeopleRated=301;
  trendingData.add(trendingModel);
  trendingModel = new TrendingModel();

  trendingModel.imgAssetPath="images/mothersday_card.png";
  trendingModel.prize="\$35";
  trendingModel.productName="Mother's Day Cards";
  trendingModel.storeName="Archies Gallery";
  trendingModel.starRating=2;
  trendingModel.noOfPeopleRated=541;
  trendingData.add(trendingModel);
  trendingModel = new TrendingModel();

  trendingModel.imgAssetPath="images/valentineday_card.png";
  trendingModel.prize="\$20";
  trendingModel.productName="Valentine's Day Cards";
  trendingModel.storeName="Card Factory";
  trendingModel.starRating=2;
  trendingModel.noOfPeopleRated=101;
  trendingData.add(trendingModel);
  trendingModel = new TrendingModel();

  return trendingData;
}

List<BestSellingModel> getBestSellingData(){
  List<BestSellingModel> bestSellingData = new List();
  BestSellingModel bestSellingModel = new BestSellingModel();

  bestSellingModel.imgAssetPath="images/giftcard.png";
  bestSellingModel.price="\$20";
  bestSellingModel.title="Special Gift Card";
  bestSellingModel.starRating = 5;
  bestSellingModel.noOfPeopleRated=95;

  bestSellingData.add(bestSellingModel);
  bestSellingModel=new BestSellingModel();

  bestSellingModel.imgAssetPath="images/employeecard.png";
  bestSellingModel.price="\$25";
  bestSellingModel.title="Employee Gift Card";
  bestSellingModel.starRating = 4;
  bestSellingModel.noOfPeopleRated=84;

  bestSellingData.add(bestSellingModel);
  bestSellingModel=new BestSellingModel();

  bestSellingModel.imgAssetPath="images/discountcard.png";
  bestSellingModel.price="\$10";
  bestSellingModel.title="Special Discount Card";
  bestSellingModel.starRating = 3;
  bestSellingModel.noOfPeopleRated=44;

  bestSellingData.add(bestSellingModel);
  bestSellingModel=new BestSellingModel();

  bestSellingModel.imgAssetPath="images/spacard.png";
  bestSellingModel.price="\$15";
  bestSellingModel.title="Spa Discount Card";
  bestSellingModel.starRating = 4;
  bestSellingModel.noOfPeopleRated=101;

  bestSellingData.add(bestSellingModel);
  bestSellingModel=new BestSellingModel();

  return bestSellingData;
}




List<TopCategoriesModel> getTopCategoriesData(){
  List<TopCategoriesModel> topCategories = new List();
  TopCategoriesModel topCategoriesModel=new TopCategoriesModel();

  topCategoriesModel.imgAssetPath="images/gift.png";
  topCategoriesModel.color1="0xff8EA2FF";
  topCategoriesModel.color2="0xff557AC7";
  topCategoriesModel.label = "Gift";

  topCategories.add(topCategoriesModel);
  topCategoriesModel = new TopCategoriesModel();

  topCategoriesModel.imgAssetPath="images/chocolate.png";
  topCategoriesModel.color1="0xff8EA2FF";
  topCategoriesModel.color2="0xff557AC7";
  topCategoriesModel.label = "Chocolates";

  topCategories.add(topCategoriesModel);
  topCategoriesModel = new TopCategoriesModel();

  topCategoriesModel.imgAssetPath="images/softtoy.png";
  topCategoriesModel.color1="0xff8EA2FF";
  topCategoriesModel.color2="0xff557AC7";
  topCategoriesModel.label = "Soft Toy";

  topCategories.add(topCategoriesModel);
  topCategoriesModel = new TopCategoriesModel();

  topCategoriesModel.imgAssetPath="images/flowers.png";
  topCategoriesModel.color1="0xff8EA2FF";
  topCategoriesModel.color2="0xff557AC7";
  topCategoriesModel.label = "Flowers";

  topCategories.add(topCategoriesModel);
  topCategoriesModel = new TopCategoriesModel();

  return topCategories;
}