import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onSubmit;
  // final Function(String message) onSubmit;

  const MessageFieldBox({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          onSubmit(textValue.trim());
          textController.clear();
        },
      ),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        controller: textController,
        focusNode: focusNode,
        decoration: inputDecoration,
        textCapitalization: TextCapitalization.sentences,
        onTapOutside: (event) {
          focusNode.unfocus();
        },
        onFieldSubmitted: (value) {
          onSubmit(value.trim());
          textController.clear();
          focusNode.requestFocus();
        },
      ),
    );
  }
}
