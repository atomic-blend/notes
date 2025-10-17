import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:jiffy/jiffy.dart';
import 'package:notes/blocs/folder/folder.bloc.dart';
import 'package:notes/blocs/tag/tag.bloc.dart';
import 'package:ab_shared/components/widgets/elevated_container.dart';
import 'package:notes/i18n/strings.g.dart';
import 'package:ab_shared/utils/constants.dart';
import 'package:ab_shared/utils/shortcuts.dart';
import 'package:notes/services/sync.service.dart';

part 'organize.g.dart';

@TypedGoRoute<OrganizeRoute>(path: '/organize', name: "organize")
class OrganizeRoute extends GoRouteData with _$OrganizeRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Organize();
  }
}

class Organize extends StatefulWidget {
  const Organize({super.key});

  @override
  State<Organize> createState() => _OrganizeState();
}

class _OrganizeState extends State<Organize> {
  @override
  void initState() {
    super.initState();
    SyncService.sync(context);
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FolderBloc, FolderState>(
        builder: (context, folderState) {
      return BlocBuilder<TagBloc, TagState>(builder: (context, tagState) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.t.organize.latest_items,
                style: getTextTheme(context).titleSmall!.copyWith(
                      color: getTheme(context).onSurface.lighten(70),
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(
                height: $constants.insets.xs,
              ),
              Expanded(
                child: Column(
                  children: [
                    ..._buildLatestOrgItemList(
                        tagState: tagState, folderState: folderState)
                  ],
                ),
              ),
            ],
          ),
        );
      });
    });
  }

  _buildLatestOrgItemList({
    required TagState tagState,
    required FolderState folderState,
  }) {
    final widgets = <Widget>[];
    // make a list sorted by createdAt of all the tags and folders
    final items = [
      ...?tagState.tags?.map((tag) => {
            'type': 'tag',
            'name': tag.name,
            'createdAt': tag.createdAt,
          }),
      ...?folderState.folders?.map((folder) => {
            'type': 'folder',
            'name': folder.name,
            'createdAt': folder.createdAt,
          }),
    ];
    items.sort((a, b) {
      // sort by createdAt in descending order, using the objects' createdAt field
      if (a['createdAt'] == null || b['createdAt'] == null) {
        return 0; // if either is null, consider them equal
      }
      return (b['createdAt'] as DateTime).compareTo(a['createdAt'] as DateTime);
    });

    for (var item in items) {
      widgets.add(
        Padding(
          padding: EdgeInsets.only(bottom: $constants.insets.xs),
          child: ElevatedContainer(
            padding: EdgeInsets.symmetric(
              horizontal: $constants.insets.xs,
            ),
            child: ListTile(
              leading: Icon(
                item['type'] == 'tag'
                    ? CupertinoIcons.tag
                    : CupertinoIcons.folder,
              ),
              title: Text(
                item['name'] as String,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              subtitle: Text(
                Jiffy.parseFromDateTime(
                  item['createdAt'] as DateTime,
                ).yMMMEdjm,
              ),
              onTap: () {
                // handle tap, e.g., navigate to details page
              },
            ),
          ),
        ),
      );
    }

    return widgets;
  }
}
