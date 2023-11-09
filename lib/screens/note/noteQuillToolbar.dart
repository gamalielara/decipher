import 'package:decipher/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class NoteQuillToolbar extends StatelessWidget {
  final QuillController controller;

  const NoteQuillToolbar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return QuillToolbarProvider(
      toolbarConfigurations: const QuillToolbarConfigurations(),
      child: QuillBaseToolbar(
        configurations: QuillBaseToolbarConfigurations(
            toolbarSize: 25 * 2,
            multiRowsDisplay: false,
            color: AppThemeColor.primary,
            toolbarIconAlignment: WrapAlignment.spaceAround,
            childrenBuilder: (context) {
              final controller = this.controller;
              return [
                Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10,
                        children: [
                          QuillToolbarToggleStyleButton(
                            attribute: Attribute.bold,
                            controller: controller,
                            options: const QuillToolbarToggleStyleButtonOptions(
                              iconData: Icons.format_bold,
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarToggleStyleButton(
                            attribute: Attribute.italic,
                            controller: controller,
                            options: const QuillToolbarToggleStyleButtonOptions(
                              iconData: Icons.format_italic,
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarToggleStyleButton(
                            attribute: Attribute.underline,
                            controller: controller,
                            options: const QuillToolbarToggleStyleButtonOptions(
                              iconData: Icons.format_underline,
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarClearFormatButton(
                            controller: controller,
                            options: const QuillToolbarClearFormatButtonOptions(
                              iconData: Icons.format_clear,
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarSelectHeaderStyleButtons(
                            controller: controller,
                            options:
                            const QuillToolbarSelectHeaderStyleButtonsOptions(
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarToggleStyleButton(
                            attribute: Attribute.ol,
                            controller: controller,
                            options: const QuillToolbarToggleStyleButtonOptions(
                              iconData: Icons.format_list_numbered,
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarToggleStyleButton(
                            attribute: Attribute.ul,
                            controller: controller,
                            options: const QuillToolbarToggleStyleButtonOptions(
                              iconData: Icons.format_list_bulleted,
                              iconSize: 20,
                            ),
                          ),
                          QuillToolbarToggleStyleButton(
                            attribute: Attribute.blockQuote,
                            controller: controller,
                            options: const QuillToolbarToggleStyleButtonOptions(
                              iconData: Icons.format_quote,
                              iconSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
              ];
            }),
      ),
    );
  }
}
