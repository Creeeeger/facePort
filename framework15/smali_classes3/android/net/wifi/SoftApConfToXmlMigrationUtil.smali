.class public final Landroid/net/wifi/SoftApConfToXmlMigrationUtil;
.super Ljava/lang/Object;
.source "SoftApConfToXmlMigrationUtil.java"


# static fields
.field private static final blacklist CONFIG_STORE_DATA_VERSION:I = 0x3

.field private static final blacklist LEGACY_AP_CONFIG_FILE:Ljava/lang/String; = "softap.conf"

.field private static final blacklist LEGACY_WIFI_STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field private static final blacklist TAG:Ljava/lang/String; = "SoftApConfToXmlMigrationUtil"

.field private static final blacklist WIFICONFIG_AP_BAND_2GHZ:I = 0x0

.field private static final blacklist WIFICONFIG_AP_BAND_5GHZ:I = 0x1

.field private static final blacklist WIFICONFIG_AP_BAND_ANY:I = -0x1

.field private static final blacklist XML_TAG_ALLOWED_CLIENT_LIST:Ljava/lang/String; = "AllowedClientList"

.field private static final blacklist XML_TAG_AP_BAND:Ljava/lang/String; = "ApBand"

.field private static final blacklist XML_TAG_AUTO_SHUTDOWN_ENABLED:Ljava/lang/String; = "AutoShutdownEnabled"

.field private static final blacklist XML_TAG_BLOCKED_CLIENT_LIST:Ljava/lang/String; = "BlockedClientList"

.field private static final blacklist XML_TAG_BSSID:Ljava/lang/String; = "Bssid"

.field private static final blacklist XML_TAG_CHANNEL:Ljava/lang/String; = "Channel"

.field private static final blacklist XML_TAG_CLIENT_CONTROL_BY_USER:Ljava/lang/String; = "ClientControlByUser"

.field public static final blacklist XML_TAG_CLIENT_MACADDRESS:Ljava/lang/String; = "ClientMacAddress"

.field private static final blacklist XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiConfigStoreData"

.field private static final blacklist XML_TAG_HIDDEN_SSID:Ljava/lang/String; = "HiddenSSID"

.field private static final blacklist XML_TAG_MAX_NUMBER_OF_CLIENTS:Ljava/lang/String; = "MaxNumberOfClients"

.field private static final blacklist XML_TAG_PASSPHRASE:Ljava/lang/String; = "Passphrase"

.field private static final blacklist XML_TAG_SECTION_HEADER_SOFTAP:Ljava/lang/String; = "SoftAp"

.field private static final blacklist XML_TAG_SECURITY_TYPE:Ljava/lang/String; = "SecurityType"

.field private static final blacklist XML_TAG_SHUTDOWN_TIMEOUT_MILLIS:Ljava/lang/String; = "ShutdownTimeoutMillis"

.field private static final blacklist XML_TAG_SSID:Ljava/lang/String; = "SSID"

.field private static final blacklist XML_TAG_VERSION:Ljava/lang/String; = "Version"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convert()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "softap.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    nop

    nop

    invoke-static {v1}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convert(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    return-object v3
.end method

.method public static blacklist convert(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3

    invoke-static {p0}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->loadFromLegacyFile(Ljava/io/InputStream;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertConfToXml(Landroid/net/wifi/SoftApConfiguration;)[B

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method private static blacklist convertConfToXml(Landroid/net/wifi/SoftApConfiguration;)[B
    .locals 11

    const-string v0, "AllowedClientList"

    const-string v1, "BlockedClientList"

    const-string v2, "SoftAp"

    const-string v3, "WifiConfigStoreData"

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Version"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSID"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBssid()Landroid/net/MacAddress;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Bssid"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "ApBand"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Channel"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "HiddenSSID"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "SecurityType"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Passphrase"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "MaxNumberOfClients"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isClientControlByUserEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "ClientControlByUser"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isAutoShutdownEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "AutoShutdownEnabled"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getShutdownTimeoutMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "ShutdownTimeoutMillis"

    invoke-static {v7, v8, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-interface {v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBlockedClientList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "ClientMacAddress"

    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/MacAddress;

    invoke-virtual {v8}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    :cond_2
    invoke-interface {v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getAllowedClientList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/MacAddress;

    invoke-virtual {v7}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    :cond_3
    invoke-interface {v5, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SoftApConfToXmlMigrationUtil"

    const-string v2, "Failed to convert softap conf to XML"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public static blacklist convertWifiConfigBandToSoftApConfigBand(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getLegacyWifiSharedDirectory()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist loadFromLegacyFile(Ljava/io/InputStream;)Landroid/net/wifi/SoftApConfiguration;
    .locals 11

    const-string v0, "Error closing hotspot configuration during read"

    const-string v1, "SoftApConfToXmlMigrationUtil"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    const/4 v7, 0x3

    if-le v5, v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 v8, 0x2

    if-lt v5, v8, :cond_2

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    if-nez v9, :cond_1

    nop

    invoke-static {v8}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertWifiConfigBandToSoftApConfigBand(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    :cond_1
    nop

    invoke-static {v8}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->convertWifiConfigBandToSoftApConfigBand(I)I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_2
    :goto_0
    if-lt v5, v7, :cond_3

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v6}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    :cond_4
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_4

    :catch_0
    move-exception v4

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    :goto_2
    :try_start_2
    const-string v6, "Bad version on hotspot configuration file"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    nop

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_2
    move-exception v4

    :try_start_4
    const-string v5, "Invalid hotspot configuration "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_3
    move-exception v4

    :try_start_6
    const-string v5, "Error reading hotspot configuration "

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x0

    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :cond_6
    :goto_4
    return-object v2

    :goto_5
    if-eqz v3, :cond_7

    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v5

    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_6
    throw v4
.end method

.method public static blacklist remove()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/net/wifi/SoftApConfToXmlMigrationUtil;->getLegacyWifiSharedDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "softap.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
