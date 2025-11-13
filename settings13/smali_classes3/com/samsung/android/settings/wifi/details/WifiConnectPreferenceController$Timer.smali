.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;
.super Landroid/os/Handler;
.source "WifiConnectPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Timer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    .line 2973
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    const/4 v0, 0x0

    .line 3006
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 3007
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    .line 3008
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 3029
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x3e8

    const-string v2, "timer end took : "

    const-string v3, "WifiConnectPrefController"

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "Share Password - time out"

    .line 3040
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSAScreenId(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x2

    const-string v6, "0125"

    invoke-static {p1, v6, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3042
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/samsung/android/wifi/SemWifiManager;->requestPassword(Z)V

    .line 3043
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1, v4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$msetProfileSharingMode(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 3044
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/content/Context;

    move-result-object p1

    sget v5, Lcom/android/settings/R$string;->wifi_profile_share_subscribertimeout:I

    invoke-static {p1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 3046
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3047
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-wide v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3035
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    const-wide/16 v0, 0x2710

    .line 3036
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3031
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_disabled_connection_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorDialog(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V

    .line 3032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-wide v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method startConnectionTimer()V
    .locals 3

    const/4 v0, 0x0

    .line 2982
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WifiConnectPrefController"

    const-string v2, "timer start"

    .line 2983
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0x1d4c0

    .line 2984
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v0, 0x1

    .line 2986
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v1, 0x2710

    .line 2987
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method startSharingTimer()V
    .locals 3

    const/4 v0, 0x3

    .line 3013
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WifiConnectPrefController"

    const-string v2, "Start share timer"

    .line 3014
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x3a98

    .line 3015
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    const-string v0, "WifiConnectPrefController"

    const-string v1, "timer stop"

    .line 2997
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->removeAllMessages()V

    return-void
.end method

.method stopImmediately(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WifiConnectPrefController"

    const-string v1, "timer stopImmediately"

    .line 2991
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->removeAllMessages()V

    .line 2993
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorDialog(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Ljava/lang/String;)V

    return-void
.end method

.method stopShareTimer()V
    .locals 2

    const-string v0, "WifiConnectPrefController"

    const-string v1, "Stop share timer"

    .line 3020
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 3021
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
