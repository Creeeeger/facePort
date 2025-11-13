.class Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;
.super Landroid/os/Handler;
.source "BluetoothSettings.java"


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

    .line 1055
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1058
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1060
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1061
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$900(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1000(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1100(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    .line 1063
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmAvailableDevicesCategory(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1065
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    .line 1067
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fputmInitiateScan(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Z)V

    :goto_1
    return-void
.end method
