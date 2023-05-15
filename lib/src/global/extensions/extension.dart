import "dart:developer" as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

extension Validator on String {
  bool validatePassword() {
    if (length < 6 || length > 16) {
      return false;
    }

    return true;
  }

  bool validateLength(int min, int max) {
    if (length < min || length > max) {
      return false;
    }
    return true;
  }

  bool validatePhone() {
    if (length != 8) {
      return false;
    }
    return true;
  }
}
