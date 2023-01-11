// ignore_for_file: unused_import
// ignore_for_file: 
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class {{controllername.pascalCase()}}Controller extends GetxController{

//  RxList<ExampleModel> exampleList = <ExampleModel>[].obs;

  Future getDataFromGrapql() async {
    try {
      await EndpointService.to
          .grahqlServiceAdmin('pass query string here')
          .then((value) {
        List<dynamic> data = value['enum_symptoms'];
        // exampleList(data
        //     .map(
        //       (item) => ExampleModel.fromJson(item),
        //     )
        //     .toList());
      });
    } catch (e) {
      debugPrint(e.toString());
    }
    // return exampleList;
  }

doAnyInitFun(value){
  //do any function here
}

  @override
  void onInit() async {
    await getDataFromGrapql().then((value) => doAnyInitFun(value));
    super.onInit();
  }
}
