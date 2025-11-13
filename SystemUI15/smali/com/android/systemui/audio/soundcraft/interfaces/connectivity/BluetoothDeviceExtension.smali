.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

.field public static final OFF:[B

.field public static final ON:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    sput-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->OFF:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    sput-object v1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->ON:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBattery(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->getTag()I

    move-result p1

    int-to-byte v0, p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    aget-byte p0, p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public static getState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->getTag()I

    move-result p1

    int-to-byte v2, p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v3, 0x2

    new-array v3, v3, [B

    aput-byte v2, v3, v1

    aput-byte p1, v3, v0

    invoke-virtual {p0, v3}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v2, 0x3

    if-le p1, v2, :cond_0

    aget-byte p0, p0, v2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static isSupported(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    sget-object v3, Lcom/samsung/android/bluetooth/SmepTag;->SUPPORTED_FEATURES:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v4

    int-to-byte v5, v4

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    new-array v6, v2, [B

    aput-byte v5, v6, v0

    aput-byte v4, v6, v1

    invoke-virtual {p0, v6}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v4, p0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    sget-object v4, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->INSTANCE:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, p0

    if-ge v4, v5, :cond_0

    const-string p0, "SoundCraft.BluetoothDeviceExtension"

    const-string p1, "parseSupportedFeatures :: DataPacket is too short."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v3

    if-ne v4, v3, :cond_2

    move v3, v2

    :cond_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    and-int/2addr v4, v5

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    new-array v7, v6, [B

    add-int/lit8 v8, v3, 0x3

    invoke-static {p0, v8, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v3, v6

    invoke-static {v4}, Lcom/samsung/android/bluetooth/SmepTag;->getSmepKey(I)Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->getSupportedTag()Lcom/samsung/android/bluetooth/SmepTag;

    move-result-object v6

    if-ne v4, v6, :cond_1

    aget-byte p0, v7, v0

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static setState(Landroid/bluetooth/BluetoothDevice;Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->getTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " set "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.BluetoothDeviceExtension"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothStateEnum;->getTag()I

    move-result p1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->ON:[B

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceExtension;->OFF:[B

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/bluetooth/SmepTag;->isValidConstantKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-byte v1, p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length p1, p2

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->semSetMetadata([B)Z

    return-void
.end method
