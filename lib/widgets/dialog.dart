import 'package:flutter/material.dart';

showMessage({
  @required BuildContext context,
  @required WidgetBuilder builder,
  bool barrierDismissible = true,
  Color barrierColor,
  Duration duration = const Duration(seconds: 2),
}) {
  bool _show = true;
  Future.delayed(duration, () {
    if (_show) Navigator.of(context).pop();
  });
  showGeneralDialog(
    context: context, 
    barrierColor: barrierColor,
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    transitionDuration: const Duration(milliseconds: 150),
    pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
      final ThemeData theme = Theme.of(context, shadowThemeOnly: true);
      final Widget pageChild = Builder(builder: builder);
      return SafeArea(
        child: Builder(
          builder: (BuildContext context) {
            return theme != null ? Theme(data: theme, child: pageChild) : pageChild;
          }
        ),
      );
    },
  ).then((_){
    _show = false;
  });
}

class MessageDialog extends StatelessWidget {

  MessageDialog({Key key, this.icon, this.message}) : super(key:key);

  final Icon icon;
  final String message;

  @override
  Widget build(BuildContext context) {
    return _Dialog(
      backgroundColor: Colors.transparent, 
      elevation: 0,
      child: Container(
        width: 140,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(13)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            icon ?? Icon(Icons.info_outline, size: 65, color: Colors.white),
            Text("$message", style: TextStyle(color: Colors.white, fontSize: 16),),
          ],
        ),
      ),
    );
  }
}

class _Dialog extends Dialog {

  const _Dialog({
    Key key,
    this.backgroundColor,
    this.elevation,
    this.insetAnimationDuration = const Duration(milliseconds: 100),
    this.insetAnimationCurve = Curves.decelerate,
    this.shape,
    this.child,
  }) : super(key: key);

  final Color backgroundColor;
  final Duration insetAnimationDuration;
  final Curve insetAnimationCurve;
  final double elevation;
  final ShapeBorder shape;
  final Widget child;

  static const RoundedRectangleBorder _defaultDialogShape =
    RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.0)));

  static const double _defaultElevation = 24.0;

  @override
  Widget build(BuildContext context) {
    final DialogTheme dialogTheme = DialogTheme.of(context);
    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets + const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 50.0),
            child: Material(
              color: backgroundColor ?? dialogTheme.backgroundColor ?? Theme.of(context).dialogBackgroundColor,
              elevation: elevation ?? dialogTheme.elevation ?? _defaultElevation,
              shape: shape ?? dialogTheme.shape ?? _defaultDialogShape,
              type: MaterialType.card,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}