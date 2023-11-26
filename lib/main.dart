import 'package:flutter/material.dart';

void main() {
  runApp(LanguageLearningApp());
}

class LanguageLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, // Customize the primary color
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language Learning App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select a Language to Learn",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            LanguageCard(
              languageName: "Spanish",
              languageFlag: "🇪🇸",
              onPressed: () {
                // Handle selection of Spanish language
                // You can navigate to the Spanish learning content
              },
            ),
            LanguageCard(
              languageName: "French",
              languageFlag: "🇫🇷",
              onPressed: () {
                // Handle selection of French language
                // You can navigate to the French learning content
              },
            ),
            LanguageCard(
              languageName: "German",
              languageFlag: "🇩🇪",
              onPressed: () {
                // Handle selection of German language
                // You can navigate to the German learning content
              },
            ),
            LanguageCard(
              languageName: "Polish",
              languageFlag: "🇵🇱", // Add the Polish flag emoji
              onPressed: () {
                // Handle selection of Polish language
                // You can navigate to the Polish learning content
              },
            ),
            LanguageCard(
              languageName: "Czech",
              languageFlag: "🇨🇿", // Add the Czech flag emoji
              onPressed: () {
                // Handle selection of Czech language
                // You can navigate to the Czech learning content
              },
            ),
            LanguageCard(
              languageName: "Maori",
              languageFlag: "🇳🇿", // Add the New Zealand (Maori) flag emoji
              onPressed: () {
                // Handle selection of Maori language
                // You can navigate to the Maori learning content
              },
            ),
          ],
        ),
      ),
    );
  }
}


class LanguageCard extends StatelessWidget {
  final String languageName;
  final String languageFlag;
  final VoidCallback onPressed;

  LanguageCard({
    required this.languageName,
    required this.languageFlag,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            languageName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            languageFlag,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
