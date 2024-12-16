import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        body: Center(
          child: ImageContainer(
            imageUrl: 'https://via.placeholder.com/350x150', // Example placeholder URL
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String imageUrl;

  const ImageContainer({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: AspectRatio(
        aspectRatio: 1, // Initial aspect ratio for square container
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            errorBuilder: (context, error, stackTrace) {
              return const Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red, 
                  size: 50, 
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}