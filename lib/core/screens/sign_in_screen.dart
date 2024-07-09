import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_cask/core/router_config.dart';
import 'package:one_cask/core/widgets/custom_app_bar.dart';
import 'package:one_cask/core/widgets/gap.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formGroup = FormGroup({
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl<String>(
      validators: [Validators.required, Validators.minLength(6)],
    ),
  });

  bool passwordVisible = false;

  void signIn() {
    formGroup.markAllAsTouched();
    if (formGroup.valid) {
      debugPrint('Email: ${formGroup.control('email').value}');
      debugPrint('Password: ${formGroup.control('password').value}');

      context.go(Routes.MyCollection.path);
    }
  }

  void changePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        showLeading: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
          child: Material(
            color: Colors.transparent,
            child: ReactiveForm(
              formGroup: formGroup,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Sign in',
                    style: theme.textTheme.headlineLarge,
                  ),
                  Gap.s24,
                  ReactiveTextField(
                    formControlName: 'email',
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  Gap.s16,
                  ReactiveTextField(
                    formControlName: 'password',
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: passwordVisible
                            ? const Icon(Icons.visibility_off_outlined)
                            : const Icon(Icons.visibility_outlined),
                        onPressed: changePasswordVisibility,
                      ),
                    ),
                  ),
                  Gap.s16,
                  FilledButton.tonal(
                    onPressed: signIn,
                    child: const Text('Continue'),
                  ),
                  Gap.s24,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Can’t sign in?',
                        style: theme.textTheme.bodyLarge,
                      ),
                      Gap.s24,
                      TextButton(
                        onPressed: () {},
                        child: const Text('Recover password'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
