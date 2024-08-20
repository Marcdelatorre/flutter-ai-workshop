import 'dart:typed_data';

import 'package:flutter_ai_workshop/domain/ai_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:mime/mime.dart';
import 'package:rxdart/rxdart.dart';

class GeminiService extends AiService {
  final GenerativeModel _model;

  GeminiService()
      : _model = GenerativeModel(
          model: 'gemini-1.5-flash',
          apiKey: dotenv.env['GEMINI_API_KEY']!,
        );

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<String?> generateContent(String prompt) {
    // TODO: implement generateContent
    throw UnimplementedError();
  }

  @override
  Future<String?> describeImage(Uint8List imageInBytes) {
    // TODO: implement describeImage
    throw UnimplementedError();
  }

  @override
  Future<String?> guessLocationOfImage(Uint8List imageInBytes) {
    // TODO: implement guessLocationOfImage
    throw UnimplementedError();
  }

  @override
  Stream<String?> generateTextStream(String prompt) {
    // TODO: implement generateTextStream
    throw UnimplementedError();
  }
}



///  Future<String> describeImage(Uint8List imageInBytes) async {
///    final mimeType = lookupMimeType('image', headerBytes: imageInBytes) ?? 'image/*';
///
///    final imageContent = DataPart(mimeType, imageInBytes);
///    final describeImagePrompt = TextPart('Describe this image:');
///
///    final prompt = Content.multi([describeImagePrompt, imageContent]);
///
///    final response = await visionModel.generateContent([prompt]);
///
///    return response.text ?? 'No description found for this image, try again!';
///  }
///
///    Future<String> describeImage(Uint8List imageInBytes) async {
///    final mimeType = lookupMimeType('image', headerBytes: imageInBytes) ?? 'image/*';
///
///    final imageContent = DataPart(mimeType, imageInBytes);
///    final describeImagePrompt = TextPart('Describe this image:');
///
///    final prompt = Content.multi([describeImagePrompt, imageContent]);
///
///    final response = await visionModel.generateContent([prompt]);
///
///    return response.text ?? 'No description found for this image, try again!';
///  } 
///
