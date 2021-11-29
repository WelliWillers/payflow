import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;
  final bool stopscanner;


  BarcodeScannerStatus({
    this.isCameraAvailable = false,
    this.stopscanner = false,
    this.error = "",
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available() => 
      BarcodeScannerStatus(
        isCameraAvailable: true,
        stopscanner: false,
      );

  factory BarcodeScannerStatus.error(String message) => 
      BarcodeScannerStatus(
        error: message,
        stopscanner: true,
      );

  factory BarcodeScannerStatus.barcode(String barcode) => 
      BarcodeScannerStatus(
        barcode: barcode,
        stopscanner: true,
      );

  bool get showCamera => isCameraAvailable && error.isEmpty;
  bool get hasError => error.isNotEmpty;
  bool get hasBarcode => error.isNotEmpty;
}