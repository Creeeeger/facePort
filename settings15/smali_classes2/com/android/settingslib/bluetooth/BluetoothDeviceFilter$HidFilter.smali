.class public final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;->matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result p0

    return p0
.end method

.method public final matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;->matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result p0

    return p0
.end method

.method public final matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 2

    iget p0, p0, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$HidFilter;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    const/4 p0, 0x1

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    const/4 p1, 0x5

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    array-length v1, p1

    if-lez v1, :cond_7

    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_6

    :goto_3
    move p0, v0

    goto :goto_4

    :cond_6
    sget-object p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    const/16 p2, 0x600

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    return p0

    :pswitch_3
    const/4 p0, 0x1

    if-eqz p1, :cond_a

    array-length v0, p1

    if-lez v0, :cond_a

    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    const/16 p2, 0x600

    if-eq p1, p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_4
    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    array-length v1, p1

    if-lez v1, :cond_d

    sget-object p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_c

    :goto_6
    move p0, v0

    goto :goto_7

    :cond_c
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    const/16 p2, 0x600

    if-eq p1, p2, :cond_e

    goto :goto_6

    :cond_e
    :goto_7
    return p0

    :pswitch_5
    const/4 p0, 0x1

    if-eqz p1, :cond_f

    array-length v0, p1

    if-lez v0, :cond_f

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_8

    :cond_f
    if-eqz p2, :cond_10

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    const/4 p0, 0x0

    :goto_8
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
