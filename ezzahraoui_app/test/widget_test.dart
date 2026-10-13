import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ezzahraoui_app/screens/login_page.dart';
import 'package:ezzahraoui_app/screens/signup_page.dart';

void main() {
  testWidgets('login page displays EMSI branding and sign-in fields', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));
    await tester.pumpAndSettle();

    expect(find.text('Bienvenue'), findsOneWidget);
    expect(find.text('Connexion'), findsOneWidget);
    expect(find.text('Adresse e-mail'), findsOneWidget);
    expect(find.text('Mot de passe'), findsOneWidget);
    expect(find.text('Se connecter'), findsOneWidget);
  });

  testWidgets('signup page displays registration fields', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: SignupPage()));
    await tester.pumpAndSettle();

    expect(find.text('Rejoignez-nous'), findsOneWidget);
    expect(find.text('Créer un compte'), findsOneWidget);
    expect(find.text('Adresse e-mail'), findsOneWidget);
    expect(find.text('Confirmer le mot de passe'), findsOneWidget);
    expect(find.text('Créer mon compte'), findsOneWidget);
  });

  testWidgets('login page validates required credentials', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Se connecter'));
    await tester.tap(find.text('Se connecter'));
    await tester.pumpAndSettle();

    expect(find.text('Saisissez votre e-mail.'), findsOneWidget);
    expect(find.text('Saisissez votre mot de passe.'), findsOneWidget);
  });
}
