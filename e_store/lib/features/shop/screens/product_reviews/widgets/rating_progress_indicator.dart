import 'package:e_store/features/shop/screens/product_reviews/widgets/progress_indicator_and_ratings.dart';
import 'package:flutter/material.dart';

class EOverallProductRating extends StatelessWidget {
  const EOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.8",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              ERatingProgressIndicator(
                value: 1.0,
                text: "5",
              ),
              ERatingProgressIndicator(
                value: 0.8,
                text: "4",
              ),
              ERatingProgressIndicator(
                value: 0.6,
                text: "3",
              ),
              ERatingProgressIndicator(
                value: 0.4,
                text: "2",
              ),
              ERatingProgressIndicator(
                value: 0.2,
                text: "1",
              ),
            ],
          ),
        )
      ],
    );
  }
}

