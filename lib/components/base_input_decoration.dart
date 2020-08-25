import 'package:flutter/material.dart';

class BaseInputDecoration extends InputDecoration {
  BaseInputDecoration({ThemeData theme, String labelText, String hintText})
      : super(
          alignLabelWithHint: true,
          labelText: labelText,
          hintText: hintText,
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(color: theme.errorColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(color: theme.errorColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(2.0)),
            borderSide: BorderSide(color: theme.accentColor),
          ),
        );
}
