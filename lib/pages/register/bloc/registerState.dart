class RegisterState {
  final String user;
  final String email;
  final String password;
  final String rePassword;
  RegisterState({
    this.user = "",
    this.email = "",
    this.password = "",
    this.rePassword = "",
  });
  RegisterState copyWith({
    String? user,
    String? email,
    String? password,
    String? rePassword,
  }) {
    return RegisterState(
      user: user ?? this.user,
      email: email ?? this.email,
      password: password ?? this.password,
      rePassword: rePassword ?? this.rePassword,
    );
  }
}