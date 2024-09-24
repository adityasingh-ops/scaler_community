abstract class RegisterEvent {
   const RegisterEvent();
}
class userEvent extends RegisterEvent {
  final String user;
  userEvent(this.user);
}
class emailEvent extends RegisterEvent {
  final String email;
  emailEvent(this.email);
}
class passwordEvent extends RegisterEvent {
  final String password;
  passwordEvent(this.password);
}
class rePasswordEvent extends RegisterEvent {
  final String rePassword;
  rePasswordEvent(this.rePassword);
}