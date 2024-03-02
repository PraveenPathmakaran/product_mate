import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:productmate/domain/product/product.dart';
import 'package:productmate/domain/product/product_failure.dart';
import 'package:productmate/domain/product/product_repo.dart';
import 'package:productmate/domain/product/product_value_object.dart';

part 'product_form_bloc.freezed.dart';
part 'product_form_event.dart';
part 'product_form_state.dart';

@injectable
class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  final ProudctRepo _proudctRepo;
  ProductFormBloc(this._proudctRepo) : super(ProductFormState.initial()) {
    on<ProductFormEvent>((event, emit) async {
      await event.map(
        nameChanged: (e) {
          emit(
            state.copyWith(
                product: state.product
                    .copyWith(productName: ProductName(e.nameStr))),
          );
        },
        priceChanged: (e) {
          emit(
            state.copyWith(
                product: state.product
                    .copyWith(productPrice: ProductPrice(e.priceStr))),
          );
        },
        heightChanged: (e) {
          emit(state.copyWith(
              product: state.product.copyWith(
                  productMeasureMent: state.product.productMeasureMent
                      .copyWith(height: MeasureMent(e.heightStr)))));
        },
        widthChanged: (e) {
          emit(state.copyWith(
              product: state.product.copyWith(
                  productMeasureMent: state.product.productMeasureMent
                      .copyWith(width: MeasureMent(e.widhtStr)))));
        },
        lengthChanged: (e) {
          emit(state.copyWith(
              product: state.product.copyWith(
                  productMeasureMent: state.product.productMeasureMent
                      .copyWith(length: MeasureMent(e.lengthStr)))));
        },
        saved: (e) async {
          Either<ProductFailure, Unit>? failureOrSuccess;
          emit(state.copyWith(
              isSaving: true, saveFailureOrSuccessOption: none()));

          if (state.product.failureOption.isNone()) {
            failureOrSuccess =
                await _proudctRepo.createProduct(product: state.product);
          }
          emit(state.copyWith(
              isSaving: false,
              showErrorMessage: true,
              saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
        },
      );
    });
  }
}
