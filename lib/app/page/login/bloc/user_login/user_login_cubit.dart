import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oditbiz/app/page/login/bloc/import/import_cubit.dart';
import 'package:oditbiz/app/page/login/bloc/model/user_login_model.dart';
import 'package:oditbiz/app/page/login/model/login_user_model.dart';
import 'package:oditbiz/app/services/repository/login_user.dart';
import 'package:oditbiz/app/services/user_service_user.dart';
part 'user_login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit() : super(UserLoginInitial());
  late UserLoginModel data;

  getUserLogin(context, LoginUserModel object) async {
    emit(UserLoginLoading());
    // try {
    UserLoginModel? data =
        await ApiserviceloginUser().loginUserFunction(context, object);
    if (data != null) {
      if (data.status!) {
        await UserServicesUser().setUserDataUser(data.token!);
        await BlocProvider.of<ImportCubit>(context).getImport(context);
      }

      emit(UserLoginLoaded(data));
    }
  }
  // } catch (ex) {
  // emit(ImportError("Sorry! We Couldn't connect to our servers"));
  // }

}
