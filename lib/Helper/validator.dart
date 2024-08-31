class Validator {
  static String emailPattern =
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
  static String? validateEmail(String? email) {
    if ((email ??= "").trim().isEmpty) {
      return "Please enter valid email";
    } else if (!RegExp(emailPattern).hasMatch(email)) {
      return "Please enter valid email";
    } else {
      return null;
    }
  }

  static String? validateUrl(String value) {
    // Regular expression for a simple URL validation
    // This may not cover all edge cases, but it's a basic example
    RegExp urlRegExp = RegExp(
      r"^(http(s)?:\/\/)?([0-9a-zA-Z-]+\.)+[a-zA-Z]{2,}(:[0-9]+)?(\/.*)?$",
    );

    if (urlRegExp.hasMatch(value)) {
      return null; // Valid URL
    } else {
      return 'Invalid URL';
    }
  }

  static String? emptyValueValidation(String? value, {String? errmsg}) {
    return (value ??= "").trim().isEmpty ? errmsg : null;
  }

  static String? validatePhoneNumber(String? value) {
    // return null;

    final pattern = RegExp(r"^\+?[0-9]{6,15}$");
    if ((value ??= "").trim().isEmpty) {
      return "Invalid phone number";
    } else if (!pattern.hasMatch(value)) {
      return "Invalid phone number";
    } else {
      return null;
    }
  }

  static String? nullCheckValidator(String? value, {int? requiredLength}) {
    if (value!.isEmpty) {
      return "Field must not be empty";
    } else if (requiredLength != null) {
      if (value.length < requiredLength) {
        return "Text must be $requiredLength character long";
      } else {
        return null;
      }
    }

    return null;
  }

//byAnish
  static String? validatePassword(String? password,
      {String? secondFieldValue}) {
    if (password!.isEmpty) {
      return "Field must not be empty";
    } else if (password.length < 8) {
      return "Password must be 8 character long";
    }
    if (secondFieldValue != null) {
      if (password != secondFieldValue) {
        return "Both fields must be match";
      }
    }

    return null;
  }
}

// regex Strings.(.*?)(?=[,|\n|\)|}|'|"|])
