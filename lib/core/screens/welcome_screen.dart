import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_cask/core/widgets/gap.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  void openSignIn(BuildContext context) {
    context.push('/sign-in');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/screen_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: Card(
          color: theme.cardColor,
          elevation: 0,
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome!',
                  style: theme.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                Gap.s8,
                Text(
                  'Lorem ipsum dolor sit amet.',
                  style: theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                Gap.s24,
                FilledButton.tonal(
                  onPressed: () {},
                  child: const Text('Scan bottle'),
                ),
                Gap.s24,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style: theme.textTheme.bodyLarge,
                    ),
                    Gap.s24,
                    TextButton(
                      onPressed: () => openSignIn(context),
                      child: const Text('Sign in first'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
