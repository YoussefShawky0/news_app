import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/entertaiment.avif',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Breaking News: Flutter 3.0 Released!',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'BungeeSpice',
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4.0),
          const Text(
            'Flutter 3.0 has been released with exciting new features and improvements. Check out the latest updates and enhancements in this version.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'PosetsenOne',
              color: Color.fromARGB(255, 130, 130, 130),
            ),
          ),
        ],
      ),
    );
  }
}
