.class public Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnablingActivity.java"


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mRegistered:Z

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTimeoutHandler(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 126
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showEnablingDialog()V
    .locals 2

    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "showEnablingDialog ::"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    sget v1, Lcom/android/settings/R$layout;->sec_bt_enabling_progress:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 97
    sget v1, Lcom/android/settings/R$string;->enabling_progress_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    sget v1, Lcom/android/settings/R$id;->progress_info:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    sget v1, Lcom/android/settings/R$string;->enabling_progress_content:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "BluetoothEnablingActivity"

    const-string p1, "Bluetooth is not supported on this device"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 75
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 80
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->showEnablingDialog()V

    .line 88
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "onDestroy ::"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "BluetoothEnablingActivity"

    const-string p2, "onKeyDown() called; Key: back key"

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
