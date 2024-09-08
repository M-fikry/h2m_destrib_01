import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h2m_destrib/features/login/data/models/login_request_body.dart';
import 'package:h2m_destrib/features/login/data/models/representative_request_body.dart';
import 'package:h2m_destrib/features/login/data/repos/login_repo.dart';
import 'package:h2m_destrib/features/login/logic/cubit/login_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repos/representative_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final RepresentativeRepo _repRepo;

  LoginCubit(this._loginRepo, this._repRepo)
      : super(const LoginState.initial());

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController pathController = TextEditingController();
  String? mandoubName = '';
  final formKey = GlobalKey<FormState>();
  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? userId = prefs.getInt('h2m_user_id');

    emit(const LoginState.loading());

    final response = await _loginRepo.logiIn(loginRequestBody);
    response.when(success: (loginResponse) async {
      try {
        if (userId == null) {
          prefs.setInt("h2m_user_id", loginResponse.user_id ?? -1);
          prefs.setString("h2m_path", pathController.text);
          prefs.setString("h2m_user_name", usernameController.text);
        }
      } catch (e) {
        print(e);
      }
      RepresentativeRequestBody representativeRequestBody =
          RepresentativeRequestBody(
        user_id: loginResponse.user_id ?? -1,
      );
      final repResponse =
          await _repRepo.getRepresentative(representativeRequestBody);
      repResponse.when(success: (responseBody) async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString("namemndob", responseBody.namemndob ?? "");
        mandoubName = prefs.getString("namemndob");
        await prefs.setInt("idFreaShrka", responseBody.idFreaShrka ?? 1);
        await prefs.setInt("idKhazna", responseBody.idKhazna ?? 1);
        await prefs.setInt("idMakhzan", responseBody.idMakhzan ?? 1);
        await prefs.setInt("replastname", responseBody.lastname ?? 0);
        await prefs.setString("khazna", responseBody.khazna ?? "");
        await prefs.setString("makhzan", responseBody.makhzan ?? "");
        await prefs.setString("nameshrka", responseBody.nameshrka ?? "");
        await prefs.setString("avergSerSHra", responseBody.avergSerSHra ?? "");

        print('mandoubName_prefs: ${mandoubName}');
      }, failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
      });
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
