import 'package:flutter/material.dart';

import '../models/productModel.dart';
class ProductCard extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final Data product;
  const ProductCard({
    super.key, required this.onEdit, required this.onDelete,required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 140,
            child: Image.network(
                height: 100,
                fit: BoxFit.cover,
                'https://i5.walmartimages.com/seo/Apple-iPhone-X-64GB-Unlocked-GSM-Phone-w-Dual-12MP-Camera-Space-Gray-B-Grade-Used_15c2b968-bb85-41a4-9292-b017f78fe797.a66ebbf32b6d53b6d6eb14c47434ac04.jpeg'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  product.productName.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'Price: ${product.unitPrice} | QTY : ${product.qty}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: onEdit, icon: Icon(Icons.edit,color: Colors.orange,)),
                SizedBox(width: 5,),
                IconButton(onPressed: onDelete, icon: Icon(Icons.delete,color: Colors.red,))
              ],
            ),
          )
        ],
      ),
    );
  }
}
