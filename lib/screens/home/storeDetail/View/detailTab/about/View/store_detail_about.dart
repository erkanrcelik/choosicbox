import 'package:choosicbox/utils/ui/card/store_detail_feature_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreDetailAboutView extends StatelessWidget {
  const StoreDetailAboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Açıklama',
            style: Theme.of(context).textTheme.bodyLarge
          ),
          SizedBox(height: 10.h),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu amet tempor, in massa, habitasse habitasse fermentum, sed faucibus. Augue arcu, ac proin accumsan urna morbi diam nunc, tincidunt. Ac turpis amet vitae dui aliquam vitae nunc. Non enim, lorem duis maecenas odio Read More',
              style: Theme.of(context).textTheme.labelSmall
          ),
          SizedBox(height: 20.h),
          Text(
              'Fotoğraflar',
              style: Theme.of(context).textTheme.bodyLarge
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: NetworkImage('https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          image: NetworkImage('https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          image: NetworkImage('https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          image: NetworkImage('https://www.meyhankoli.com/img/places/source_seo/mylos-ayvalik-cunda-mutfagi-201911140417411.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
              'Müzik Kategorileri',
              style: Theme.of(context).textTheme.bodyLarge
          ),
          SizedBox(height: 10.h),
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              StoreDetailFeatureCard(title: 'Arabesk Müzik',),
              StoreDetailFeatureCard(title: 'Arabesk Müzik',),
              StoreDetailFeatureCard(title: 'Arabesk Müzik',),
              StoreDetailFeatureCard(title: 'Arabesk Müzik',),
            ],
          ),
          SizedBox(height: 20.h),
          Text(
              'Konsept',
              style: Theme.of(context).textTheme.bodyLarge
          ),
          SizedBox(height: 10.h),
          Wrap(
            spacing: 10.w,
            runSpacing: 10.h,
            children: [
              StoreDetailFeatureCard(title: 'Alkollü Mekan',),
              StoreDetailFeatureCard(title: 'Alkollü Mekan',),
              StoreDetailFeatureCard(title: 'Alkollü Mekan',),
            ],
          ),
        ],
      ),
    );
  }
}
