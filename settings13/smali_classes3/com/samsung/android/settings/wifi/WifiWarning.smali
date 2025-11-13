.class public Lcom/samsung/android/settings/wifi/WifiWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiWarning.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnableCheck:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiWarning$1;-><init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "WifiWarning"

    const-string v1, "onCreate"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.permission.NETWORK_SETTINGS"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 98
    sget v1, Lcom/android/settings/R$style;->SettingsTheme:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->setTheme(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningDialogFactory;->createDialog(Landroid/content/Intent;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-nez v1, :cond_0

    const-string p1, "Not defined warning dialog."

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "wifi_enablewarning_check_mode"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setupDialog()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->destroyDialog()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick mWifiEnableCheck ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiWarning"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mWifiEnableCheck:Z

    const-string v0, "wifi_enablewarning_check_mode"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->stopDialog()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->sendBroadcastCancelEnablingWifi()V

    :cond_0
    return-void
.end method
