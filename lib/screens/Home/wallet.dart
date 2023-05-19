import 'package:flutter/material.dart';
import 'package:green_life/sheard.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.recycling,size: 32,),
                  SizedBox(height: 12,),
                  sharedText(txt: 'P 22.078',color: Colors.white,fontSize: 32),
                  SizedBox(height: 12,),
                  sharedText(txt: 'Wallet Balance',color: Colors.grey),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.heart_broken,color: kPrimaryColor,size: 28,),
                      sharedText(txt: 'Donate',fontSize: 16),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.monetization_on_sharp,color: kPrimaryColor,size: 28,),
                      sharedText(txt: 'Cach',fontSize: 16),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_gas_station_rounded,color: kPrimaryColor,size: 28,),
                      sharedText(txt: 'Gas',fontSize: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                sharedText(txt: 'Transaction',fontSize: 20),
                Spacer(),
                sharedText(txt: 'All',fontSize: 20,color: Colors.red),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return TransactionItem(
                  transactionType: 'Expense',
                  date: 'May 17, 2023',
                  amount: '-\$123.45',
                  description: 'Grocery shopping',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String transactionType;
  final String date;
  final String amount;
  final String description;

  TransactionItem({
    required this.transactionType,
    required this.date,
    required this.amount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundColor: kPrimaryColor,child: Icon(Icons.recycling)),
      title: sharedText(txt: transactionType),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        // TODO: Implement transaction detail screen
      },
    );
  }
}
