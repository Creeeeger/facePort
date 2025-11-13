.class Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApConditionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:  action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiApBixbyRoutine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    const-string v1, "wifi_state"

    .line 36
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive:  Wi-Fi AP State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;->-$$Nest$mhandleWifiApStateChanged(Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
