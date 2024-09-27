import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EGridLayout extends StatelessWidget {
  const EGridLayout({
    super.key, 
    required this.itemCount, 
    this.mainAxisExtent = 288, 
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: ESizes.gridViewSpacing,
          crossAxisSpacing: ESizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent,
          ),
      itemBuilder: itemBuilder,
    );
  }
}
