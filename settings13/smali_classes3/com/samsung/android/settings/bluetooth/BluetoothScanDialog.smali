.class public Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BluetoothScanDialog.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static IS_ACTION_BUTTON:Z = false


# instance fields
.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const-string p1, "BluetoothScanDialog"

    const-string v0, "onBluetoothStateChanged :: BluetoothScanDialog will finish by bluetooth disable"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v2, "BluetoothScanDialog"

    if-nez v1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 79
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_1

    const-string v1, "onCreate :: Can\'t lunch Scandialog, Bluetooth is not ON state"

    .line 84
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "onCreate :: Can\'t lunch Scandialog, BluetoothSettings is foreground"

    .line 87
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_bluetooth_scan_dialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mScreenId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 97
    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    if-nez p1, :cond_5

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "bluetooth.scandialog.fragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_4
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 111
    new-instance p1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialogFragment;-><init>()V

    .line 112
    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanningStateChanged :: started = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothScanDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 133
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 p0, 0x0

    .line 123
    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    return-void
.end method
