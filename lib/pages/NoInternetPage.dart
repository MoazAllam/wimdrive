import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/noInternet.png',
              width: screenWidth,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Ooops!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Il semble qu'il y ait un problème avec votre connexion Internet. Veuillez vous connecter à Internet et rouvrir l'application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () => AppSettings.openWIFISettings(),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xff0A85ED),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    width: screenWidth / 1.8,
                    child: const Text(
                      "ouvrir le Wi-Fi",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                const Icon(
                  Icons.refresh,
                  color: Colors.black54,
                  size: 22.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
