.class public final synthetic Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 14

    iget p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, p1

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v1, 0x2

    new-array v2, v1, [B

    array-length v3, p0

    const/16 v4, 0x9

    if-ge v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p0

    :goto_2
    array-length v3, p0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v7, 0x10

    const/16 v8, 0x8

    const/4 v9, 0x7

    if-ge v3, v4, :cond_5

    :cond_4
    move v3, v0

    goto :goto_5

    :cond_5
    const/4 v3, 0x5

    aget-byte v10, p0, v3

    if-nez v10, :cond_6

    const/4 v11, 0x6

    aget-byte v11, p0, v11

    if-ne v11, v1, :cond_6

    move v3, v5

    goto :goto_5

    :cond_6
    if-ne v10, v4, :cond_7

    aget-byte v11, p0, v9

    if-nez v11, :cond_7

    move v3, v1

    goto :goto_5

    :cond_7
    if-ne v10, v4, :cond_4

    aget-byte v10, p0, v9

    if-ne v10, v1, :cond_4

    aget-byte v10, p0, v8

    move v11, v0

    :goto_3
    if-ge v11, v3, :cond_d

    shl-int v12, v5, v11

    int-to-byte v12, v12

    and-int/2addr v12, v10

    int-to-byte v12, v12

    if-eq v12, v5, :cond_c

    if-eq v12, v1, :cond_b

    const/4 v13, 0x4

    if-eq v12, v13, :cond_a

    if-eq v12, v8, :cond_9

    if-eq v12, v7, :cond_8

    goto :goto_4

    :cond_8
    sput v4, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v12, p0, v4

    add-int/2addr v12, v5

    add-int/2addr v12, v4

    move v4, v12

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x12

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x6

    goto :goto_4

    :cond_b
    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_c
    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_d
    move v3, v6

    :goto_5
    if-eq v3, v5, :cond_11

    if-eq v3, v1, :cond_10

    if-eq v3, v6, :cond_e

    goto :goto_6

    :cond_e
    if-eq v3, v6, :cond_f

    goto :goto_6

    :cond_f
    if-eqz p1, :cond_12

    array-length v3, p1

    if-le v3, v8, :cond_12

    aget-byte v3, p1, v8

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_12

    sget v3, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchDevice;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    add-int/2addr v3, v5

    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_10
    const/16 v3, 0x1f

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    if-lez v4, :cond_12

    array-length v7, p0

    add-int/2addr v4, v3

    if-le v7, v4, :cond_12

    const/16 v3, 0x20

    invoke-static {p0, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_11
    invoke-static {p0, v9, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_6
    if-eqz p1, :cond_17

    array-length p0, p1

    if-ge p0, v6, :cond_13

    goto :goto_8

    :cond_13
    aget-byte p0, p1, v1

    const/16 v1, 0x75

    if-ne p0, v1, :cond_14

    aget-byte v3, p1, v6

    if-eqz v3, :cond_15

    :cond_14
    if-nez p0, :cond_17

    aget-byte p0, p1, v6

    if-ne p0, v1, :cond_17

    :cond_15
    aget-byte p0, v2, v0

    if-ne p0, v5, :cond_16

    aget-byte p0, v2, v5

    and-int/lit16 p0, p0, 0xff

    goto :goto_7

    :cond_16
    const/4 p0, -0x1

    :goto_7
    if-lez p0, :cond_17

    move v0, v5

    :cond_17
    :goto_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
