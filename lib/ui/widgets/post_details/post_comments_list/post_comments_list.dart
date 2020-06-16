import 'package:flutter/material.dart';
import 'package:mooncake/entities/posts/post.dart';
import 'package:mooncake/ui/ui.dart';

import 'post_comment_item.dart';

/// Represents the list of comments that are associated to a specific post.
class PostCommentsList extends StatelessWidget {
  final List<Post> comments;

  const PostCommentsList({Key key, @required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final childCount = (comments.length * 2) - 1;
    return Container(
      padding: EdgeInsets.only(
        top: NestedScrollView.sliverOverlapAbsorberHandleFor(context)
            .layoutExtent,
      ),
      child: comments.isEmpty
          ? _emptyCommentsContainer(context)
          : _commentsList(context, childCount),
    );
  }

  Widget _emptyCommentsContainer(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(child: Center()),
          Expanded(
            child: Center(
              child: Image.asset("assets/images/smile.png"),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                PostsLocalizations.of(context).noCommentsYet,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _commentsList(BuildContext context, int childCount) {
    return CustomScrollView(
      shrinkWrap: true,
      key: PageStorageKey<String>("comments"),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              if (index.isEven) {
                final comment = comments[index ~/ 2];
                return PostCommentItem(
                  key: PostsKeys.postCommentItem(comment.id),
                  comment: comment,
                );
              }

              return Container(height: 0.5, color: ThemeColors.textColorLight);
            },
            childCount: childCount,
          ),
        )
      ],
    );
  }
}
