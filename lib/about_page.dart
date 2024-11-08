import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Tentang Kami'),
          _buildSectionContent(
            'Happy Car Dealer adalah dealer mobil terkemuka yang menawarkan berbagai pilihan kendaraan berkualitas dengan layanan terbaik. Kami berdedikasi untuk menyediakan pengalaman membeli mobil yang menyenangkan, terpercaya, dan transparan bagi setiap pelanggan. Dengan berbagai merek dan model, kami memenuhi berbagai kebutuhan mobilitas Anda, mulai dari mobil keluarga, kendaraan komersial, hingga mobil sport.\n\nKami berkomitmen untuk memberikan pilihan terbaik bagi pelanggan dengan harga yang kompetitif, pelayanan purna jual yang memuaskan, serta berbagai fasilitas yang memudahkan proses pembelian dan perawatan kendaraan.',
          ),
          _buildSectionTitle('Visi'),
          _buildSectionContent(
            'Menjadi dealer mobil yang paling dipercaya di Indonesia, menyediakan solusi mobilitas yang inovatif dan berkualitas untuk setiap keluarga dan perusahaan.',
          ),
          _buildSectionTitle('Misi'),
          _buildSectionContent(
            '• Menyediakan pilihan mobil yang beragam dengan harga terbaik.\n• Memberikan layanan pelanggan yang ramah dan profesional.\n• Menyediakan kemudahan dalam pembiayaan dan proses administrasi kendaraan.\n• Menjamin kepuasan pelanggan melalui pelayanan purna jual yang optimal.',
          ),
          _buildSectionTitle('Produk & Layanan'),
          _buildSectionContent(
            '• Penjualan Mobil Baru: Kami menyediakan berbagai merek mobil baru, dari kendaraan keluarga hingga mobil mewah.\n• Penjualan Mobil Bekas: Pilihan mobil bekas berkualitas dengan garansi dan inspeksi menyeluruh.\n• Pembiayaan Mobil: Solusi pembiayaan melalui kerja sama dengan lembaga keuangan terkemuka, termasuk cicilan yang dapat disesuaikan dengan kemampuan Anda.\n• Layanan Purna Jual: Perawatan dan perbaikan kendaraan dengan teknisi berlisensi dan suku cadang asli.\n• Trade-in Mobil: Tukar tambah kendaraan lama Anda dengan harga terbaik.',
          ),
          _buildSectionTitle('Mengapa Memilih Happy Car Dealer?'),
          _buildSectionContent(
            '• Pilihan Mobil Lengkap: Kami menawarkan berbagai pilihan mobil dari berbagai merek terkenal.\n• Harga Bersaing: Kami memberikan harga yang kompetitif dengan berbagai promo menarik.\n• Proses Mudah & Cepat: Proses pembelian mobil yang mudah, dari pemilihan hingga pengiriman.\n• Layanan Pelanggan Terbaik: Tim kami siap memberikan pelayanan yang ramah dan membantu Anda sepanjang proses pembelian dan pemeliharaan mobil.\n• Jaminan Kualitas: Semua kendaraan yang kami jual, baik baru maupun bekas, telah melalui pemeriksaan kualitas yang ketat.',
          ),
          _buildSectionTitle('Hubungi Kami'),
          _buildSectionContent(
            'Kami selalu siap membantu Anda. Kunjungi showroom kami atau hubungi kami melalui telepon/email untuk mendapatkan informasi lebih lanjut mengenai produk dan layanan kami.',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
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
