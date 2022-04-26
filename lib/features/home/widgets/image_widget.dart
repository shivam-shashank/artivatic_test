import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;

  const ImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return imageUrl == ''
        ? Image.asset(
            "assets/images/no_image_available.png",
            width: _size.width * 0.2,
            height: _size.width * 0.2,
            fit: BoxFit.fill,
          )
        : Image.network(
            imageUrl,
            width: _size.width * 0.2,
            height: _size.width * 0.2,
            fit: BoxFit.fill,
            loadingBuilder: (
              BuildContext context,
              Widget child,
              ImageChunkEvent? loadingProgress,
            ) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
            errorBuilder: (
              BuildContext context,
              Object exception,
              StackTrace? stackTrace,
            ) {
              return const Text('error image...');
            },
          );
  }
}
