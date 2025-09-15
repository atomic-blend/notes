import 'package:ab_shared/blocs/auth/auth.bloc.dart';
import 'package:ab_shared/pages/account/account.dart';
import 'package:notes/main.dart';
import 'package:notes/services/sync.service.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountAvatarWithSyncStatus extends StatelessWidget {
  const AccountAvatarWithSyncStatus({super.key, this.avatarSize});

  final double? avatarSize;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, authState) {
      return GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Account(
              globalApiClient: globalApiClient!,
              encryptionService: encryptionService!,
              revenueCatService: revenueCatService!,
              prefs: prefs!,
            ),
          );
        },
        onDoubleTap: () {
          SyncService.sync(context);
        },
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                width: avatarSize ?? 25,
                height: avatarSize ?? 25,
                decoration: BoxDecoration(
                  color: getTheme(context).primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: isDesktop(context)
                    ? EdgeInsets.all($constants.insets.xs)
                    : const EdgeInsets.all(3),
                child: Center(
                    child: AutoSizeText(
                  maxLines: 1,
                  "${authState.user?.firstname?[0] ?? "A"}${authState.user?.lastname?[0] ?? "B"}",
                  style: getTextTheme(context).labelLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                )),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: !_isLoading(authState: authState)
                    ? Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      )
                    : Container(
                        width: 14,
                        height: 14,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: getTheme(context).surfaceContainer,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircularProgressIndicator(
                          color: Colors.blueAccent,
                          strokeWidth: 3,
                        ),
                      ),
              )
            ],
          ),
        ),
      );
    });
  }

  _isLoading({AuthState? authState}) {
    if (authState == null) return false;
      return authState is Loading;
  }
}
