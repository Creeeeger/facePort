.class public Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SecDevicePickerDialog.java"


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

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v2, "SecDevicePickerDialog"

    if-nez v1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_1

    const-string v1, "onCreate :: Can\'t lunch device picker dialog, Bluetooth is not ON state"

    .line 70
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_bluetooth_scan_dialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->mScreenId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 76
    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    if-nez p1, :cond_3

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "bluetooth.pickerdialog.fragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_2
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 90
    new-instance p1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/bluetooth/SecDevicePickerFragment;-><init>()V

    .line 91
    invoke-virtual {p1, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 117
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 p0, 0x0

    .line 102
    sput-boolean p0, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;->IS_ACTION_BUTTON:Z

    return-void
.end method
