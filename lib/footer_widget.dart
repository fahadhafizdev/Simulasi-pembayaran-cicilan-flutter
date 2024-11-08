import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Happy Car Dealer',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black, // Menggunakan warna tulisan hitam
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Dealer Mobil Terpercaya untuk Semua Kebutuhan Kendaraan Anda',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87, // Warna tulisan hitam agak transparan
          ),
        ),
        SizedBox(height: 20),
        Divider(
          color: Colors.black54, // Garis pemisah berwarna hitam transparan
          thickness: 0.5,
        ),
        SizedBox(height: 10),
        _buildFooterItem(
            'Alamat', 'Jl. Raya Mobil No. 123, Jakarta, Indonesia'),
        _buildFooterItem('Telepon', '(021) 1234 5678'),
        _buildFooterItem('Email', 'info@happycardealer.com'),
        _buildFooterItem('Website', 'www.happycardealer.com'),
        SizedBox(height: 40),
      ],
    );
  }

  Widget _buildFooterItem(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Menggunakan warna tulisan hitam
            ),
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54, // Warna tulisan hitam transparan
              ),
            ),
          ),
        ],
      ),
    );
  }
}
