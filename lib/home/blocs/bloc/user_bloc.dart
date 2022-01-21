import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hoxton/home/model/user_model.dart';
import 'package:hoxton/home/provider/data_source.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserDatSource _userDatSource = UserDatSource();
  UserBloc() : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is GetUserListEvent) {
      yield* _getUserList();
    }
  }

  Stream<UserState> _getUserList() async* {
    yield UserLoading();

    final dataResponse = await _userDatSource.getUserList();

    if (dataResponse.isNotEmpty) {
      yield UserSuccess(dataResponse);
    } else {
      yield UserFailed();
    }
  }
}
