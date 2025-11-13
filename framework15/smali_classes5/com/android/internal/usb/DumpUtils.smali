.class public Lcom/android/internal/usb/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manufacturer"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10900000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "model"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "description"

    const-wide v4, 0x10900000003L

    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10900000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10900000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uri"

    invoke-static {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10900000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "serial"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static blacklist writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getId()I

    move-result v4

    const-string/jumbo v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10900000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10d00000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getAttributes()I

    move-result v4

    const-string v5, "attributes"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getMaxPower()I

    move-result v4

    const-string/jumbo v5, "max_power"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    nop

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    const-string/jumbo v5, "interfaces"

    const-wide v6, 0x20b00000005L

    invoke-static {p0, v5, v6, v7, v4}, Lcom/android/internal/usb/DumpUtils;->writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static blacklist writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    nop

    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->contaminantPresenceStatusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static blacklist writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static blacklist writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10500000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    const-string/jumbo v5, "vendor_id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    const-string/jumbo v5, "product_id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    const-string v5, "class"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    const-string/jumbo v5, "subclass"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v4

    const-string/jumbo v5, "protocol"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "manufacturer_name"

    const-wide v4, 0x10900000007L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10900000008L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "product_name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10900000009L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x1090000000aL

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "serial_number"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    nop

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v4

    const-string v5, "configurations"

    const-wide v6, 0x20b0000000bL

    invoke-static {p0, v5, v6, v7, v4}, Lcom/android/internal/usb/DumpUtils;->writeConfiguration(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbConfiguration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static blacklist writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V
    .locals 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v2

    const-string v3, "endpoint_number"

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10e00000002L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const-string v5, "direction"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v4

    const-string v5, "address"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10e00000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const-string/jumbo v5, "type"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v2

    const-string v3, "attributes"

    const-wide v4, 0x10d00000005L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    const-string/jumbo v3, "max_packet_size"

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000007L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v4

    const-string/jumbo v5, "interval"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static blacklist writeInterface(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbInterface;)V
    .locals 8

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    const-string/jumbo v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v2

    const-string v3, "alternate_settings"

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10900000003L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    const-string v5, "class"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000005L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    const-string/jumbo v5, "subclass"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v2, 0x10500000006L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    const-string/jumbo v5, "protocol"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const-wide v4, 0x20b00000007L

    invoke-virtual {p4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    const-string v7, "endpoints"

    invoke-static {p0, v7, v4, v5, v6}, Lcom/android/internal/usb/DumpUtils;->writeEndpoint(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbEndpoint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public static blacklist writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V
    .locals 9

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const/4 v4, 0x1

    const-wide v5, 0x20e00000002L

    const-string/jumbo v7, "supported_modes"

    if-eqz v3, :cond_5

    if-nez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v7, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v2, 0x3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_1
    and-int/lit8 v3, v2, 0x2

    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0, v7, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    :cond_3
    :goto_0
    and-int/lit8 v3, v2, 0x4

    const/4 v8, 0x4

    if-ne v3, v8, :cond_4

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    :cond_4
    and-int/lit8 v3, v2, 0x8

    const/16 v8, 0x8

    if-ne v3, v8, :cond_6

    invoke-virtual {p0, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :cond_6
    :goto_1
    nop

    invoke-virtual {p4}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result v3

    const-string/jumbo v5, "supports_compliance_warnings"

    const-wide v6, 0x10800000003L

    invoke-virtual {p0, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {p4, v4}, Landroid/hardware/usb/UsbPort;->isAltModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "supported_alt_modes"

    const-wide v5, 0x20e00000004L

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public static blacklist writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, 0x10800000001L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    const-string v6, "connected"

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v3

    const-string v4, "current_mode"

    const-wide v5, 0x10e00000002L

    if-eqz v3, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v3

    const-string/jumbo v4, "power_role"

    const-wide v7, 0x10e00000003L

    invoke-static {p0, v4, v7, v8, v3}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    const-wide v7, 0x10e00000004L

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v3

    const-string v9, "data_role"

    invoke-static {p0, v9, v7, v8, v3}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v3

    :goto_1
    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v7

    const/4 v8, 0x1

    shl-int/2addr v8, v7

    not-int v8, v8

    and-int/2addr v3, v8

    div-int/lit8 v8, v7, 0x3

    add-int/lit8 v8, v8, 0x0

    rem-int/lit8 v10, v7, 0x3

    const-string/jumbo v11, "role_combinations"

    const-wide v12, 0x20b00000005L

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide v13, 0x10e00000001L

    invoke-static {p0, v4, v13, v14, v8}, Lcom/android/internal/usb/DumpUtils;->writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    invoke-static {p0, v9, v5, v6, v10}, Lcom/android/internal/usb/DumpUtils;->writeDataRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    invoke-virtual {p0, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_1

    :cond_1
    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v4

    const-string v5, "contaminant_presence_status"

    const-wide v6, 0x10e00000006L

    invoke-static {p0, v5, v6, v7, v4}, Lcom/android/internal/usb/DumpUtils;->writeContaminantPresenceStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "usb_data_status"

    const-wide v6, 0x10900000007L

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v4

    const-string/jumbo v5, "is_power_transfer_limited"

    const-wide v6, 0x10800000008L

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "usb_power_brick_status"

    const-wide v6, 0x10900000009L

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/usb/UsbPort;->complianceWarningsToString([I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "compliance_warning_status"

    const-wide v6, 0x1090000000aL

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    nop

    invoke-virtual/range {p4 .. p4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/DisplayPortAltModeInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "displayport_alt_mode_status"

    const-wide v7, 0x1090000000bL

    invoke-virtual {p0, v6, v7, v8, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method private static blacklist writePowerRole(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void
.end method
