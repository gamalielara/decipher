import 'package:decipher/screens/note/noteQuillToolbar.dart';
import 'package:decipher/theme/colors.dart';
import 'package:decipher/theme/text.dart';
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
          sharedConfigurations: QuillSharedConfigurations(
            locale: Locale('en'),
          ),
        ),
        child: Container(
            child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              QuillEditor.basic(
                configurations: QuillEditorConfigurations(
                  readOnly: false,
                  scrollable: true,
                  customStyles: DefaultStyles(
                    bold: boldText,
                    paragraph: DefaultTextBlockStyle(
                        regularText.copyWith(fontSize: 16),
                        const VerticalSpacing(1, 1),
                        const VerticalSpacing(1, 1),
                        const BoxDecoration()),
                    h1: DefaultTextBlockStyle(
                        boldText.copyWith(fontSize: 25),
                        const VerticalSpacing(15, 15),
                        const VerticalSpacing(15, 15),
                        const BoxDecoration()),
                    h2: DefaultTextBlockStyle(
                        boldText.copyWith(fontSize: 20),
                        const VerticalSpacing(15, 15),
                        const VerticalSpacing(15, 15),
                        const BoxDecoration()),
                    h3: DefaultTextBlockStyle(
                        boldText.copyWith(fontSize: 15),
                        const VerticalSpacing(15, 15),
                        const VerticalSpacing(15, 15),
                        const BoxDecoration()),
                    color: const Color(0xFFE5E5E5),
                  ),
                ),
              ),
              NoteQuillToolbar(controller: _controller)
            ],
          ),
        )));
  }
}
