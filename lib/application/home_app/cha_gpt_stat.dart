import 'package:chatgpt_powered_chatbot/domain/message_model.dart';
import 'package:equatable/equatable.dart';

class ChatGptState extends Equatable {
  final List<MessageModel> messages;
  final bool isLoading;
  final bool isRecording;
  final int percentage;
  final String textFromMic;
  final bool isSpeakEnabled;

  const ChatGptState({
    required this.isLoading,
    required this.messages,
    required this.isRecording,
    required this.percentage,
    required this.textFromMic,
    required this.isSpeakEnabled,
  });

  factory ChatGptState.init() => const ChatGptState(
        isLoading: false,
        messages: [],
        isRecording: false,
        percentage: 1,
        textFromMic: "",
        isSpeakEnabled: false,
      );

  ChatGptState copyWith({
    bool? isLoading,
    List<MessageModel>? messages,
    bool? isRecording,
    int? percenTage,
    String? textFromMic,
    bool? isSpeakEnabled,
  }) => ChatGptState(
        isLoading: isLoading ?? this.isLoading,
        messages: messages ?? this.messages,
        isRecording: isRecording ?? this.isRecording,
        percentage: percenTage ?? percentage,
        textFromMic: textFromMic ?? this.textFromMic,
        isSpeakEnabled: isSpeakEnabled ?? this.isSpeakEnabled,
      );

  @override
  List<Object?> get props => [
        messages,
        isLoading,
        isRecording,
        percentage,
        textFromMic,
        isSpeakEnabled
      ];
}
