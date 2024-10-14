import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          "Reviews & Ratings",
          style: TextStyle(fontSize: 18),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Ratings and reviews are verified and are from people who use the same type of devce that you use."),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              /// overall Product ratings
              EOverallProductRating(),
              SizedBox(height: 10,),
              ERatingBarIndicator(rating: 4.2,),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),

              SizedBox(height: 10,),
              /// user reviews list
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}

