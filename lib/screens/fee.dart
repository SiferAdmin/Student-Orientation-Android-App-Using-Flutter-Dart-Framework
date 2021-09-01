import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

class Fee extends StatefulWidget {
  Fee({Key? key}) : super(key: key);

  @override
  _FeeState createState() => _FeeState();
}

class _FeeState extends State<Fee> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Fees'),
            ),
            body:
                // Generated code for this ListView Widget...
                Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const  Text(
                          'Duly completed \nforms should be returned to any of those offices with a nonrefundable \nfee as follows:',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        const Text(
                          '• Certificate - KShs. 500;',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                       const  Text(
                          '• Undergraduate - KShs. 1,000;',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                       const  Text(
                          '• Masters and PhD - KShs.1,500,',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                        const Text(
                          'payable to Kabarak Univesity into any of the following bank \naccounts:',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        ),
                       const  Text(
                          '»»Standard Chartered Bank - 01040-943637-01 Nakuru; \n»»Co-operative Bank – 01129882644500 Nakuru; \n»»Kenya Commercial Bank - 1109663161 Nakuru; \n»»Equity Bank - 0310294445167, Nakuru Kenyatta \nAvenue \n»»Kabarak University MPESA Paybill No: 511480 \nAccount Number: Applicant\'s Name',
                          // style: TextStyle(
                          //   fontFamily: 'Poppins',
                          // ),
                        )
                      ],
                    ),
                  ),
                 const  Text(
                    'A. New Reporting students \n \nFees should be made to any of the below fee collection bank accounts integrated with student finance ERP module; \nNew & Reporting students to indicate reference number indicated on the top of your admission letter eg. Ref: XX/YYYY \nB.  Continuing students) \n \nFees should be made to any of the below fee collection bank accounts integrated with student finance ERP module; \nContinuing students to use student Reg. No as reference no (confirm that the details are correct as issued in student ID) e.g CM/M/1234/01/17 \nThe receipt for fee paid will be generated automatically and available in your student portal. If the receipt would not have been posted by the following day, please contact Student Finance through email studentfinance@kabarak.ac.ke or Phone no 0705- 184-373',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  ),
                  const Text(
                    'BANK ACCOUNTS \n \nKENYA COMMERCIAL BANK (KCB), \nBranch: Nakuru \nAccount Name: Kabarak University \nAccount No: 01109663161 \nSwift Code: KCBLKENX \nBank Code: 01 \nBranch Code: 103 \n \n  \n \nEQUITY BANK (KENYA) LTD \nBranch: Nakuru \nAccount Name: Kabarak University \nAccount No: 0310294445167 \nSwift Code: EQBLKENA \nBank Code: 68 \nBranch Code: 031 \n \n  \n \nCO-OPERATIVE BANK OF KENYA \nBranch: Nakuru \nAccount Name: Kabarak University \nAccount No: 01129882644500 \nSwift Code: KCOOKENA \nBank Code: 11 \nBranch Code: 006 \n \nOR \n \nSTANDARD CHARTERED BANK \nBranch: Nakuru \nAccount Name: Kabarak University \nAccount No: 0104094363701 \nSwift Code: SCBLKENX \nBank Code: 02 \nBranch Code: 009 \n \nIndicate student registration number as reference and produce result slip to finance office \nACCESS BANK  PLC  (Formerly Transnational Bank) \nBranch: Nakuru \nAccount Name: Kabarak University \nAccount No: 0040100000483 \nSwift Code: TNBLKENA \nBank Code 26 \nBranch Code: 004 \n \nIndicate student registration number as reference and produce result slip to finance office \nOR \n \nFEES PAYMENT VIA M-PESA \n \nMPESA PayBill \nBusiness number 983100 \nAccount number:  Enter your Registration Number  e.g CM/M/1234/01/17 \n \nForward confirmation message to studentfinance@kabarak.ac.ke  \n \n  \n \nC.  Application and other Charges \n \nOther fees such as application fee, medical centre charges and imprest refunds should be paid through the following channels; \n \nM-PESA PAYBILL \n \nBusiness number 511480 \nEnter your Name as account number. \n \nOR \n \nACCESS BANK  PLC  (Formerly Transnational Bank) \nAccount Name: Kabarak University \nAccount No: 0040100000483',
                    // style: TextStyle(
                    //   fontFamily: 'Poppins',
                    // ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
