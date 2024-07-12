import 'package:flutter/material.dart';

import '../resources/app_text.dart';

class AppFormField extends StatefulWidget {
  const AppFormField({
    super.key,
    this.label,
    this.initialText,
    this.textColor,
    this.hintText,
    this.errorText,
    this.isEnabled = true,
    this.unfocusOnComplete = true,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.focusListener,
    this.onEditingComplete,
  });

  factory AppFormField.text({
    Color? textColor,
    String? title,
    String? initialText,
    required String hintText,
    String? errorText,
    bool isEnabled = true,
    bool unfocusOnComplete = true,
    TextInputType keyboardType = TextInputType.text,
    TextInputAction textInputAction = TextInputAction.done,
    void Function(String)? onChanged,
    void Function(bool)? focusListener,
    void Function()? onEditingComplete,
  }) {
    return AppFormField(
      textColor: textColor,
      label: title,
      initialText: initialText,
      hintText: hintText,
      errorText: errorText,
      isEnabled: isEnabled,
      unfocusOnComplete: unfocusOnComplete,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      focusListener: focusListener,
      onEditingComplete: onEditingComplete,
    );
  }

  final String? label;
  final String? initialText;
  final String? hintText;
  final String? errorText;
  final Color? textColor;
  final bool isEnabled;
  final bool unfocusOnComplete;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String)? onChanged;
  final void Function(bool)? focusListener;
  final void Function()? onEditingComplete;

  @override
  State<AppFormField> createState() => _AppFormFieldState();
}

class _AppFormFieldState extends State<AppFormField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _setInitialData();
    super.initState();
  }

  @override
  void dispose() {
    _setDisposeData();
    super.dispose();
  }

  void _setInitialData() {
    if (widget.focusListener != null) {
      _focusNode.addListener(_focusNodeListener);
    }
  }

  void _setDisposeData() {
    if (widget.focusListener != null) {
      _focusNode.removeListener(_focusNodeListener);
    }

    _focusNode.dispose();
  }

  void _focusNodeListener() {
    if (widget.focusListener != null) {
      widget.focusListener!(_focusNode.hasFocus);
    }
  }

  InputBorder _getBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        strokeAlign: BorderSide.strokeAlignOutside,
        color: color,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(
        8,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextFormField(
        style: widget.textColor != null
            ? TextStyle(color: widget.textColor)
            : null,
        focusNode: _focusNode,
        initialValue: widget.initialText,
        cursorRadius: const Radius.circular(3.0),
        // cursorColor: Colros.mainDark.withOpacity(0.8),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          hintText: widget.hintText,

          hintStyle: AppTextStyles(context).body1Regular.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
          errorText: widget.errorText,
          errorStyle: AppTextStyles(context).body3Regular.copyWith(
                color: Theme.of(context).colorScheme.error,
              ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.label,
          labelStyle: AppTextStyles(context).body2Regular,
          enabled: widget.isEnabled,
          //  fillColor: widget.isEnabled ? Colros.w : Colros.veryLightGrey,
          filled: !widget.isEnabled,
          border: _getBorder(Theme.of(context).colorScheme.primary),
          //enabledBorder: _getBorder(Colros.lightGrey),
          focusedBorder: _getBorder(Theme.of(context).colorScheme.primary),
          errorBorder: _getBorder(Theme.of(context).colorScheme.error),
          focusedErrorBorder: _getBorder(Theme.of(context).colorScheme.error),
        ),

        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        onChanged: widget.onChanged,
        onEditingComplete: () {
          if (widget.unfocusOnComplete) {
            FocusScope.of(context).unfocus();
          }

          widget.onEditingComplete?.call();
        },
      ),
    );
  }
}
