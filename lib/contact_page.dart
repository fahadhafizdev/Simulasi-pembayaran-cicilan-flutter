import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle('Happy Car Dealer'),
          _buildSubtitle(
              'Dealer Mobil Terpercaya untuk Semua Kebutuhan Kendaraan Anda'),
          SizedBox(height: 20),
          _buildSectionTitle('Alamat'),
          _buildSectionContent('Jl. Raya Mobil No. 123, Jakarta, Indonesia'),
          SizedBox(height: 10),
          _buildSectionTitle('Telepon'),
          _buildSectionContent('(021) 1234 5678'),
          SizedBox(height: 10),
          _buildSectionTitle('Email'),
          _buildSectionContent('info@happycardealer.com'),
          SizedBox(height: 10),
          _buildSectionTitle('Website'),
          _buildSectionContent('www.happycardealer.com'),
        ],
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSubtitle(String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        subtitle,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
