import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/product/product.dart';
import 'package:productmate/domain/product/product_failure.dart';

import '../../domain/product/product_repo.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProudctRepo _proudctRepo;
  ProductBloc(this._proudctRepo) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.map(watchAllProduct: (e) async {
        emit(const ProductState.loadInProgress());
        _proudctRepo.watchAllProduct().listen((event) {
          event.fold((f) => emit(ProductState.loadFailure(f)),
              (r) => emit(ProductState.loadSuccess(r)));
        });
      });
    });
  }
}
