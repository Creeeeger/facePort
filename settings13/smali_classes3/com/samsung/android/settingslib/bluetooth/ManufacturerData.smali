.class public Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "ManufacturerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;,
        Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;
    }
.end annotation


# instance fields
.field private mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field private mManufacturerRawData:[B

.field private mManufacturerType:I

.field private mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 292
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    .line 293
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    return-void
.end method

.method private setBluetoothType([B)V
    .locals 4

    .line 560
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 562
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v0, v1

    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    .line 581
    :cond_1
    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v0

    and-int/2addr v1, v2

    if-lez v1, :cond_3

    .line 583
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_3

    .line 585
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v0, v1

    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V

    goto :goto_0

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    .line 569
    aget-byte v3, v0, v3

    if-nez v3, :cond_3

    .line 570
    aget-byte v0, v0, v1

    and-int/2addr v0, v2

    const/16 v1, 0x90

    if-lt v0, v1, :cond_3

    if-gt v0, v2, :cond_3

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v0, v0

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_TYPE:I

    if-le v0, v1, :cond_3

    .line 575
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    aget-byte p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setBluetoothType(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 593
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setContactCrc([B)V
    .locals 2

    .line 509
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 514
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 516
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactCrc([BI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 526
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setContactHash([B)V
    .locals 2

    .line 491
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 496
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setContactHash([BI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDeviceCategory([B)V
    .locals 2

    .line 406
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 411
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_TYPE:I

    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceCategory(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 421
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDeviceIconIndex([B)V
    .locals 2

    .line 427
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 432
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v0, v1

    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_ICON:I

    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceIconIndex(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDeviceId([B)V
    .locals 3

    .line 532
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 534
    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    .line 542
    :cond_1
    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_3

    .line 544
    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_3

    .line 546
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_ID:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setDeviceId([BI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 554
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private setManufacturerRawData([B)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-void
.end method

.method private setManufacturerType([B)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 324
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 329
    :cond_0
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_SERVICE_ID:I

    aget-byte v3, p1, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    add-int/2addr v1, v5

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_1

    .line 332
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_3

    .line 333
    :cond_1
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_2

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    .line 336
    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_3

    .line 337
    :cond_2
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_8

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_8

    const/4 v1, 0x3

    .line 340
    iput v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    .line 343
    sget p0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_FEATURES:I

    aget-byte v1, p1, p0

    add-int/2addr p0, v5

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_9

    shl-int v2, v5, v0

    int-to-byte v2, v2

    and-int/2addr v2, v1

    int-to-byte v2, v2

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 367
    :cond_3
    sput p0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    .line 368
    aget-byte v2, p1, p0

    add-int/2addr v2, v5

    sput v2, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    goto :goto_1

    .line 363
    :cond_4
    sput p0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    .line 364
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_CONNECTIVITY:I

    goto :goto_1

    .line 359
    :cond_5
    sput p0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    .line 360
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_DEVICE:I

    goto :goto_1

    .line 355
    :cond_6
    sput p0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    .line 356
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_PROXIMITY:I

    goto :goto_1

    .line 351
    :cond_7
    sput p0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PACKET_NUMBER:I

    .line 352
    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_PACKET_NUMBER:I

    :goto_1
    add-int/2addr p0, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_8
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    :cond_9
    :goto_3
    return-void

    .line 325
    :cond_a
    :goto_4
    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return-void
.end method

.method private setTxPower([B)V
    .locals 5

    const/4 v0, 0x0

    .line 380
    :try_start_0
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 396
    iget-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    aget-byte v2, p1, v1

    if-ne v2, v3, :cond_2

    .line 389
    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v1, v3

    aget-byte p1, p1, v1

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    goto :goto_0

    .line 382
    :cond_1
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 383
    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_INFO:I

    aget-byte p1, p1, v2

    invoke-virtual {v1, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->setTxPower(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public byteToString([B)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 707
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 708
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const-string v4, "0123456789abcdef"

    .line 709
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ManufacturerType] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [TxPower] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getTxPower()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DeviceCategory] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DeviceIconIndex] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [DevicePrefix] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [Contact] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactHash()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getContactCrc()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [Device ID] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", [BT Type] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothType()B
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getBluetoothType()B

    move-result p0

    return p0
.end method

.method public getDeviceCategory()B
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result p0

    return p0
.end method

.method public getDeviceIcon()I
    .locals 3

    .line 633
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceCategory()B

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceIconIndex()B

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->getDeviceIcon(BB)I

    move-result p0

    return p0

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->getDeviceId()[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 641
    aget-byte v0, p0, v1

    if-nez v0, :cond_4

    .line 642
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xfb

    if-ne p0, v0, :cond_2

    .line 644
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_vr_controller:I

    return p0

    :cond_2
    const/16 v0, 0xfe

    if-eq p0, v0, :cond_3

    const/16 v0, 0xdb

    if-ne p0, v0, :cond_4

    .line 646
    :cond_3
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_gear_camera:I

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method public getDeviceId()[B
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getDeviceId()[B

    move-result-object p0

    return-object p0
.end method

.method public getManufacturerRawData()[B
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    return-object p0
.end method

.method public getManufacturerType()I
    .locals 0

    .line 602
    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    return p0
.end method

.method public getPrefixName()Ljava/lang/String;
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->getPrefixName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSupportFeature(B)Z
    .locals 2

    .line 669
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 671
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-eqz p0, :cond_1

    .line 672
    sget v0, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_FEATURES:I

    aget-byte p0, p0, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 683
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDeviceInfo([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerRawData([B)V

    .line 303
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setManufacturerType([B)V

    .line 304
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setTxPower([B)V

    .line 305
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceCategory([B)V

    .line 306
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceIconIndex([B)V

    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactHash([B)V

    .line 310
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setContactCrc([B)V

    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setDeviceId([B)V

    .line 312
    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->setBluetoothType([B)V

    .line 314
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDeviceInfo :: describe data = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->describe()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ManufacturerData"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
