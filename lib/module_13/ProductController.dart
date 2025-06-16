import 'dart:convert';

import 'package:ostad_batch_10/module_13/utils/urls.dart';

import 'models/productModel.dart';
import 'package:http/http.dart' as http;
class Productcontroller{
  List<Data> products = [];

  Future<void> fetchProducts() async{
    final response = await http.get(Uri.parse(Urls.readProduct));
    
    print(response.statusCode);
    
    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      productModel model = productModel.fromJson(data);
      products = model.data ?? [];
    }
  }



  Future<bool> DeleteProducts(String productId) async{
    final response = await http.get(Uri.parse(Urls.deleteProduct(productId)));

    print(response.statusCode);

    if(response.statusCode == 200){
      fetchProducts();
    return true;
    }else{
      return false;
    }
  }
}