import 'package:flutter/material.dart';

class HeaderIconButton extends StatefulWidget {
  final IconData icon;
  final Color initialColor;
  final Color activeColor;
  final String message;

  const HeaderIconButton({
    super.key,
    required this.icon,
    this.initialColor = Colors.white,
    this.activeColor = Colors.indigo,
    this.message = 'Botón presionado',
  });

  @override
  State<HeaderIconButton> createState() => _HeaderIconButtonState();
}

class _HeaderIconButtonState extends State<HeaderIconButton> {
  bool _isActive = false;

  void _handlePressed(BuildContext context) {
    setState(() {
      _isActive = !_isActive;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(widget.message),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: _isActive ? widget.activeColor : widget.initialColor,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        elevation: 4,
      ),
      onPressed: () => _handlePressed(context),
      child: Icon(
        widget.icon,
        color: _isActive ? Colors.white : Colors.indigo,
        size: 22,
      ),
    );
  }
}
