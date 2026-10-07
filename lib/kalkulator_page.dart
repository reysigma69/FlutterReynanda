import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final TextEditingController controllerAngka1 = TextEditingController();
  final TextEditingController controllerAngka2 = TextEditingController();
  String hasil = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator Ultra Pro Max")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: TextField(
              controller: controllerAngka1,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(hint: Text("Masukkin angka 1 nya disini ya sayanggg"))),
          ),
          Container(
            margin: EdgeInsets.all(40),
            child: TextField(
              controller: controllerAngka2,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(hint: Text("Jangan lupa angka 2 nya jugaa"))
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    double a1 = double.tryParse(controllerAngka1.text) ?? 0;
                    double a2 = double.tryParse(controllerAngka2.text) ?? 0;
                    hasil = (a1 + a2).toString();
                  });
                },
                child: Text(
                "+", 
                  style: TextStyle(
                    fontSize: 45, 
                    color: const Color.fromARGB(255, 255, 241, 84),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    double a1 = double.tryParse(controllerAngka1.text) ?? 0;
                    double a2 = double.tryParse(controllerAngka2.text) ?? 0;
                    hasil = (a1 - a2).toString();
                  });
                },
                child: Text(
                "-", 
                  style: TextStyle(
                    fontSize: 45, 
                    color: const Color.fromARGB(255, 255, 241, 84),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    double a1 = double.tryParse(controllerAngka1.text) ?? 0;
                    double a2 = double.tryParse(controllerAngka2.text) ?? 0;
                    hasil = (a1 * a2).toString();
                  });
                },
                child: Text(
                "X", 
                  style: TextStyle(
                    fontSize: 45, 
                    color: const Color.fromARGB(255, 255, 241, 84),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    double a1 = double.tryParse(controllerAngka1.text) ?? 0;
                    double a2 = double.tryParse(controllerAngka2.text) ?? 0;
                    hasil = (a1 / a2).toString();
                  });
                },
                child: Text(
                "/", 
                  style: TextStyle(
                    fontSize: 45, 
                    color: const Color.fromARGB(255, 255, 241, 84),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
              const SizedBox(height: 40),
              Text(
                "Result: $hasil",
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    controllerAngka1.clear();
                    controllerAngka2.clear();
                    hasil = "0";
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}