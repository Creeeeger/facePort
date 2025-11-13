.class public final Lcom/samsung/android/settings/wifi/WifiWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive: action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    if-nez v0, :cond_1

    const-string p0, "Undefined dialog. ignore action"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0xe

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->handleWifiApStateChanged(I)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mDialog:Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "airplane_mode_on"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->mIsAirplaneMode:Z

    :goto_0
    return-void

    :cond_5
    :goto_1
    const-string p0, "do nothing, action is null or Knox userID:"

    invoke-static {v0, p0, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
