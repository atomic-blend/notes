import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes/components/widgets/elevated_container.dart';
import 'package:notes/pages/folder/my_folders.dart';
import 'package:notes/pages/tags/my_tags.dart';
import 'package:notes/utils/constants.dart';
import 'package:notes/utils/shortcuts.dart';

class Organize extends StatefulWidget {
  const Organize({super.key});

  @override
  State<Organize> createState() => _OrganizeState();
}

class _OrganizeState extends State<Organize> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          SizedBox(
            height: getSize(context).height * 0.2,
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              crossAxisSpacing: $constants.insets.xs,
              mainAxisSpacing: $constants.insets.xs,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: _buildGridItem(
                    icon: CupertinoIcons.folder,
                    title: "Folders",
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyFolders(),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: _buildGridItem(
                    icon: CupertinoIcons.tag,
                    title: "Tags",
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyTags(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: $constants.insets.xs,
          ),
          Expanded(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }

  _buildGridItem({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: ElevatedContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
