class SigninState {
  final String email;
  final String password;

  SigninState({required this.email, required this.password});

  SigninState copyWith({String? email, String? password}) {
    return SigninState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}