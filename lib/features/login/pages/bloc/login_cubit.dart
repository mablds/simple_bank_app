import 'package:simple_bank_app/features/login/data/models/responses/user_account_model.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  Future<UserAccount> login({
    required String email,
    required String password,
  }) async {
    state.copyWith(status: LoginStatus.success);
    return UserAccount();
  }
}
