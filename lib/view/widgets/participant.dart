
import 'package:flutter/material.dart';

class ParticipantWidget extends StatelessWidget {
  const ParticipantWidget({super.key, this.imageUri, required this.isSelected});

  final String? imageUri;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 70,
      child: isSelected == false ? Placeholder() : Container(color: Colors.white.withOpacity(0.5),),
    );
  }
}