import 'package:decipher/screens/note/noteQuillToolbar.dart';
import 'package:decipher/theme/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_quill/flutter_quill.dart';

class NoteQuill extends StatefulWidget {
  const NoteQuill({super.key});

  @override
  State<NoteQuill> createState() => _NoteQuillState();
}

class _NoteQuillState extends State<NoteQuill> {
  final QuillController _controller = QuillController.basic();
  List<dynamic> noteValue = [];

  @override
  void initState() {
    _controller.addListener(() {
      noteValue = _controller.document.toDelta().toJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return QuillProvider(
      configurations: QuillConfigurations(
        controller: _controller,
        sharedConfigurations: const QuillSharedConfigurations(
          locale: Locale('en'),
        ),
      ),
      child: Container(
        child: Expanded(
          child: Column(
            children: [
              NoteQuillToolbar(controller: _controller),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: QuillEditor.basic(
                  configurations: QuillEditorConfigurations(
                    readOnly: false,
                    scrollable: true,
                    minHeight: double.infinity,
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
                      lists: DefaultListBlockStyle(
                          regularText.copyWith(fontSize: 16),
                          const VerticalSpacing(1, 1),
                          const VerticalSpacing(1, 1),
                          const BoxDecoration(),
                          null),
                      leading: DefaultTextBlockStyle(
                          regularText.copyWith(fontSize: 16),
                          const VerticalSpacing(1, 1),
                          const VerticalSpacing(1, 1),
                          const BoxDecoration()),
                      color: const Color(0xFFE5E5E5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
