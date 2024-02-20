class AppValidation {
  AppValidation({this.type = 'Text'});

  final String type;

  String? validation(value) {
     if (value!.isEmpty) {
      return 'field is required';
    }else{
    switch (type) {
      case 'password':
        return passwordValidation(value);

      case 'email':
        return emailValidation(value);

      case 'phone':
        return phoneValidation(value);

      default:
        return textValidation(value);
    }}
  }

  String? textValidation(value) {
   if (value.length < 6) {
      return 'Name should be at least 6 characters';
    }
    return null;
  }

  String? emailValidation(value) {
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value!)) {
      return 'Enter a valid email!';
    }
    return null;
  }

  String? phoneValidation(value) {
    if (!RegExp(r"^\+?0[0-9]{10}$").hasMatch(value!)) {
      return 'Enter a valid phone number!';
    }
    return null;
  }

  String? passwordValidation(value) {
    if (value.length < 6) {
      return 'Password should be at least 6 characters';
    }
    return null;
  }
}
