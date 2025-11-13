.class public Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;
.super Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;
.source "SecRemoteDeviceNameDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cached_device"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;-><init>()V

    .line 42
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public bridge synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cached_device"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 54
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDialogTitle()I
    .locals 0

    .line 70
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_advanced_rename_device:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f7

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onPause()V

    return-void
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onResume()V

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecRemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
