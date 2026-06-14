import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String label;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionTile({
    super.key,
    required this.label,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        margin: const EdgeInsets.symmetric(vertical: 7),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFF7E57C2).withValues(alpha: 0.28)
              : const Color(0xFF9575CD).withValues(alpha: 0.13),
          borderRadius: BorderRadius.circular(30), // pill shape
          border: Border.all(
            color: isSelected
                ? const Color(0xFF7E57C2).withValues(alpha: 0.6)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            // Letter circle badge
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? const Color(0xFF7E57C2)
                    : const Color(0xFF9575CD).withValues(alpha: 0.3),
              ),
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: isSelected
                      ? Colors.white
                      : const Color(0xFF4A148C),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight:
                  isSelected ? FontWeight.w600 : FontWeight.w400,
                  color: const Color(0xFF4A148C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}