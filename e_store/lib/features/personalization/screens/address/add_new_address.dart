import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          "Add new Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: "Name"),
                ),
                SizedBox(
                  height: ESizes.spaceBtwInputFeilds,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: "Phone Number"),
                ),
                SizedBox(
                  height: ESizes.spaceBtwInputFeilds,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.building_31),
                            labelText: "Street"),
                      ),
                    ),
                    SizedBox(width: ESizes.spaceBtwInputFeilds,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: "Postle code"),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ESizes.spaceBtwInputFeilds,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: "City"),
                      ),
                    ),
                    SizedBox(width: ESizes.spaceBtwInputFeilds,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: "State"),
                      ),
                    )
                  ],
                ),
                 SizedBox(
                  height: ESizes.spaceBtwInputFeilds,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.global),
                      labelText: "Country"),
                ),
                SizedBox(
                  height: ESizes.defaultSpace,
                ),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text("Save"),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
