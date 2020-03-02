import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mooncake/entities/entities.dart';
import 'package:mooncake/ui/localization/export.dart';

/// Represents a single notification item inside the list of notifications.
class NotificationItem extends StatelessWidget {
  final NotificationData notification;

  const NotificationItem({
    Key key,
    @required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notificationsText = {
      NotificationDataType.comment:
          PostsLocalizations.of(context).notificationHasCommentedText,
      NotificationDataType.like:
          PostsLocalizations.of(context).notificationLikedYourPost,
      NotificationDataType.reaction:
          PostsLocalizations.of(context).notificationAddedReaction,
      NotificationDataType.mention:
          PostsLocalizations.of(context).notificationTaggedYou,
    };

    final notificationText = notificationsText[notification.type];

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(notification.user.avatarUrl),
        ),
        SizedBox(width: 10),
        Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: notification.user.username,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: notificationText),
                  if (notification.data != null)
                    TextSpan(text: notification.data),
                ],
              ),
            ),
            Text(
              DateFormat("dd MMM YYYY").format(notification.dateTime),
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ],
    );
  }
}
