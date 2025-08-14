import 'package:ab_shared/components/buttons/icon_text_button.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:ab_shared/pages/account/account.dart';
import 'package:notes/main.dart';
import 'package:notes/pages/settings/settings.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes/utils/nav_constants.dart';

class MoreApps extends StatefulWidget {
  const MoreApps({super.key});

  @override
  State<MoreApps> createState() => _MoreAppsState();
}

class _MoreAppsState extends State<MoreApps> {
  @override
  Widget build(BuildContext context) {
    final restOfNavigation =
        $navConstants.primaryMenuItems(context).sublist(5);
    return SafeArea(
      child: Padding(
        padding: isDesktop(context)
            ? EdgeInsets.only(
                right: $constants.insets.md,
                left: $constants.insets.sm,
                bottom: $constants.insets.sm,
              )
            : EdgeInsets.only(
                right: $constants.insets.sm,
                left: $constants.insets.sm,
                bottom: $constants.insets.sm,
              ),
        child: Column(
          children: [
            if (!isDesktop(context) && restOfNavigation.isNotEmpty) ...[
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: $constants.insets.sm,
                crossAxisSpacing: $constants.insets.sm,
                children: restOfNavigation.map((e) {
                  return StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 0.6,
                    child: GestureDetector(
                      onTap: () {
                        if (e.onTap != null) {
                          e.onTap!(0);
                          return;
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => e.body ?? Container(),
                          ),
                        );
                      },
                      child: ElevatedContainer(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: $constants.insets.sm,
                            ),
                            isDesktop(context)
                                ? Icon(e.icon)
                                : Icon(e.cupertinoIcon),
                            SizedBox(
                              height: $constants.insets.xxs,
                            ),
                            Text(
                              e.label,
                              style: getTextTheme(context).labelMedium,
                            ),
                            SizedBox(
                              height: $constants.insets.sm,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isDesktop(context) ? $constants.insets.lg : 0,
                  vertical: isDesktop(context)
                      ? $constants.insets.lg
                      : $constants.insets.sm,
                ),
                child: Column(
                  children: [
                    ElevatedContainer(
                      padding: EdgeInsets.symmetric(
                        horizontal: $constants.insets.sm,
                        vertical: $constants.insets.sm,
                      ),
                      child: IconTextButton(
                        text: context.t.account.sections.account,
                        icon: CupertinoIcons.person,
                        iconSize: 25,
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
                      ),
                    ),
                    SizedBox(
                      height: isDesktop(context)
                          ? $constants.insets.md
                          : $constants.insets.sm,
                    ),
                    ElevatedContainer(
                      padding: EdgeInsets.symmetric(
                        horizontal: $constants.insets.sm,
                        vertical: $constants.insets.sm,
                      ),
                      child: IconTextButton(
                        text: context.t.settings.title,
                        icon: CupertinoIcons.gear,
                        iconSize: 25,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Settings()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
