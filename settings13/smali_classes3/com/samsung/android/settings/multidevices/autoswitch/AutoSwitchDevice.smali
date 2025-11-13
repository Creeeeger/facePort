.class public Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;
.super Ljava/lang/Object;
.source "AutoSwitchDevice.java"


# static fields
.field private static MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I = 0x5

.field private static MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I = 0x8


# instance fields
.field private mDeviceId:[B

.field private mManufacturerRawData:[B

.field private mManufacturerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerRawData:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 49
    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mDeviceId:[B

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->setManufacturerRawData([B)V

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->setManufacturerType([B)V

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->setDeviceId([B)V

    return-void
.end method

.method public static isBudsDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 226
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;-><init>([B)V

    .line 227
    invoke-virtual {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->isManufacturerSamsung()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    .line 231
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->getDeviceSubType()I

    move-result p0

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private isSupportFeature(B)Z
    .locals 2

    .line 156
    iget v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerRawData:[B

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 159
    aget-byte p0, p0, v1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private setDeviceId([B)V
    .locals 3

    .line 177
    iget v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 179
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    sget v0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->setDeviceId([BI)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f

    .line 188
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_3

    .line 190
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_3

    const/16 v0, 0x20

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->setDeviceId([BI)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->setDeviceId([BI)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setDeviceId([BI)V
    .locals 2

    .line 173
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mDeviceId:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setManufacturerRawData([B)V
    .locals 2

    .line 93
    array-length v0, p1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerRawData:[B

    return-void
.end method

.method private setManufacturerType([B)V
    .locals 8

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 101
    iput v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    return-void

    :cond_0
    const/4 v0, 0x5

    .line 105
    aget-byte v3, p1, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const/4 v6, 0x6

    aget-byte v6, p1, v6

    if-ne v6, v4, :cond_1

    .line 108
    iput v5, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    goto :goto_2

    :cond_1
    const/4 v6, 0x7

    if-ne v3, v2, :cond_2

    .line 109
    aget-byte v7, p1, v6

    if-nez v7, :cond_2

    .line 112
    iput v4, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    goto :goto_2

    :cond_2
    if-ne v3, v2, :cond_8

    .line 113
    aget-byte v3, p1, v6

    if-ne v3, v4, :cond_8

    const/4 v3, 0x3

    .line 116
    iput v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    const/16 p0, 0x8

    .line 119
    aget-byte v3, p1, p0

    :goto_0
    if-ge v1, v0, :cond_9

    shl-int v6, v5, v1

    int-to-byte v6, v6

    and-int/2addr v6, v3

    int-to-byte v6, v6

    if-eq v6, v5, :cond_7

    if-eq v6, v4, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    if-eq v6, p0, :cond_4

    const/16 v7, 0x10

    if-eq v6, v7, :cond_3

    goto :goto_1

    .line 143
    :cond_3
    sput v2, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 144
    aget-byte v6, p1, v2

    add-int/2addr v6, v5

    sput v6, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->MANUFACTURER_LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    add-int/2addr v2, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x12

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_8
    iput v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerType:I

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public getDeviceSubType()I
    .locals 2

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mDeviceId:[B

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_0

    .line 204
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isManufacturerSamsung()Z
    .locals 5

    .line 211
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->mManufacturerRawData:[B

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 215
    aget-byte v1, p0, v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_1

    aget-byte v4, p0, v2

    if-eqz v4, :cond_2

    :cond_1
    if-nez v1, :cond_3

    aget-byte p0, p0, v2

    if-ne p0, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method
