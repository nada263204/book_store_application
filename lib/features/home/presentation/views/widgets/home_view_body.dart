import 'package:book_store_application/core/utils/styles.dart';
import 'package:book_store_application/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_store_application/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ]),
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                width: 150,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/Poster.png"))),
              ),
            ),
          ),
          const SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Movie Name',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(color: Colors.white),),
              Text('sub title',
              style: Styles.textStyle16.copyWith(color: Colors.grey),),
              Text('19',
              style: Styles.textStyle20.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),            ],
          )
        ],
      ),
    );
  }
}
