extension StringValidator on String {
  bool isEmailValid() {
    final regex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]{1,64}@[a-zA-Z0-9-]{1,255}(\.[a-zA-Z0-9-]{2,24})+$");
    return regex.hasMatch(this);
  }

  bool isPasswordValid() {
    final regex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{6,10}$');
    return regex.hasMatch(this);
  }
}
