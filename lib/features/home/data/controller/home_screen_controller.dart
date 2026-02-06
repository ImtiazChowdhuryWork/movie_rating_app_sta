import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_rating_application/helper/logger_util.dart';

class HomeScreenController extends GetxController {


  ///-------->>> Section : In The Spotlight
  RxString selectedCategoryType = ''.obs;

  ///------->>> Section : Clear Selected Category Type
  void clearSelectedCategoryType(){
    selectedCategoryType.value = '';
  }


  ///------->>> Section : Set Selected Category Type
  void setSelectedCategoryType({required String categoryName}){
    if(selectedCategoryType.value.isNotEmpty){
      clearSelectedCategoryType();
      selectedCategoryType.value = categoryName;
      LoggerUtils.debug("Selected Category Name : ${selectedCategoryType.value}");
    }else{
      selectedCategoryType.value = categoryName;
      LoggerUtils.debug("Selected Category Name : ${selectedCategoryType.value}");
    }
  }
  
}
