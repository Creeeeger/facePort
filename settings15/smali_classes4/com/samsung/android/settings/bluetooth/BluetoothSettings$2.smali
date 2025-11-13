.class public final Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    return-void
.end method


# virtual methods
.method public final onBluetoothCastAdapterStateChanged(Z)V
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    :cond_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisibleCastGroup(I)V

    :cond_2
    return-void
.end method
