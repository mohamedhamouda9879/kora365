abstract class LiveStates {}

class LiveInitialStates extends LiveStates {}

class LiveLoadingStates extends LiveStates {}

class LiveSucessStates extends LiveStates {}

class LiveErrorStates extends LiveStates {
  final String error;
  LiveErrorStates(this.error);
}
