import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/links.dart';
import 'package:social/single_item.dart';

import 'item_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = [
      ItemModel(assetLink: SocialIconLink.facebook, name: 'Facebook'),
      ItemModel(assetLink: SocialIconLink.instagram, name: 'Instagram'),
      ItemModel(assetLink: SocialIconLink.x, name: 'X'),
      ItemModel(assetLink: SocialIconLink.linkedin, name: 'LinkedIn'),
      ItemModel(assetLink: SocialIconLink.github, name: 'GitHub'),
      ItemModel(assetLink: SocialIconLink.snapchat, name: 'Snapchat'),
      ItemModel(assetLink: SocialIconLink.whatsapp, name: 'WhatsApp'),
      ItemModel(assetLink: SocialIconLink.telegram, name: 'Telegram'),
      ItemModel(assetLink: SocialIconLink.youtube, name: 'YouTube'),
      ItemModel(assetLink: SocialIconLink.tiktok, name: 'TikTok'),
      ItemModel(assetLink: SocialIconLink.reddit, name: 'Reddit'),
      ItemModel(assetLink: SocialIconLink.soundcloud, name: 'SoundCloud'),
      ItemModel(assetLink: SocialIconLink.pinterest, name: 'Pinterest'),
      ItemModel(assetLink: SocialIconLink.thumblr, name: 'Tumblr'),
      ItemModel(assetLink: SocialIconLink.medium, name: 'Medium'),
      ItemModel(
          assetLink: SocialIconLink.stackoverflow, name: 'Stack Overflow'),
      ItemModel(assetLink: SocialIconLink.behance, name: 'Behance'),
      ItemModel(assetLink: SocialIconLink.dribble, name: 'Dribble'),
      ItemModel(assetLink: SocialIconLink.deviantart, name: 'DeviantArt'),
      ItemModel(assetLink: SocialIconLink.goodreads, name: 'Goodreads'),
      ItemModel(assetLink: SocialIconLink.strava, name: 'Strava'),
      ItemModel(assetLink: SocialIconLink.spotify, name: 'Spotify'),
      ItemModel(assetLink: SocialIconLink.steam, name: 'Steam'),
      ItemModel(assetLink: SocialIconLink.twitch, name: 'Twitch'),
      ItemModel(assetLink: SocialIconLink.flickr, name: 'Flickr'),
      ItemModel(assetLink: SocialIconLink.lastfm, name: 'Last.fm'),
      ItemModel(assetLink: SocialIconLink.clubhouse, name: 'Clubhouse'),
      ItemModel(assetLink: SocialIconLink.discord, name: 'Discord'),
      ItemModel(assetLink: SocialIconLink.gab, name: 'Gab'),
      ItemModel(assetLink: SocialIconLink.mewe, name: 'MeWe'),
      ItemModel(assetLink: SocialIconLink.parler, name: 'Parler'),
      ItemModel(assetLink: SocialIconLink.rumble, name: 'Rumble'),
      ItemModel(assetLink: SocialIconLink.triller, name: 'Triller'),
      ItemModel(assetLink: SocialIconLink.wechat, name: 'WeChat'),
      ItemModel(assetLink: SocialIconLink.viber, name: 'Viber'),
      ItemModel(assetLink: SocialIconLink.line, name: 'Line'),
      ItemModel(assetLink: SocialIconLink.qq, name: 'QQ'),
      ItemModel(assetLink: SocialIconLink.threads, name: 'Threads'),
      ItemModel(assetLink: SocialIconLink.quora, name: 'Quora'),
    ];

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Social icons"),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: items.map((e) => SingleItem(item: e)).toList(),
        ),
      ),
    );
  }
}
