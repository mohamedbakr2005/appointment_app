import 'package:appointment_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_app/features/login/data/repos/login_repo.dart';
import 'package:appointment_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(loginRequestBody);
    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(
          LoginState.error(
            error: error.apiErrorModel.message ?? 'An error occurred',
          ),
        );
      },
    );
  }
}
