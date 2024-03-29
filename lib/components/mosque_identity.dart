import 'package:flutter/material.dart';

class MosqueIdentity extends StatelessWidget {
  final String mosqueName;
  final String mosqueLocation;
  final String mosquePhone;

  MosqueIdentity({
    super.key,
    required this.mosqueName,
    required this.mosqueLocation,
    required this.mosquePhone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 15,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 50),
              Text(
                "Masjid $mosqueName",
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 50),
              const Text(
                "Edit",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              const Icon(Icons.location_on_outlined),
              const SizedBox(width: 10),
              Text(
                "Masjid $mosqueLocation",
                overflow: TextOverflow.visible,
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              const Icon(Icons.phone),
              const SizedBox(width: 10),
              Text(
                "Masjid $mosquePhone",
                overflow: TextOverflow.visible,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
