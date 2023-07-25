
part of flutter_blue_plus;


enum BluetoothDeviceType { unknown, classic, le, dual }

BluetoothDeviceType bmToBluetoothDeviceType(BmBluetoothSpecEnum value) {
  switch (value) {
    case BmBluetoothSpecEnum.unknown:
      return BluetoothDeviceType.unknown;
    case BmBluetoothSpecEnum.classic:
      return BluetoothDeviceType.classic;
    case BmBluetoothSpecEnum.le:
      return BluetoothDeviceType.le;
    case BmBluetoothSpecEnum.dual:
      return BluetoothDeviceType.dual;
  }
}

enum BluetoothConnectionState { disconnected, connecting, connected, disconnecting }

BluetoothConnectionState bmToBluetoothConnectionState(BmConnectionStateEnum value) {
  switch (value) {
    case BmConnectionStateEnum.disconnected:
      return BluetoothConnectionState.disconnected;
    case BmConnectionStateEnum.connecting:
      return BluetoothConnectionState.connecting;
    case BmConnectionStateEnum.connected:
      return BluetoothConnectionState.connected;
    case BmConnectionStateEnum.disconnecting:
      return BluetoothConnectionState.disconnecting;
  }
}

enum ConnectionPriority { balanced, high, lowPower }

enum Phy { le1m, le2m, leCoded }

enum PhyCoding { noPreferred, s2, s8 }

extension PhyExt on Phy {
  int get mask {
    switch (this) {
      case Phy.le1m:
        return 1;
      case Phy.le2m:
        return 2;
      case Phy.leCoded:
        return 3;
      default:
        return 1;
    }
  }
}

@Deprecated('Use PhyCoding instead')
enum PhyOption { noPreferred, s2, s8 }

@Deprecated('Use Phy instead')
enum PhyType { le1m, le2m, leCoded }