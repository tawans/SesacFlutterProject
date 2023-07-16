import 'package:exchange_rate/data/data_source/api/exchange_api.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final exchangeResultApi = ExchangeResultApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                exchangeResultApi.getExchangeRate('USD');
              },
              child: const Text('Get Exchange Rate'),
            ),
          ],
        ),
      ),
    );
  }
}
