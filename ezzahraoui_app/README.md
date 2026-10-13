# ezzahraoui_app

A new Flutter project.

## Supabase Authentication

1. Créez un projet dans [Supabase](https://supabase.com/dashboard).
2. Récupérez le **Project URL** et la clé publique **Publishable key** dans les
   paramètres API du projet. N’utilisez jamais une clé `service_role` dans
   l’application.
3. Copiez `supabase_config.example.json` vers `supabase_config.json`, puis
   renseignez les identifiants du projet dans ce fichier local (ignoré par Git).
   Lancez ensuite l’application avec :

   ```powershell
   flutter run -d edge --dart-define-from-file=supabase_config.json
   ```

Les écrans de connexion et d’inscription utilisent Supabase Auth avec e-mail et
mot de passe. Configurez également l’authentification par e-mail dans
**Authentication > Sign In / Providers** du tableau de bord Supabase.
La clé Publishable est prévue pour être utilisée dans une application cliente ;
ne placez jamais une clé `service_role` dans l’application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
