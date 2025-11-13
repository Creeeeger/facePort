.class public final Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mIsStartedState:Z

.field public mIsWifiEnabled:Z

.field public final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method private constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsStartedState:Z

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    new-instance p1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;

    invoke-direct {p1, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final scanLoop()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->shouldScan()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scan loop called even though we shouldn\'t be scanning! mIsWifiEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsStartedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsStartedState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v2, "WifiPickerTracker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Starting BLE scan for AutoHotspot"

    iget-object v2, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->startScan()Z

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;I)V

    iget-object v0, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;I)V

    iget-wide v1, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final shouldScan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsStartedState:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-boolean p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsScanningDisabled:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final stopScanning()V
    .locals 3

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v2, "Scanning stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v1, "WifiPickerTracker"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    const-string v1, "Stopping BLE scan for AutoHotspot"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    :cond_0
    return-void
.end method
