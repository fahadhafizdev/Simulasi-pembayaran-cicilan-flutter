import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:menghitung_angsuran/about_page.dart';
import 'package:menghitung_angsuran/config/config.dart';
import 'package:menghitung_angsuran/config/utils/util_currency_format.dart';
import 'package:menghitung_angsuran/contact_page.dart';
import 'package:menghitung_angsuran/footer_widget.dart';
import 'package:menghitung_angsuran/widgets/custom_button.dart';
import 'package:menghitung_angsuran/widgets/custom_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController carPrice = TextEditingController(text: '');
  TextEditingController dpPrice = TextEditingController(text: '');
  TextEditingController tenorPrice = TextEditingController(text: '');

  double _monthlyInstallment = 0.0;
  double _totalInterest = 0.0;

  int navigationSelected = 0;

  final List<String> imageUrls = [
    'assets/banner2.jpg',
    'assets/banner1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    Widget imageSlider() {
      return SizedBox(
        height: 300,
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              imageUrls[index],
              fit: BoxFit.cover,
              width: double.infinity,
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            viewportFraction: 1.0,
          ),
        ),
      );
    }

    Widget calculationView() {
      return SizedBox(
        width: 800,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Harga Mobil',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    UtilCurrencyFormat()
                        .currency1(int.tryParse(carPrice.text) ?? 0),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'DP',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${dpPrice.text} %',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Tenor',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${tenorPrice.text} Tahun',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Jumlah Angsuran',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    '${UtilCurrencyFormat().currency1(_monthlyInstallment.toInt())} / Bulan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget headerNavigation() {
      return Row(
        children: [
          Image.asset(
            'assets/logo.jpeg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 15),
          GestureDetector(
            onTap: () {
              setState(() {
                navigationSelected = 0;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(30),
              color: AppColor.mainColor
                  .withOpacity(navigationSelected == 0 ? 0.5 : 0.1),
              child: Text(
                'Beranda',
                style: TextStyle(
                  color: AppColor.black1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                navigationSelected = 1;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(30),
              color: AppColor.mainColor
                  .withOpacity(navigationSelected == 1 ? 0.5 : 0.1),
              child: Text(
                'About',
                style: TextStyle(
                  color: AppColor.black1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                navigationSelected = 2;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(30),
              color: AppColor.mainColor
                  .withOpacity(navigationSelected == 2 ? 0.5 : 0.1),
              child: Text(
                'Contact',
                style: TextStyle(
                  color: AppColor.black1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget calculationInput() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Simulasi Pembiayaan & Cicilan',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          SizedBox(height: 20),
          Text(
            'Harga Mobil',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 5),
          CustomTextField(
            controller: carPrice,
            hint: 'Harga Mobil',
          ),
          SizedBox(height: 20),
          Text(
            'DP',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 5),
          CustomTextField(
            controller: dpPrice,
            hint: 'DP',
          ),
          SizedBox(height: 20),
          Text(
            'Tenor',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 5),
          CustomTextField(
            controller: tenorPrice,
            hint: 'Tenor',
          ),
          SizedBox(height: 20),
          CustomButton(
            isLoading: false,
            func: () => _calculateInstallment(),
            text: 'Hitung',
            btnStyle: AppButtonStyle.btnDefault,
          ),
        ],
      );
    }

    Widget berandaView() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          imageSlider(),
          SizedBox(height: 20),
          calculationInput(),
          SizedBox(height: 20),
          const Divider(),
          SizedBox(height: 20),
          calculationView(),
          SizedBox(height: 40),
        ],
      );
    }

    Widget content() {
      switch (navigationSelected) {
        case 0:
          return berandaView();

        case 1:
          return AboutPage();

        case 2:
          return ContactPage();

        default:
          return berandaView();
      }
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              headerNavigation(),
              content(),
              const SizedBox(height: 40),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void _calculateInstallment() {
    double price = double.tryParse(carPrice.text) ?? 0.0;
    double dpPercent = double.tryParse(dpPrice.text) ?? 0.0;
    int tenorYears = int.tryParse(tenorPrice.text) ?? 0;

    double downPayment = dpPercent / 100 * price;
    double interest = 0.20 * price;
    int tenorMonths = tenorYears * 12;

    if (tenorMonths > 0) {
      setState(() {
        _totalInterest = interest;
        _monthlyInstallment = ((price + interest - downPayment) / tenorMonths);
      });
    }

    print(
      'jumlah angsuran : $_totalInterest || $_monthlyInstallment || ${UtilCurrencyFormat().currency1(_monthlyInstallment.toInt())}',
    );
  }
}
