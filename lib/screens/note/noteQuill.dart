import 'package:flutter/cupertino.dart';
import 'package:flutter_quill/flutter_quill.dart';

class NoteQuill extends StatelessWidget {
  const NoteQuill({super.key});

  @override
  Widget build(BuildContext context) {
    final QuillController _controller = QuillController.basic();

    return QuillProvider(
      configurations: QuillConfigurations(
        controller: _controller,
        sharedConfigurations: const QuillSharedConfigurations(
          locale: Locale('en'),
        ),
      ),
      child: Column(
        children: [
          QuillToolbar(),
          Container(
            child: QuillEditor.basic(
              configurations: const QuillEditorConfigurations(
                readOnly: false,
              ),
            ),
          )
        ],
      ),
    );
  }
}
