enum DeviceStatus {
  connected("Connected"),
  connecting("Connecting"),
  disconnected("Disconnected"),
  notConnected("Not Connected");

  final String name;
  const DeviceStatus(this.name);
}
