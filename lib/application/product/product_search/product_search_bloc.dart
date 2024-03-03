import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/product/product_failure.dart';
import 'package:productmate/domain/product/product_repo.dart';
import 'package:productmate/domain/product/product_value_object.dart';

import '../../../domain/product/product.dart';

part 'product_search_bloc.freezed.dart';
part 'product_search_event.dart';
part 'product_search_state.dart';

@injectable
class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  final ProudctRepo _proudctRepo;
  ProductSearchBloc(this._proudctRepo) : super(ProductSearchState.initial()) {
    on<ProductSearchEvent>((event, emit) async {
      await event.map(
        searchButtonPressed: (value) async {
          Either<ProductFailure, List<Product>>? failureOrSuccess;
          if (state.query.isValid()) {
            failureOrSuccess =
                await _proudctRepo.searchProduct(query: state.query);

            failureOrSuccess.fold(
                (failure) => null,
                (product) => emit(
                    state.copyWith(isLoading: false, productList: product)));
          }

          emit(state.copyWith(
            isLoading: false,
            showErrorMessage: true,
            searchFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        queryChanged: (value) {
          emit(state.copyWith(
            query: ProductName(value.query),
            searchFailureOrSuccessOption: none(),
          ));
        },
      );
    });
  }
}
