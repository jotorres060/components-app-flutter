import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Flutter', imageUrl: 'https://www.syncfusion.com/blogs/wp-content/uploads/2019/12/Flutter_Trends_and_Community_Updates_Social.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Laravel', imageUrl: 'https://laravelnews.imgix.net/images/laravel-featured.png?ixlib=php-3.3.1'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Angular', imageUrl: 'https://codigoonclick.com/wp-content/uploads/2018/03/Conoce-Angular.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Spring', imageUrl: 'https://res.cloudinary.com/practicaldev/image/fetch/s--zrUJwvgZ--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/bupbqc9fctvw4j7r14it.png'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://tecnoticias.net/wp-content/uploads/2021/02/mongodb-atlas-google-cloud-partnership-nosql-databases-integrations-2.jpg'),
          SizedBox(height: 100)
        ],
      )
    );
  }

}
