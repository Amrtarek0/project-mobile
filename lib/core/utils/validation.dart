class MyValidation {
  String? nameValidate(String? input) {
    if (input == null || input.isEmpty) {
      return "invalid";
    }
    return null;
  }
}
