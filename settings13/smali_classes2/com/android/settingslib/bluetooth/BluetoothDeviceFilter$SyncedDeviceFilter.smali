.class final Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncedDeviceFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$SyncedDeviceFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result p0

    return p0
.end method
