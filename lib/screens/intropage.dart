import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_order_app/components/button.dart';
import 'package:my_order_app/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            // Dükkan Adı
            Text(
              "KAHVEJİ",
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28.0, color: Colors.white),
            ),

            const SizedBox(
              height: 25.0,
            ),

            //İkon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset("lib/images/image.png"),
            ),
            const SizedBox(
              height: 10.0,
            ),

            // SubTitle
            Text("ALIŞILMIŞIN DIŞINDAKİ KAHVE LEZZETİ",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44.0, color: Colors.white)),
            const SizedBox(
              height: 10.0,
            ),

// title
            Text(
              "Rahatlamak ve keyif dolu bir an için bir fincan kahvenin sıcaklığına davetlisiniz.",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),
            const SizedBox(
              height: 25.0,
            ),

            // Başlangıç butonu
             Expanded(
               child: Container(
                 child: MyButton(
                  text: "Hadi Keşfet",
                  onTap: () {
                    Navigator.pushNamed(context, '/menupage');
                  },
                             ),
               ),
             )
          ],
        ),
      ),
    );
  }
}
