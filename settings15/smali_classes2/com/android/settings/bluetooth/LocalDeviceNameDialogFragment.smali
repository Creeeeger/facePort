.class public Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mReceiver:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    new-instance v0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    return-void
.end method


# virtual methods
.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDialogTitle()I
    .locals 0

    const p0, 0x7f1407b9

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x21a

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->onResume()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mReceiver:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setDeviceName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    return-void
.end method
