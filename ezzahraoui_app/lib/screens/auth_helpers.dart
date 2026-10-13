import 'package:supabase_flutter/supabase_flutter.dart';

String authErrorMessage(AuthException error) {
  final message = error.message.toLowerCase();
  if (message.contains('invalid email')) {
    return 'Adresse e-mail invalide.';
  }
  if (message.contains('email not confirmed')) {
    return 'Confirmez votre adresse e-mail avant de vous connecter.';
  }
  if (message.contains('invalid login credentials')) {
    return 'E-mail ou mot de passe incorrect.';
  }
  if (message.contains('already registered') ||
      message.contains('already been registered')) {
    return 'Cette adresse e-mail possède déjà un compte.';
  }
  if (message.contains('password should be at least') ||
      message.contains('weak password')) {
    return 'Le mot de passe doit contenir au moins 6 caractères.';
  }
  if (message.contains('email rate limit exceeded') ||
      message.contains('email rate limit')) {
    return 'La limite d’envoi des e-mails est atteinte. Attendez avant de '
        'réessayer, ou configurez un serveur SMTP personnalisé dans Supabase.';
  }
  if (message.contains('too many requests')) {
    return 'Trop de tentatives. Réessayez plus tard.';
  }
  if (message.contains('socketexception') ||
      message.contains('failed host lookup') ||
      message.contains('network')) {
    return 'Vérifiez votre connexion Internet.';
  }
  if (message.contains('user disabled')) {
    return 'Ce compte a été désactivé.';
  }
  return error.message;
}
