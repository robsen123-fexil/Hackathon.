import 'package:astu/clubs/Roundedclub.dart';
import 'package:flutter/material.dart';

class Mini extends StatelessWidget {
  const Mini({super.key});
  static String id = 'mini';

  @override
  Widget build(BuildContext context) {
    return RoundedClub(
        description:
            "Our club is dedicated to exploring the diverse and dynamic world of short-form media, including short films, animations, web series, podcasts, and social media content. We believe that great stories can be told in any format, and our goal is to celebrate and amplify the voices of emerging creators who specialize in compact, impactful storytelling.",
        image: 'images/mini.jpg',
       
        name: 'MiniMedia ASTU');
  }
}
