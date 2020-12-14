import 'package:bloc/bloc.dart';
import 'package:workshop2/pages/Order/order_screen.dart';
import 'package:workshop2/pages/Profile/profile_screen.dart';
import 'package:workshop2/pages/home.dart';
import 'package:workshop2/services/auth.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  // SignOutClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Home();
  
  // final AuthService _auth = AuthService();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Home();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield ProfileScreen();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield OrderScreen();
        break;
      // case NavigationEvents.SignOutClickedEvent:
      //   yield await _auth.signOut();
      //   break;
    }
  }
}
