import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/components/buttons/icon_text_button.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:notes/pages/settings/screens/app_settings.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/utils/nav_constants.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Widget? selectedItem;

  @override
  void initState() {
    super.initState();
    if (isDesktop(context)) {
      selectedItem = AppSettings();
    }
  }

  @override
  Widget build(BuildContext context) {
    final appBar = $navConstants
        .primaryMenuItems(context)
        .where((item) => item.key == "settings")
        .firstOrNull
        ?.appBar;
    return Row(
      children: [
        SizedBox(
          width: isDesktop(context) ? 300 : getSize(context).width,
          child: Scaffold(
            appBar: appBar,
            body:
                BlocBuilder<AuthBloc, AuthState>(builder: (contex, authState) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: $constants.insets.sm,
                    vertical: $constants.insets.xs),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: $constants.insets.xs,
                    horizontal: $constants.insets.xxs,
                  ),
                  child: Column(
                    spacing: $constants.insets.md,
                    children: [
                      $navConstants
                              .primaryMenuItems(context)
                              .where((item) => item.key == "settings")
                              .firstOrNull
                              ?.header ??
                          Container(),
                      IconTextButton(
                        text: context.t.settings.app_settings.title,
                        icon: CupertinoIcons.device_phone_portrait,
                        iconSize: 20,
                        onTap: () {
                          if (isDesktop(context)) {
                            setState(() {
                              selectedItem = AppSettings();
                            });
                          } else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AppSettings();
                            }));
                          }
                        },
                      ),
                      if (authState is LoggedIn)
                        IconTextButton(
                          text: context.t.settings.logout,
                          icon: CupertinoIcons.multiply_circle_fill,
                          iconSize: 20,
                          iconColor: Colors.red,
                          textColor: Colors.red,
                          onTap: () {
                            context.read<AuthBloc>().add(const Logout());
                            Navigator.pop(context);
                          },
                        ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        if (isDesktop(context)) ...[
          VerticalDivider(
            color: getTheme(context).surfaceContainer,
            thickness: 1,
          ),
          Expanded(
            child: selectedItem ?? Container(),
          ),
        ],
      ],
    );
  }
}
