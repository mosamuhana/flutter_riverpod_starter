import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

Future<bool> launchUrl(Uri url, {BuildContext? context}) async {
  dynamic error;
  try {
    if (await launcher.canLaunchUrl(url)) {
      return await launcher.launchUrl(url);
    } else {
      error = Exception('Could not launch $url');
    }
  } catch (e) {
    error = e;
  }

  if (error != null) {
    if (context != null) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$error', style: const TextStyle(color: Colors.red)),
        ),
      );
    } else {
      throw error;
    }
  }

  return false;
}
