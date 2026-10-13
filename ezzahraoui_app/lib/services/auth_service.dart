import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  const AuthService();

  GoTrueClient get _auth => Supabase.instance.client.auth;

  Future<User?> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final response = await _auth.signUp(email: email, password: password);
    return response.user;
  }

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final response = await _auth.signInWithPassword(
      email: email,
      password: password,
    );
    return response.user;
  }

  Future<void> signOut() => _auth.signOut();

  Stream<User?> get authStateChanges =>
      _auth.onAuthStateChange.map((state) => state.session?.user);
}
