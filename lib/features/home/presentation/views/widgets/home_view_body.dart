import 'package:book_store_application/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:book_store_application/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children:[
          CustomAppBar(),
          CustomListViewItem()
        ]
      ),
    );
  }
}


