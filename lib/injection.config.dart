// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/pin_login/login_pin_bloc.dart' as _i12;
import 'application/product/product_bloc.dart' as _i13;
import 'application/product/product_form_bloc/product_form_bloc.dart' as _i14;
import 'application/product/product_search/product_search_bloc.dart' as _i15;
import 'application/sign_in/sign_in_bloc.dart' as _i16;
import 'domain/auth/auth_repo.dart' as _i10;
import 'domain/pin_login/login_pin_repo.dart' as _i6;
import 'domain/product/product_repo.dart' as _i8;
import 'infrastructure/auth/auth_repo_impl.dart' as _i11;
import 'infrastructure/core/injectable_module.dart' as _i18;
import 'infrastructure/pin_login/pin_login_repo_impl.dart' as _i7;
import 'infrastructure/product/product_repo_impl.dart' as _i9;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => registerModule.firebaseFirestore);
    gh.lazySingleton<_i5.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    gh.lazySingleton<_i6.LoginPinRepo>(
        () => _i7.LoginPinRepoImpl(gh<_i5.FlutterSecureStorage>()));
    gh.lazySingleton<_i8.ProudctRepo>(
        () => _i9.ProductRepoImpl(gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i10.AuthRepo>(
        () => _i11.AuthRepoImpl(gh<_i3.FirebaseAuth>()));
    gh.factory<_i12.LoginPinBloc>(
        () => _i12.LoginPinBloc(gh<_i6.LoginPinRepo>()));
    gh.factory<_i13.ProductBloc>(() => _i13.ProductBloc(gh<_i8.ProudctRepo>()));
    gh.factory<_i14.ProductFormBloc>(
        () => _i14.ProductFormBloc(gh<_i8.ProudctRepo>()));
    gh.factory<_i15.ProductSearchBloc>(
        () => _i15.ProductSearchBloc(gh<_i8.ProudctRepo>()));
    gh.factory<_i16.SignInBloc>(() => _i16.SignInBloc(gh<_i10.AuthRepo>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i10.AuthRepo>()));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
