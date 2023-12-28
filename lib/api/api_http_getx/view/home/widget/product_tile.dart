import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:project/api/api_http_getx/model/product_model.dart';

class Producttile extends StatelessWidget {
  final Products product;
  Producttile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 180,
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl: product.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            maxLines: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Text("${product.price}"),
          SizedBox(
            height: 10,
          ),
          Text("${product.rating?.rate}")
        ],
      ),
    );
  }
}
