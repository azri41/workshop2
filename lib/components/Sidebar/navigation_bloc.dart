import 'package:bloc/bloc.dart';
import 'package:workshop2/pages/Medicine/medicine_screen.dart';
import 'package:workshop2/pages/home.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  // MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Home();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Home();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MedicineScreen();
        break;
      // case NavigationEvents.MyOrdersClickedEvent:
      //   yield Order();
      //   break;
    }
  }
}
