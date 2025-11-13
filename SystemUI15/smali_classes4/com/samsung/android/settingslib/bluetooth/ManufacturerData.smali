.class public final Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

.field public mManufacturerRawData:[B

.field public mManufacturerType:I

.field public final mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;-><init>(Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->updateDeviceInfo([B)V

    return-void
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const-string v5, "0123456789abcdef"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDeviceIcon()I
    .locals 13

    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const v1, 0x7f080c1a

    const v2, 0x7f080c43

    const v3, 0x7f080c56

    iget-object v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_11

    const/4 v8, 0x3

    if-eq v0, v6, :cond_0

    if-eq v0, v8, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-byte v0, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    iget-byte v4, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mSSdevice:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x7f080c27

    const v10, 0x7f080c53

    const v11, 0x7f080c51

    const v12, 0x7f080c49

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v5

    goto/16 :goto_3

    :pswitch_1
    move v1, v2

    goto/16 :goto_3

    :pswitch_2
    const v1, 0x7f080c44

    goto/16 :goto_3

    :pswitch_3
    if-eq v4, v7, :cond_1

    :pswitch_4
    move v1, v12

    goto/16 :goto_3

    :cond_1
    move v1, v11

    goto/16 :goto_3

    :pswitch_5
    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    const v1, 0x7f080c15

    goto/16 :goto_3

    :cond_2
    const v1, 0x7f080c16

    goto/16 :goto_3

    :cond_3
    const v1, 0x7f080c46

    goto/16 :goto_3

    :pswitch_6
    const v1, 0x7f080c4d

    goto/16 :goto_3

    :pswitch_7
    const v1, 0x7f080c21

    goto/16 :goto_3

    :pswitch_8
    if-eq v4, v7, :cond_4

    const v1, 0x7f080c50

    goto/16 :goto_3

    :cond_4
    const v1, 0x7f080c24

    goto/16 :goto_3

    :pswitch_9
    const v1, 0x7f080c1c

    goto/16 :goto_3

    :pswitch_a
    const v1, 0x7f080c45

    goto/16 :goto_3

    :pswitch_b
    move v1, v3

    goto/16 :goto_3

    :pswitch_c
    const v1, 0x7f080c37

    goto/16 :goto_3

    :pswitch_d
    const v1, 0x7f080c34

    goto/16 :goto_3

    :pswitch_e
    const v1, 0x7f080c39

    goto/16 :goto_3

    :pswitch_f
    const v1, 0x7f080c26

    goto/16 :goto_3

    :pswitch_10
    const v1, 0x7f080c25

    goto/16 :goto_3

    :pswitch_11
    const v1, 0x7f080c1f

    goto/16 :goto_3

    :pswitch_12
    const v1, 0x7f080c20

    goto/16 :goto_3

    :pswitch_13
    const v1, 0x7f080c47

    goto/16 :goto_3

    :pswitch_14
    const v1, 0x7f080c2c

    goto/16 :goto_3

    :goto_0
    :pswitch_15
    move v1, v10

    goto/16 :goto_3

    :pswitch_16
    if-eq v4, v7, :cond_5

    const v1, 0x7f080c4b

    goto/16 :goto_3

    :cond_5
    :goto_1
    move v1, v9

    goto/16 :goto_3

    :pswitch_17
    if-eq v4, v6, :cond_8

    const v1, 0x7f080c52

    const v0, 0x7f080c2a

    if-eq v4, v8, :cond_7

    const/4 p0, 0x4

    if-eq v4, p0, :cond_10

    const/4 p0, 0x5

    if-eq v4, p0, :cond_6

    const v1, 0x7f080c32

    goto/16 :goto_3

    :cond_6
    :goto_2
    move v1, v0

    goto/16 :goto_3

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$SSdevice;->this$0:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    if-eqz p0, :cond_10

    array-length v2, p0

    if-le v2, v7, :cond_10

    aget-byte v2, p0, v5

    if-ne v2, v7, :cond_10

    aget-byte p0, p0, v7

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x4d

    if-lt p0, v2, :cond_10

    const/16 v2, 0x62

    if-gt p0, v2, :cond_10

    goto :goto_2

    :cond_8
    const v1, 0x7f080c3b

    goto/16 :goto_3

    :pswitch_18
    const v1, 0x7f080c40

    goto/16 :goto_3

    :pswitch_19
    const v1, 0x7f080c4a

    goto/16 :goto_3

    :pswitch_1a
    const v1, 0x7f080c23

    goto/16 :goto_3

    :pswitch_1b
    const v1, 0x7f080c41

    goto/16 :goto_3

    :pswitch_1c
    const v1, 0x7f080c3e

    goto/16 :goto_3

    :pswitch_1d
    const v1, 0x7f080c17

    goto/16 :goto_3

    :pswitch_1e
    const v1, 0x7f080c4e

    goto/16 :goto_3

    :pswitch_1f
    const v1, 0x7f080c18

    goto/16 :goto_3

    :pswitch_20
    const v1, 0x7f080c2d

    goto :goto_3

    :pswitch_21
    const v1, 0x7f080c29

    goto :goto_3

    :pswitch_22
    const v1, 0x7f080c55

    goto :goto_3

    :pswitch_23
    const v1, 0x7f080c42

    goto :goto_3

    :pswitch_24
    const v1, 0x7f080c4c

    if-eq v4, v7, :cond_10

    if-eq v4, v6, :cond_a

    const/4 p0, 0x6

    if-eq v4, p0, :cond_10

    const/4 p0, 0x7

    if-eq v4, p0, :cond_9

    goto/16 :goto_1

    :cond_9
    const v1, 0x7f080c3d

    goto :goto_3

    :cond_a
    const v1, 0x7f080c19

    goto :goto_3

    :pswitch_25
    if-eq v4, v6, :cond_b

    if-eq v4, v8, :cond_1

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f080c48

    goto :goto_3

    :pswitch_26
    if-eq v4, v7, :cond_e

    if-eq v4, v6, :cond_d

    if-eq v4, v8, :cond_c

    const v1, 0x7f080c12

    goto :goto_3

    :cond_c
    const v1, 0x7f080c36

    goto :goto_3

    :cond_d
    const v1, 0x7f080c2e

    goto :goto_3

    :cond_e
    const v1, 0x7f080c3c

    goto :goto_3

    :pswitch_27
    if-eq v4, v7, :cond_f

    const v1, 0x7f080c38

    goto :goto_3

    :cond_f
    const v1, 0x7f080c3f

    goto :goto_3

    :pswitch_28
    const v1, 0x7f080c4f

    goto :goto_3

    :pswitch_29
    const v1, 0x7f080c3a

    :cond_10
    :goto_3
    :pswitch_2a
    return v1

    :cond_11
    iget-object p0, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    if-eqz p0, :cond_17

    aget-byte v0, p0, v5

    if-nez v0, :cond_17

    aget-byte p0, p0, v7

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xfb

    if-ne p0, v0, :cond_12

    const p0, 0x7f080c54

    return p0

    :cond_12
    const/16 v0, 0xfe

    if-eq p0, v0, :cond_16

    const/16 v0, 0xdb

    if-ne p0, v0, :cond_13

    goto :goto_4

    :cond_13
    iget-boolean p0, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    if-eqz p0, :cond_17

    iget-byte p0, v4, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    if-ltz p0, :cond_17

    if-nez p0, :cond_14

    return v3

    :cond_14
    if-ne p0, v7, :cond_15

    return v2

    :cond_15
    if-ne p0, v6, :cond_17

    return v1

    :cond_16
    :goto_4
    const p0, 0x7f080c2f

    return p0

    :cond_17
    :goto_5
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_b
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_4
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_2a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final isSupportFeature(B)Z
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    if-eqz p0, :cond_1

    array-length v0, p0

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_FEATURES:I

    if-le v0, v1, :cond_1

    aget-byte p0, p0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateDeviceInfo([B)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mData:Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x4

    const/16 v8, 0x9

    if-ge v1, v8, :cond_1

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto/16 :goto_4

    :cond_1
    :try_start_0
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_SERVICE_ID:I

    aget-byte v9, p1, v1

    if-nez v9, :cond_2

    add-int/2addr v1, v3

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_2

    iput v3, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto/16 :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_2
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v8, :cond_3

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-nez v1, :cond_3

    iput v4, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    goto :goto_4

    :cond_3
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v8, :cond_9

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_ASSOCIATED_SERVICE_ID:I

    aget-byte v1, p1, v1

    if-ne v1, v4, :cond_9

    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_FEATURES:I

    aget-byte v8, p1, v1

    add-int/2addr v1, v3

    move v9, v5

    :goto_0
    const/4 v10, 0x5

    if-ge v9, v10, :cond_a

    shl-int v10, v3, v9

    int-to-byte v10, v10

    and-int/2addr v10, v8

    int-to-byte v10, v10

    if-eq v10, v3, :cond_8

    if-eq v10, v4, :cond_7

    if-eq v10, v7, :cond_6

    const/16 v11, 0x8

    if-eq v10, v11, :cond_5

    if-eq v10, v6, :cond_4

    goto :goto_2

    :cond_4
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v10, p1, v1

    add-int/2addr v10, v3

    sput v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_ASSOCIATED_SERVICE_DATA:I

    :goto_1
    add-int/2addr v1, v10

    goto :goto_2

    :cond_5
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_CONNECTIVITY_TYPE:I

    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_CONNECTIVITY:I

    goto :goto_1

    :cond_6
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_DEVICE:I

    goto :goto_1

    :cond_7
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_PROXIMITY:I

    goto :goto_1

    :cond_8
    sput v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PACKET_NUMBER:I

    sget v10, Landroid/bluetooth/BluetoothManufacturerData;->LENGTH_SS_LE_PACKET_NUMBER:I

    goto :goto_1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_9
    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    iput v5, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    :cond_a
    :goto_4
    :try_start_1
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v4, :cond_d

    if-eq v1, v2, :cond_b

    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_c

    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    sget v9, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v8, v9

    if-le v1, v8, :cond_c

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_TYPE:I

    aget-byte v8, p1, v1

    if-ne v8, v3, :cond_c

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_PROXIMITY_INFO:I

    add-int/2addr v1, v8

    aget-byte v1, p1, v1

    iput v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    goto :goto_5

    :cond_c
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    goto :goto_5

    :cond_d
    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_INFO:I

    if-le v1, v8, :cond_e

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_TYPE:I

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_e

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_PROXIMITY_INFO:I

    aget-byte v1, p1, v1

    iput v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    goto :goto_5

    :cond_e
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    iput v5, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    :goto_5
    :try_start_2
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v3, :cond_11

    if-eq v1, v4, :cond_10

    if-eq v1, v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_12

    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    if-le v1, v8, :cond_12

    aget-byte v1, p1, v8

    iput-boolean v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :cond_10
    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_TYPE:I

    if-le v1, v8, :cond_12

    aget-byte v1, p1, v8

    iput-boolean v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    goto :goto_7

    :cond_11
    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_TYPE:I

    if-le v1, v8, :cond_12

    aget-byte v1, p1, v8

    iput-boolean v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mIsDeviceCategoryInitialized:Z

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :goto_6
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_12
    :goto_7
    :try_start_3
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v4, :cond_14

    if-eq v1, v2, :cond_13

    goto :goto_9

    :cond_13
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_15

    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v9, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v8, v9

    if-le v1, v8, :cond_15

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_ICON:I

    add-int/2addr v1, v8

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :cond_14
    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_ICON:I

    if-le v1, v8, :cond_15

    aget-byte v1, p1, v8

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :goto_8
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_15
    :goto_9
    :try_start_4
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v2, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_17

    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v9, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_STATUS:I

    add-int/2addr v8, v9

    if-le v1, v8, :cond_17

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_STATUS:I

    add-int/2addr v1, v8

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceStatus:B
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_17
    :goto_a
    :try_start_5
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v2, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_19

    array-length v1, p1

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v9, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_SUBTYPE:I

    add-int/2addr v8, v9

    if-le v1, v8, :cond_19

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_SUBTYPE:I

    add-int/2addr v1, v8

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceSubType:B
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_19
    :goto_b
    :try_start_6
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v4, :cond_1b

    if-eq v1, v2, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual {p0, v7}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_TYPE:I

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_DEVICE_CONTACT_HASH:I

    add-int/2addr v1, v7

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    invoke-static {p1, v1, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :cond_1b
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_CONTACT_HASH:I

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    invoke-static {p1, v1, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :goto_c
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_1c
    :goto_d
    :try_start_7
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v4, :cond_1e

    if-eq v1, v2, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {p0, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_1f

    array-length v1, p1

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v7, v8

    if-le v1, v7, :cond_1f

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_EXTRA:I

    add-int/2addr v1, v7

    aget-byte v1, p1, v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1f

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_CONTACT_CRC:I

    add-int/2addr v1, v7

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :catch_7
    move-exception v1

    goto :goto_e

    :cond_1e
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_DEVICE_CONTACT_CRC:I

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_f

    :goto_e
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_1f
    :goto_f
    :try_start_8
    iget v1, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v1, v3, :cond_22

    if-eq v1, v4, :cond_21

    if-eq v1, v2, :cond_20

    goto :goto_11

    :cond_20
    invoke-virtual {p0, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v1

    if-eqz v1, :cond_23

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v1, v7

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :catch_8
    move-exception v1

    goto :goto_10

    :cond_21
    array-length v1, p1

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    sget v8, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v7, v8

    if-le v1, v7, :cond_23

    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    sget v7, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_ID:I

    add-int/2addr v1, v7

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11

    :cond_22
    sget v1, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_DEVICE_ID:I

    iget-object v7, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    invoke-static {p1, v1, v7, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_11

    :goto_10
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_23
    :goto_11
    const/16 v1, 0xff

    :try_start_9
    iget v7, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    if-eq v7, v3, :cond_26

    if-eq v7, v4, :cond_25

    if-eq v7, v2, :cond_24

    goto :goto_13

    :cond_24
    invoke-virtual {p0, v6}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->isSupportFeature(B)Z

    move-result v2

    if-eqz v2, :cond_27

    array-length v2, p1

    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v4, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_27

    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v2, v3

    aget-byte p1, p1, v2

    iput-byte p1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    goto :goto_13

    :catch_9
    move-exception p1

    goto :goto_12

    :cond_25
    array-length v2, p1

    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    sget v4, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v3, v4

    if-le v2, v3, :cond_27

    sget v2, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA:I

    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_SS_BREDR_ASSOCIATED_SERVICE_DATA_DEVICE_TYPE:I

    add-int/2addr v2, v3

    aget-byte p1, p1, v2

    iput-byte p1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    goto :goto_13

    :cond_26
    iget-object v2, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    if-eqz v2, :cond_27

    aget-byte v4, v2, v5

    if-nez v4, :cond_27

    aget-byte v2, v2, v3

    and-int/2addr v2, v1

    const/16 v3, 0x90

    if-lt v2, v3, :cond_27

    if-gt v2, v1, :cond_27

    iget-object v2, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerRawData:[B

    array-length v2, v2

    sget v3, Landroid/bluetooth/BluetoothManufacturerData;->OFFSET_OLD_BLUETOOTH_TYPE:I

    if-le v2, v3, :cond_27

    array-length v2, p1

    if-le v2, v3, :cond_27

    aget-byte p1, p1, v3

    iput-byte p1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_13

    :goto_12
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    :cond_27
    :goto_13
    sget-boolean p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    if-eqz p1, :cond_28

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "updateDeviceInfo :: describe data = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ManufacturerType] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->mManufacturerType:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, ", [TxPower] "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mTxPower:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, ", [DeviceCategory] "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategory:B

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, ", [DeviceIconIndex] "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceIconIndex:B

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, ", [DeviceStatus] "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceStatus:B

    and-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ", [DeviceSubType] "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceSubType:B

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ", [DevicePrefix] "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceCategoryPrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ", [Contact] "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactHash:[B

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mContactCrc:[B

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ", [Device ID] "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mDeviceId:[B

    invoke-static {v1}, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData;->byteToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ", [BT Type] "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v0, v0, Lcom/samsung/android/settingslib/bluetooth/ManufacturerData$Data;->mBluetoothType:B

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ManufacturerData"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method
