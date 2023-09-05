import 'package:flutter/material.dart';
import 'package:flutter_application_2/assistant_methods/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingDialog extends StatefulWidget {
  const SettingDialog({super.key});

  @override
  State<SettingDialog> createState() => _SettingDialogState();
}

class _SettingDialogState extends State<SettingDialog> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Consumer<SettingProvider>(
      builder: (context, provider, child) {
        return Dialog(
          backgroundColor: Colors.white,
          elevation: 8,
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 10, width: 20),
                      const Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenheight * 0.01),
                  const Divider(height: 1, thickness: 1, color: Colors.grey),
                  SizedBox(height: screenheight * 0.01),
                  SizedBox(height: screenheight * 0.01),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      color: Colors.white10,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "   Sound",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Switch(
                            value: provider.soundState,
                            onChanged: (value) =>
                                provider.changeSoundState(context, value),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenheight * 0.01),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
