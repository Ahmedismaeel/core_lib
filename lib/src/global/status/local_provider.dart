import 'package:riverpod/riverpod.dart';

import '../data/sharedpref/shared_preference_helper.dart';

class LocalNotifier extends StateNotifier<int> {
  LocalNotifier() : super(SharedPreferenceHelper.instance.currentLanguage);

   setLocal(local) {
    SharedPreferenceHelper.instance.changeLanguage(local);
    state = local;
  }
}

final localProvider =
    StateNotifierProvider<LocalNotifier, int>((ref) => LocalNotifier());
