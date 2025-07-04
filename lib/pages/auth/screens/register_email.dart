import 'package:notes/blocs/auth/auth.bloc.dart';
import 'package:notes/components/buttons/primary_button_square.dart';
import 'package:notes/components/forms/app_text_form_field.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail(
      {super.key,
      this.cancelCallback,
      required this.nextStepCallback,
      this.email});
  final String? email;
  final VoidCallback? cancelCallback;
  final Function(String) nextStepCallback;

  @override
  State<RegisterEmail> createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final _animationDuration = const Duration(milliseconds: 250);
  final TextEditingController _emailController = TextEditingController();

  @override
  initState() {
    _emailController.text = widget.email ?? '';
    _animationController = AnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, AuthState state) {
        if (state is LoggedIn) {
          if (!context.mounted) return;
          Navigator.pop(context);
        }
      },
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: getSize(context).height * 0.08,
              ),
              Animate(
                controller: _animationController,
                effects: [
                  FadeEffect(
                    duration: _animationDuration,
                    delay: const Duration(milliseconds: 0),
                  )
                ],
                onPlay: (controller) => controller.forward(),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: $constants.insets.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/authentication.png',
                          fit: BoxFit.cover,
                          width: isDesktop(context)
                              ? getSize(context).width * 0.2
                              : getSize(context).width * 0.5,
                        ),
                      ),
                      AutoSizeText(
                        maxLines: 1,
                        context.t.auth.register.email,
                        style: getTextTheme(context).displaySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: $constants.insets.xs,
                      ),
                      SizedBox(
                        width: getSize(context).width * 0.9,
                        child: Text(
                          context.t.auth.register.email_description,
                        ),
                      ),
                      SizedBox(
                        width: getSize(context).width * 0.9,
                        child: Text(
                          context.t.auth.register.we_never_sell,
                          style: getTextTheme(context).bodyMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: $constants.insets.xs,
                      ),
                      Animate(
                        controller: _animationController,
                        effects: [
                          FadeEffect(
                            duration: _animationDuration,
                            delay: const Duration(milliseconds: 300),
                          )
                        ],
                        onPlay: (controller) => controller.forward(),
                        child: SizedBox(
                          width: getSize(context).width * 0.9,
                          child: AppTextFormField(
                            controller: _emailController,
                            hintText: context.t.auth.login.email,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: $constants.insets.sm,
              ),
              const Spacer(),
              const Divider(),
              Animate(
                controller: _animationController,
                effects: [
                  FadeEffect(
                    duration: _animationDuration,
                    delay: const Duration(milliseconds: 500),
                  )
                ],
                onPlay: (controller) => controller.forward(),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: $constants.insets.md),
                  height: getSize(context).height * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      PrimaryButtonSquare(
                        text: context.t.actions.next,
                        backgroundColor: getTheme(context).primary,
                        onPressed: () async {
                          if (_emailController.text.isEmpty) {
                            return;
                          }
                          _animationController.reverseDuration = const Duration(
                            milliseconds: 500,
                          );
                          await _animationController.reverse(from: 1.0);
                          widget.nextStepCallback(_emailController.text);
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: !isDesktop(context)
                    ? $constants.insets.sm
                    : $constants.insets.xs,
              ),
            ],
          ),
          Positioned(
            left: $constants.insets.sm,
            top: $constants.insets.md,
            child: GestureDetector(
              onTap: widget.cancelCallback,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    OctIcons.arrow_left,
                    size: 18,
                  ),
                  SizedBox(
                    width: $constants.insets.xxs,
                  ),
                  Text(
                    context.t.actions.back,
                    style: getTextTheme(context)
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
