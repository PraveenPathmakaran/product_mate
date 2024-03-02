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
    on<_WatchAllProduct>((event, emit) async {
      await emit.forEach(_proudctRepo.watchAllProduct(),
          onData: (data) => data.fold((f) => ProductState.loadFailure(f),
              (r) => ProductState.loadSuccess(r)));
    });
  }
}
