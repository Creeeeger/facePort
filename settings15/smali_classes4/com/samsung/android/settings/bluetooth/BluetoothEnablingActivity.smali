.class public Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public alertDialog:Landroid/app/AlertDialog;

.field public final mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

.field public mRegistered:Z

.field public final mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    const-string v0, "BluetoothEnablingActivity"

    if-nez p1, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    const-string/jumbo p1, "showEnablingDialog ::"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0852

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    const v0, 0x7f140dfc

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    const v0, 0x7f0a0bdf

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f140dfb

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    const-string v0, "BluetoothEnablingActivity"

    const-string/jumbo v1, "onDestroy ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$2;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "BluetoothEnablingActivity"

    const-string/jumbo p2, "onKeyDown() called; Key: back key"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Lcom/samsung/android/settings/bluetooth/BluetoothEnablingActivity$1;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
