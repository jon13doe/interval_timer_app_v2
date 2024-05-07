import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  final String? type;
  final dynamic initValue;
  final num? maxValue;
  final double fontSize;
  final String? descriptionText;

  final void Function(dynamic) onInput;

  const InputField(
      {super.key,
      this.type,
      required this.initValue,
      this.maxValue,
      required this.fontSize,
      this.descriptionText,
      required this.onInput});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late dynamic _inputValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: widget.type == 'string'
          ? 0.5 * MediaQuery.of(context).size.width
          : 1.25 * widget.fontSize,
      height: 1.2 * widget.fontSize,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: TextField(
              keyboardType: widget.type == 'string'
                  ? TextInputType.text
                  : TextInputType.number,
              maxLength: widget.type == 'string'
                  ? 10
                  : widget.maxValue.toString().length,
              controller: TextEditingController(
                text: widget.type == 'string'
                    ? widget.initValue
                    : widget.initValue.toString().padLeft(2, '0'),
              ),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              style: TextStyle(
                fontSize: widget.fontSize,
                fontWeight: widget.type == 'string'
                    ? FontWeight.w600
                    : FontWeight.w500,
              ),
              cursorColor: Theme.of(context).colorScheme.background,
              decoration: const InputDecoration(
                  counterText: '',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent))),
              inputFormatters: widget.type == 'string'
                  ? [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9а-яА-Я]'))]
                  : [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.done,
              onSubmitted: (text) {
                setState(() {
                  _inputValue = widget.type == 'string' ? text : num.parse(text);
                  widget.onInput(_inputValue);
                });
              },
            ),
          ),
          if (widget.descriptionText != null)
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                widget.descriptionText!,
                style: TextStyle(
                  fontSize: 0.2 * widget.fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
