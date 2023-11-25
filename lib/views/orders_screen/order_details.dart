import 'package:emart_seller/const/colors.dart';
import 'package:emart_seller/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: darkGrey,
          ),
        ),
        title: boldText(text: "Order details", color: fontGrey, size: 16.0),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(),
        ),
      ),
    );
  }
}
