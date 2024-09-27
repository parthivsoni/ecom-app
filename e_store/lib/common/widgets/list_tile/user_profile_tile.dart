
import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({
    super.key,required this.onPressed
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        child: CircleAvatar(
          radius: 20,
        ),
      ),
      // leading: ECircularImage(image:EImages.user,width:50,height:50,padding:0),
      title: Text('Shruti & Parthiv',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: EColors.white)),
      subtitle: Text('2.5 years together',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: EColors.white)),
              trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit,color: EColors.white,)),
    );
  }
}
