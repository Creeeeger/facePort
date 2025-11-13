.class final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;
.super Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioAVFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$ClassUuidFilter-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    .line 283
    array-length v0, p1

    if-lez v0, :cond_0

    .line 284
    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 288
    invoke-virtual {p2, p0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 289
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    const/16 p2, 0x600

    if-eq p1, p2, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
