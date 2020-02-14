// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';

import 'package:alan/models/cosmos-sdk/tx/std_msg.dart' as prefix0;
import 'package:alan/models/messages/msg_send.dart' as prefix1;
import 'package:mooncake/sources/posts/remote/models/msgs/msg_add_post_reaction.dart'
    as prefix3;
import 'package:mooncake/sources/posts/remote/models/msgs/msg_create_post.dart'
    as prefix2;
import 'package:mooncake/sources/posts/remote/models/msgs/msg_remove_post_reaction.dart'
    as prefix4;
import 'package:reflectable/mirrors.dart' as m;
import 'package:reflectable/reflectable.dart' as r show Reflectable;
import 'package:reflectable/src/reflectable_builder_based.dart' as r;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'MsgSend',
            r'.MsgSend',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => ({fromAddress, toAddress, amount}) => b
                  ? prefix1.MsgSend(
                      amount: amount,
                      fromAddress: fromAddress,
                      toAddress: toAddress)
                  : null,
              r'fromJson': (b) =>
                  (json) => b ? prefix1.MsgSend.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {}),
        r.NonGenericClassMirrorImpl(
            r'MsgCreatePost',
            r'.MsgCreatePost',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => (
                      {parentId,
                      message,
                      allowsComments,
                      subspace,
                      optionalData,
                      creator,
                      creationDate,
                      medias}) =>
                  b
                      ? prefix2.MsgCreatePost(
                          allowsComments: allowsComments,
                          creationDate: creationDate,
                          creator: creator,
                          medias: medias,
                          message: message,
                          optionalData: optionalData,
                          parentId: parentId,
                          subspace: subspace)
                      : null,
              r'fromJson': (b) =>
                  (json) => b ? prefix2.MsgCreatePost.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {}),
        r.NonGenericClassMirrorImpl(
            r'MsgAddPostReaction',
            r'.MsgAddPostReaction',
            7,
            2,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => ({postId, reaction, user}) => b
                  ? prefix3.MsgAddPostReaction(
                      postId: postId, reaction: reaction, user: user)
                  : null,
              r'fromJson': (b) =>
                  (json) => b ? prefix3.MsgAddPostReaction.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {}),
        r.NonGenericClassMirrorImpl(
            r'MsgRemovePostReaction',
            r'.MsgRemovePostReaction',
            7,
            3,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => ({postId, reaction, user}) => b
                  ? prefix4.MsgRemovePostReaction(
                      postId: postId, reaction: reaction, user: user)
                  : null,
              r'fromJson': (b) => (json) =>
                  b ? prefix4.MsgRemovePostReaction.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {})
      ],
      null,
      null,
      <Type>[
        prefix1.MsgSend,
        prefix2.MsgCreatePost,
        prefix3.MsgAddPostReaction,
        prefix4.MsgRemovePostReaction
      ],
      4,
      {},
      {},
      null,
      [
        const [
          0,
          0,
          const [#fromAddress, #toAddress, #amount]
        ],
        const [1, 0, null],
        const [
          0,
          0,
          const [
            #parentId,
            #message,
            #allowsComments,
            #subspace,
            #optionalData,
            #creator,
            #creationDate,
            #medias
          ]
        ],
        const [
          0,
          0,
          const [#postId, #reaction, #user]
        ]
      ])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
