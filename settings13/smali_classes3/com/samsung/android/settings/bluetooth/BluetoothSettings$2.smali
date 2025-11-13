.class Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothCastAdapterStateChanged(Z)V
    .locals 1

    .line 259
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$800(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    :cond_0
    if-nez p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->removeAll()V

    .line 268
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mremoveCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V

    :cond_1
    return-void
.end method
