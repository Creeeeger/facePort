.class public Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;

.field public mReceiverRegistered:Z

.field public targetAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiverRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.net.wifi.wifiguider"

    const-string v0, "com.samsung.android.net.wifi.wifiguider.activity.bluetooth.BluetoothGuideActivity"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "disableReason"

    const-string v0, "CONNECTION_FAILURE"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "cachedAddress"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->targetAddress:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_1
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-static {p1, v0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiverRegistered:Z

    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x7f142219

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v0, 0x7f142217

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    const v0, 0x7f142218

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v0, 0x7f141b4c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const-string/jumbo p1, "statusbar"

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog$1;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothRestoreDialog;->mReceiverRegistered:Z

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
