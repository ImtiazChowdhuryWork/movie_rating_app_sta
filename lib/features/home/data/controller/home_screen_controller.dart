
import 'package:get/get.dart';
import 'package:movie_rating_application/helper/logger_util.dart';

class HomeScreenController extends GetxController {


  ///-------->>> Section : In The Spotlight
  RxString trendingTabSelectedCategoryType = ''.obs;
  RxString popularTabSelectedCategoryType = ''.obs;
  RxString recentlyAddedTabSelectedCategoryType = ''.obs;

  ///------->>> Section : Clear Selected Category Type
  ///------->>> For Trading Tab 
  void clearTrendingTabSelectedCategoryType(){
    trendingTabSelectedCategoryType.value = '';
  }

  ///------->>> For Popular Tab 
  void clearPopularTabSelectedCategoryType(){
    popularTabSelectedCategoryType.value = '';
  }


  ///------->>> For Recently Added Tab 
  void clearRecentlyAddedTabSelectedCategoryType(){
    recentlyAddedTabSelectedCategoryType.value = '';
  }



  ///------->>> Section : Set Selected Category Type
  ///------->>> For Trending Tab 
  void setTendingTabSelectedCategoryType({required String categoryName}){
    if(trendingTabSelectedCategoryType.value.isNotEmpty){
      clearTrendingTabSelectedCategoryType();
      trendingTabSelectedCategoryType.value = categoryName;
      LoggerUtils.debug("Trending Tab Selected Category Name : ${trendingTabSelectedCategoryType.value}");
    }else{
      trendingTabSelectedCategoryType.value = categoryName;
      LoggerUtils.debug("Trending Tab Selected Category Name : ${trendingTabSelectedCategoryType.value}");
    }
  }


  ///------->>> For Popular Tab 
  void setPopularTabSelectedCategoryType({required String categoryName}){
    if(popularTabSelectedCategoryType.value.isNotEmpty){
      clearPopularTabSelectedCategoryType();
      popularTabSelectedCategoryType.value = categoryName;
      LoggerUtils.debug("Popular Tab Selected Category Name : ${popularTabSelectedCategoryType.value}");
    }else{
      popularTabSelectedCategoryType.value = categoryName;
      LoggerUtils.debug("Popular Tab Selected Category Name : ${popularTabSelectedCategoryType.value}");
    }
  }


  ///------->>> For Recently Added Tab 
  void setRecentlyAddedTabSelectedCategoryType({required String categoryName}){
    if(recentlyAddedTabSelectedCategoryType.value.isNotEmpty){
      clearRecentlyAddedTabSelectedCategoryType();
      recentlyAddedTabSelectedCategoryType.value = categoryName;
      LoggerUtils.debug("Recently Added Tab Selected Category Name : ${recentlyAddedTabSelectedCategoryType.value}");
    }else{
      recentlyAddedTabSelectedCategoryType.value = categoryName;
      LoggerUtils.debug("Recently Added Tab Selected Category Name : ${recentlyAddedTabSelectedCategoryType.value}");
    }
  }
  
}
