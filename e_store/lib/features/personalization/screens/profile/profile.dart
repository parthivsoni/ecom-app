import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/theme/custom_themes/e_circular_image.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text('Profile', style: Theme.of(context).textTheme.headlineMedium,),
      ),

      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // Profile Picture
                    const ECircularImage(image: EImages.clothIcon, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture', style: TextStyle(fontSize: 15),)),
              
                  ],
                ),
              ),
              // Details
              const SizedBox(height: ESizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox(height: ESizes.spaceBtwItems),
              const ESectionHeading(title: 'Profile Information',showActionButton: false,),
              const SizedBox(height: ESizes.spaceBtwItems,),

              EProfileMenu(onPressed: () { },title: 'Name',value: 'Coding with Us',),
              EProfileMenu(onPressed: (){}, title: 'UserName', value: 'Shruti Parthiv'),

               //Heading Personal Info
               const ESectionHeading(title: 'Personal Information',showActionButton: false,),
               const SizedBox(height: ESizes.spaceBtwItems,),


               EProfileMenu(onPressed: (){}, title: 'User Id', value: '3453w4'),
               EProfileMenu(onPressed: (){}, title: 'E-mail', value: 'parthiv@gmail.com'),
               EProfileMenu(onPressed: (){}, title: 'Phone Number', value: '8353803310'),
               EProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
               EProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '20 Feb. 2003'),
               
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Close Account',style: TextStyle( color: Colors.red, fontSize: 15),),),
              )

            ],
          ),
        
        ),
      ),
    );
  }
}

