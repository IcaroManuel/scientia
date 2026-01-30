import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/app_colors.dart';

void main() {
  runApp(const AestheticsClinicApp());
}

class AestheticsClinicApp extends StatelessWidget {
  const AestheticsClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aesthetics Clinic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.poppinsTextTheme(), // Fonte moderna
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const Placeholder(), // Vamos substituir pela HomeScreen em breve
    );
  }
}
