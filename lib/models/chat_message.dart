enum ChatRole { user, assistant }

class ChatMessage {
  final ChatRole role;
  final String text;
  final DateTime timestamp;

  ChatMessage({
    required this.role,
    required this.text,
    DateTime? timestamp,
  }) : timestamp = timestamp ?? DateTime.now();

  bool get isUser => role == ChatRole.user;

  Map<String, String> toApiMessage() {
    return {
      'role': role == ChatRole.user ? 'user' : 'assistant',
      'content': text,
    };
  }
}