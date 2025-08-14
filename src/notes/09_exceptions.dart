import 'dart:convert';

void main() {
  Login login = Login();
  try {
    login.logar();
  } on PasswordLengthError catch (e) { // caso de erro personalizado
    print("Falhou ao logar");
  } catch (e) {
    print("Outro erro $e");
  } finally {
    print('finalizou.');
  }
}

class Login {
  void logar() {
    String user = 'admin';
    String pass = '123';

    if (pass.length <= 5) throw PasswordLengthError();
  }
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
