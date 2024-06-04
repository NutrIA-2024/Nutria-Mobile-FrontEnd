import 'package:bloc/bloc.dart';
import 'package:nutriapp/modules/profile/profileSinEdicion.dart';
import 'package:nutriapp/modules/login_and_register/codeSecurityPage.dart';

enum NavigationEvents {
  ProfileClickedEvent,
  CodeFriendClickedEvent, //añadir mas vistas
}

mixin NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc() : super(CodePage() /* cambiar por la vista de home*/) {
    on<NavigationEvents>((event, emit) {
      switch (event) {
        case NavigationEvents.ProfileClickedEvent:
          emit(ProfileWithoutPage());
          break;
        case NavigationEvents.CodeFriendClickedEvent:
          emit(CodePage());
          break;
      }
    });
  }
}
