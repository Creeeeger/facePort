.class public final Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x3e8

    const-string/jumbo v2, "timer end took : "

    const-string v3, "WifiConnectPrefController"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Share Password - time out"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "time out"

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->insertSaLoggingForPasswordShare(Ljava/lang/String;)V

    iget-object p0, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->requestPassword(Z)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->setProfileSharingMode(Z)V

    iget-object p0, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f143635

    invoke-static {p0, v5, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    sub-long/2addr v5, v7

    div-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object p0, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1434fc    # 1.9700085E38f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialog(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->startTime:J

    sub-long/2addr v5, v7

    div-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
