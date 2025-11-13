.class public Lcom/samsung/android/settings/wifi/WifiWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

.field public mIntentFilter:Landroid/content/IntentFilter;

.field public final mReceiver:Lcom/samsung/android/settings/wifi/WifiWarning$1;

.field public mWifiEnableCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Lcom/samsung/android/settings/wifi/WifiWarning$1;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "WifiWarning"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Lcom/samsung/android/settings/wifi/WifiWarning$1;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.permission.NETWORK_SETTINGS"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    const v1, 0x7f15037c

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "req_type"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "extra_type"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "friendly_name"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Try to enable "

    const-string v8, " and "

    const-string v9, " is enabled"

    invoke-static {v7, v8, v3, v4, v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "friendly name "

    invoke-static {v7, v6, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x6

    const/4 v9, 0x2

    if-ne v4, v7, :cond_1

    if-eq v3, v9, :cond_1

    if-eq v3, v8, :cond_1

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithoutP2pDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-ne v4, v7, :cond_2

    if-ne v3, v9, :cond_2

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithP2pDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-ne v4, v8, :cond_3

    if-ne v3, v9, :cond_3

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/NanWithP2pDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v10, 0x5

    if-ne v4, v10, :cond_4

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/WifiSharingDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    if-ne v4, v7, :cond_5

    if-ne v3, v8, :cond_5

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/MobileHotspotWithNanDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    if-ne v4, v9, :cond_6

    if-ne v3, v8, :cond_6

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/P2pWithNanDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const/4 v7, 0x7

    if-ne v3, v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;

    invoke-direct {v5, v2, p0, v6}, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    if-ne v4, v3, :cond_8

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/WepDisconnectDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    const/16 v3, 0x9

    if-ne v4, v3, :cond_9

    const-string/jumbo v3, "ssid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/samsung/android/settings/wifi/warning/WepBlockedDialog;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v1, v5, Lcom/samsung/android/settings/wifi/warning/WepBlockedDialog;->mSsid:Ljava/lang/String;

    :cond_9
    :goto_0
    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-nez v5, :cond_a

    const-string p1, "Not defined warning dialog."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_a
    if-eqz p1, :cond_b

    const-string/jumbo v0, "wifi_enablewarning_check_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningEmptyDialog;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAlertDialog()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->getClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setNegativeButton()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAlertDialog()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Lcom/samsung/android/settings/wifi/WifiWarning$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mTimeoutHandler:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog$TimeoutHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mHasSentBroadcast:Z

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick mWifiEnableCheck ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    const-string v2, "WifiWarning"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string/jumbo v0, "wifi_enablewarning_check_mode"

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mHasSentBroadcast:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendNotifySelectedBroadcast(Z)V

    :cond_0
    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendBroadcastCancelEnablingWifi()V

    :cond_0
    return-void
.end method
