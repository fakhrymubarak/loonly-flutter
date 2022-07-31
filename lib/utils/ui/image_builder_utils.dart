import 'package:flutter/material.dart';

loadingImageProgress(ImageChunkEvent chunkEvent) => Center(
      child: CircularProgressIndicator(
        value: (chunkEvent.expectedTotalBytes != null)
            ? chunkEvent.cumulativeBytesLoaded / chunkEvent.expectedTotalBytes!
            : null,
      ),
    );