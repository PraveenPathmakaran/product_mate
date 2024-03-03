// search_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:productmate/application/product/product_search/product_search_bloc.dart';
import 'package:productmate/presentation/app_router.dart';
import 'package:productmate/presentation/core/resource_manager/color_manager.dart';

import '../../domain/core/debounce/debounce.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final _debouncer = Debouncer(milliseconds: 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Builder(builder: (context) {
          return TextField(
            onChanged: (query) {
              context
                  .read<ProductSearchBloc>()
                  .add(ProductSearchEvent.queryChanged(query));
              _debouncer.run(() {
                context
                    .read<ProductSearchBloc>()
                    .add(const ProductSearchEvent.searchButtonPressed());
              });
            },
            decoration: const InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
            ),
          );
        }),
        elevation: 0,
      ),
      body: BlocBuilder<ProductSearchBloc, ProductSearchState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
                child: CircularProgressIndicator(
              color: ColorManager.whiteColor,
            ));
          }
          return ListView.builder(
            itemCount: state.productList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () => context.push(RouteNames.productDetail,
                    extra: state.productList[index]),
                title: Text(state.productList[index].productName.getOrCrash()),
                subtitle: Text(state.productList[index].productPrice
                    .getOrCrash()
                    .toString()),
              );
            },
          );
        },
      ),
    );
  }
}
