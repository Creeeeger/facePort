.class public final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHearingAidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HAS:Landroid/os/ParcelUuid;

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MFI_HAS:Landroid/os/ParcelUuid;

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getLeService16BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getLeComplete128BitsUuidData()[Landroid/os/ParcelUuid;

    move-result-object p0

    const-string v0, "7d74f4bd-c74a-4431-862c-cce884371592"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    iget p0, p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;->isHearingAidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 p1, 0xc

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    iget p0, p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 p1, 0xc

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-boolean p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    return p0

    :pswitch_1
    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;->isHearingAidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :pswitch_2
    iget p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 p1, 0xc

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
