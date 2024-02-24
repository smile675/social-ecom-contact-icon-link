import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/links.dart';
import 'package:social/single_item.dart';

import 'image_link.dart';
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
      ItemModel(assetLink: SocialImagesLinks.facebook, name: 'Facebook'),
      ItemModel(assetLink: SocialImagesLinks.instagram, name: 'Instagram'),
      ItemModel(assetLink: SocialImagesLinks.x, name: 'X'),
      ItemModel(assetLink: SocialImagesLinks.linkedIn, name: 'LinkedIn'),
      ItemModel(assetLink: SocialImagesLinks.github, name: 'GitHub'),
      ItemModel(assetLink: SocialImagesLinks.snapchat, name: 'Snapchat'),
      ItemModel(assetLink: SocialImagesLinks.whatsapp, name: 'WhatsApp'),
      ItemModel(assetLink: SocialImagesLinks.telegram, name: 'Telegram'),
      ItemModel(assetLink: SocialImagesLinks.youtube, name: 'YouTube'),
      ItemModel(assetLink: SocialImagesLinks.tiktok, name: 'TikTok'),
      ItemModel(assetLink: SocialImagesLinks.reddit, name: 'Reddit'),
      ItemModel(assetLink: SocialImagesLinks.soundCloud, name: 'SoundCloud'),
      ItemModel(assetLink: SocialImagesLinks.pinterest, name: 'Pinterest'),
      ItemModel(assetLink: SocialImagesLinks.tumblr, name: 'Tumblr'),
      ItemModel(assetLink: SocialImagesLinks.medium, name: 'Medium'),
      ItemModel(
          assetLink: SocialImagesLinks.stackOverflow, name: 'Stack Overflow'),
      ItemModel(assetLink: SocialImagesLinks.behance, name: 'Behance'),
      ItemModel(assetLink: SocialImagesLinks.dribbble, name: 'Dribble'),
      ItemModel(assetLink: SocialImagesLinks.deviantArt, name: 'DeviantArt'),
      ItemModel(assetLink: SocialImagesLinks.goodreads, name: 'Goodreads'),
      ItemModel(assetLink: SocialImagesLinks.strava, name: 'Strava'),
      ItemModel(assetLink: SocialImagesLinks.spotify, name: 'Spotify'),
      ItemModel(assetLink: SocialImagesLinks.steam, name: 'Steam'),
      ItemModel(assetLink: SocialImagesLinks.twitch, name: 'Twitch'),
      ItemModel(assetLink: SocialImagesLinks.flickr, name: 'Flickr'),
      ItemModel(assetLink: SocialImagesLinks.lastfm, name: 'Last.fm'),
      ItemModel(assetLink: SocialImagesLinks.clubhouse, name: 'Clubhouse'),
      ItemModel(assetLink: SocialImagesLinks.discord, name: 'Discord'),
      ItemModel(assetLink: SocialImagesLinks.gab, name: 'Gab'),
      ItemModel(assetLink: SocialImagesLinks.meWe, name: 'MeWe'),
      ItemModel(assetLink: SocialImagesLinks.parler, name: 'Parler'),
      ItemModel(assetLink: SocialImagesLinks.rumble, name: 'Rumble'),
      ItemModel(assetLink: SocialImagesLinks.triller, name: 'Triller'),
      ItemModel(assetLink: SocialImagesLinks.weChat, name: 'WeChat'),
      ItemModel(assetLink: SocialImagesLinks.viber, name: 'Viber'),
      ItemModel(assetLink: SocialImagesLinks.line, name: 'Line'),
      ItemModel(assetLink: SocialImagesLinks.qq, name: 'QQ'),
      ItemModel(assetLink: SocialImagesLinks.threads, name: 'Threads'),
      ItemModel(assetLink: SocialImagesLinks.quora, name: 'Quora'),
    ];

    // List<ItemModel> nditem = [
    //   ItemModel(assetLink: SocialIconLink.facebook, name: 'Facebook'),
    //   ItemModel(assetLink: SocialIconLink.instagram, name: 'Instagram'),
    //   ItemModel(assetLink: SocialIconLink.x, name: 'X'),
    //   ItemModel(assetLink: SocialIconLink.linkedin, name: 'LinkedIn'),
    //   ItemModel(assetLink: SocialIconLink.github, name: 'GitHub'),
    //   ItemModel(assetLink: SocialIconLink.snapchat, name: 'Snapchat'),
    //   ItemModel(assetLink: SocialIconLink.whatsapp, name: 'WhatsApp'),
    //   ItemModel(assetLink: SocialIconLink.telegram, name: 'Telegram'),
    //   ItemModel(assetLink: SocialIconLink.youtube, name: 'YouTube'),
    //   ItemModel(assetLink: SocialIconLink.tiktok, name: 'TikTok'),
    //   ItemModel(assetLink: SocialIconLink.reddit, name: 'Reddit'),
    //   ItemModel(assetLink: SocialIconLink.soundcloud, name: 'SoundCloud'),
    //   ItemModel(assetLink: SocialIconLink.pinterest, name: 'Pinterest'),
    //   ItemModel(assetLink: SocialIconLink.thumblr, name: 'Tumblr'),
    //   ItemModel(assetLink: SocialIconLink.medium, name: 'Medium'),
    //   ItemModel(
    //       assetLink: SocialIconLink.stackoverflow, name: 'Stack Overflow'),
    //   ItemModel(assetLink: SocialIconLink.behance, name: 'Behance'),
    //   ItemModel(assetLink: SocialIconLink.dribble, name: 'Dribble'),
    //   ItemModel(assetLink: SocialIconLink.deviantart, name: 'DeviantArt'),
    //   ItemModel(assetLink: SocialIconLink.goodreads, name: 'Goodreads'),
    //   ItemModel(assetLink: SocialIconLink.strava, name: 'Strava'),
    //   ItemModel(assetLink: SocialIconLink.spotify, name: 'Spotify'),
    //   ItemModel(assetLink: SocialIconLink.steam, name: 'Steam'),
    //   ItemModel(assetLink: SocialIconLink.twitch, name: 'Twitch'),
    //   ItemModel(assetLink: SocialIconLink.flickr, name: 'Flickr'),
    //   ItemModel(assetLink: SocialIconLink.lastfm, name: 'Last.fm'),
    //   ItemModel(assetLink: SocialIconLink.clubhouse, name: 'Clubhouse'),
    //   ItemModel(assetLink: SocialIconLink.discord, name: 'Discord'),
    //   ItemModel(assetLink: SocialIconLink.gab, name: 'Gab'),
    //   ItemModel(assetLink: SocialIconLink.mewe, name: 'MeWe'),
    //   ItemModel(assetLink: SocialIconLink.parler, name: 'Parler'),
    //   ItemModel(assetLink: SocialIconLink.rumble, name: 'Rumble'),
    //   ItemModel(assetLink: SocialIconLink.triller, name: 'Triller'),
    //   ItemModel(assetLink: SocialIconLink.wechat, name: 'WeChat'),
    //   ItemModel(assetLink: SocialIconLink.viber, name: 'Viber'),
    //   ItemModel(assetLink: SocialIconLink.line, name: 'Line'),
    //   ItemModel(assetLink: SocialIconLink.qq, name: 'QQ'),
    //   ItemModel(assetLink: SocialIconLink.threads, name: 'Threads'),
    //   ItemModel(assetLink: SocialIconLink.quora, name: 'Quora'),
    // ];

    List<ItemModel> ecomItems = [
      ItemModel(assetLink: EcomImagesLink.alibaba, name: "Ali Baba"),
      ItemModel(assetLink: EcomImagesLink.aliExpress, name: "Ali Express"),
      ItemModel(assetLink: EcomImagesLink.amazon, name: "Amazon"),
      ItemModel(assetLink: EcomImagesLink.asos, name: "Asos"),
      ItemModel(assetLink: EcomImagesLink.bestBuy, name: "Best Buy"),
      ItemModel(assetLink: EcomImagesLink.costco, name: "Costco"),
      ItemModel(assetLink: EcomImagesLink.customShop, name: "Custom Shop"),
      ItemModel(assetLink: EcomImagesLink.daraz, name: "Daraz"),
      ItemModel(assetLink: EcomImagesLink.dhgate, name: "DHgate"),
      ItemModel(assetLink: EcomImagesLink.ebay, name: "eBay"),
      ItemModel(assetLink: EcomImagesLink.etsy, name: "Etsy"),
      ItemModel(assetLink: EcomImagesLink.fbShop, name: "Facebook Shop"),
      ItemModel(assetLink: EcomImagesLink.flipkart, name: "Flipkart"),
      ItemModel(assetLink: EcomImagesLink.gearbest, name: "Gearbest"),
      ItemModel(assetLink: EcomImagesLink.homeDepot, name: "Home Depot"),
      ItemModel(assetLink: EcomImagesLink.lazada, name: "Lazada"),
      ItemModel(assetLink: EcomImagesLink.newEgg, name: "Newegg"),
      ItemModel(assetLink: EcomImagesLink.overstock, name: "Overstock"),
      ItemModel(assetLink: EcomImagesLink.rakuten, name: "Rakuten"),
      ItemModel(assetLink: EcomImagesLink.shopee, name: "Shopee"),
      ItemModel(assetLink: EcomImagesLink.shopify, name: "Shopify"),
      ItemModel(assetLink: EcomImagesLink.target, name: "Target"),
      ItemModel(assetLink: EcomImagesLink.tiktokShop, name: "TikTok Shop"),
      ItemModel(assetLink: EcomImagesLink.walmart, name: "Walmart"),
      ItemModel(assetLink: EcomImagesLink.wayfair, name: "Wayfair"),
      ItemModel(assetLink: EcomImagesLink.wish, name: "Wish"),
      ItemModel(assetLink: EcomImagesLink.zappos, name: "Zappos"),
    ];

    List<ItemModel> contactLists = [
      ItemModel(assetLink: ContactImagelinks.phone, name: "Phone"),
      ItemModel(assetLink: ContactImagelinks.email, name: "Email"),
      ItemModel(assetLink: ContactImagelinks.whatsapp, name: "WhatsApp"),
      ItemModel(assetLink: ContactImagelinks.telegram, name: "Telegram"),
      ItemModel(assetLink: ContactImagelinks.skype, name: "Skype"),
      ItemModel(assetLink: ContactImagelinks.weChat, name: "WeChat"),
      ItemModel(assetLink: ContactImagelinks.viber, name: "Viber"),
      ItemModel(assetLink: ContactImagelinks.signal, name: "Signal"),
      ItemModel(assetLink: ContactImagelinks.zoom, name: "Zoom"),
      ItemModel(assetLink: ContactImagelinks.googleMeet, name: "Google Meet"),
      ItemModel(assetLink: ContactImagelinks.line, name: "Line"),
      ItemModel(assetLink: ContactImagelinks.emo, name: "Emo"),
    ];

    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Icons from Png"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Social Icons"),
            Wrap(
              children: items.map((e) => SingleItem(item: e)).toList(),
            ),
            Text("Ecommerce Icons"),
            Wrap(
              children: ecomItems.map((e) => SingleItem(item: e)).toList(),
            ),
            Text("Contact Icons"),
            Wrap(
              children: contactLists.map((e) => SingleItem(item: e)).toList(),
            ),
            // Wrap(
            //   children: nditem.map((e) => SingleItemSVG(item: e)).toList(),
            // ),
          ],
        ),
      ),
    );
  }
}
