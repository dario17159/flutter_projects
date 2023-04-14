enum FromWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });

  factory Message.fromMap(Map<String, dynamic> map) => Message(
        text: map['answer'],
        fromWho: FromWho.hers,
        imageUrl: map['image'],
      );
}
