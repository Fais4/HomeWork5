import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                height: MediaQuery.sizeOf(context).height * 0.2,
                color: Colors.amber,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.blue,
              ),
              // Image.network(
              // "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.daily.co%2Fblog%2Fusing-flutter-for-cross-platform-video-application-development%2F&psig=AOvVaw1B4PH7qBRvsFnktywq4rPq&ust=1733761734802000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLiV_PTLmIoDFQAAAAAdAAAAABAE"),
            ],
          ),
        ),
      ),
    );
  }
}
