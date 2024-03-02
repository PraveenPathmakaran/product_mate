import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_repo.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(authCheckRequested: (e) async {
        final userOption = await _authRepo.getSignedInUser();
        userOption.fold(
          () => emit(const AuthState.unAuthenticated()),
          (a) => emit(const AuthState.authenticated()),
        );
      }, signedOut: (e) async {
        await _authRepo.signOut();
        emit(const AuthState.unAuthenticated());
      });
    });
  }
}
