abstract class SignInEvent {
  const SignInEvent();
}
class emailEvent extends SignInEvent {
  final String email;
  emailEvent(this.email);
}

class passwordEvent extends SignInEvent {
  final String password;
  passwordEvent(this.password);
}