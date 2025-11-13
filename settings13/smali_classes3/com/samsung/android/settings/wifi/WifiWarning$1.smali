.class Lcom/samsung/android/settings/wifi/WifiWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiWarning"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarning;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Undefined dialog. ignore action"

    .line 66
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

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
    const/16 p1, 0xe

    const-string v0, "wifi_state"

    .line 72
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->handleWifiApStateChanged(I)Z

    goto :goto_0

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiWarning;->-$$Nest$fgetmDialog(Lcom/samsung/android/settings/wifi/WifiWarning;)Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiWarning$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiWarning;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "airplane_mode_on"

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/warning/WifiWarningControlDialog;->setAirplaneMode(Z)V

    :goto_0
    return-void

    .line 61
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "do nothing, action is null or Knox userID:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
