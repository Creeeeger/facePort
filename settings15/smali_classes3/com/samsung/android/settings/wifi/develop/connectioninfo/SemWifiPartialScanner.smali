.class public final Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# instance fields
.field public mListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

.field public mWifiScanner:Landroid/net/wifi/WifiScanner;


# virtual methods
.method public final onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    return-void
.end method

.method public final onPeriodChanged(I)V
    .locals 0

    return-void
.end method

.method public final onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/SemWifiPartialScanner;->mListener:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ConnectionInfoRepo"

    const-string p1, "Failed to scan"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo;->mHandler:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoRepo$ConnectionInfoRepoHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
