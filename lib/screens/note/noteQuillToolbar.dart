import 'package:decipher/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class QuillIconButton extends StatelessWidget {
  final QuillController controller;
  final IconData iconData;
  final Attribute attribute;

  const QuillIconButton(
      {super.key,
      required this.controller,
      required this.iconData,
      required this.attribute});

  @override
  Widget build(BuildContext context) {
    return QuillToolbarToggleStyleButton(
      attribute: attribute,
      controller: controller,
      options: QuillToolbarToggleStyleButtonOptions(
        fillColor: AppThemeColor.primary,
        iconData: iconData,
        iconSize: 20,
        iconTheme: const QuillIconTheme(
          borderRadius: 10,
          iconSelectedColor: Colors.white,
        ),
      ),
    );
  }
}

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
            color: AppThemeColor.bgColor,
            toolbarIconAlignment: WrapAlignment.spaceAround,
            childrenBuilder: (context) {
              final controller = this.controller;
              return [
                Expanded(
                  child: Wrap(
                    spacing: 10.0,
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.format_bold,
                        attribute: Attribute.bold,
                      ),
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.format_italic,
                        attribute: Attribute.italic,
                      ),
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.format_underline,
                        attribute: Attribute.underline,
                      ),
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.format_list_numbered,
                        attribute: Attribute.ol,
                      ),
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.format_list_bulleted,
                        attribute: Attribute.ul,
                      ),
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.format_quote,
                        attribute: Attribute.blockQuote,
                      ),
                      QuillIconButton(
                        controller: controller,
                        iconData: Icons.check_box,
                        attribute: Attribute.unchecked,
                      ),
                      QuillToolbarColorButton(
                        controller: controller,
                        isBackground: false,
                        options: const QuillToolbarColorButtonOptions(
                          iconSize: 20,
                          iconTheme: QuillIconTheme(borderRadius: 10),
                        ),
                      )
                    ],
                  ),
                ),
              ];
            }),
      ),
    );
  }
}
