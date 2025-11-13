.class Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
.super Landroid/os/Handler;
.source "BaseWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/BaseWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mIsActive:Z

.field private mRetry:I

.field final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method public static synthetic $r8$lambda$9373zu1v6h4FMpCM26ON_wv3jX0(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->postScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostScan(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->postScan()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstop(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->stop()V

    return-void
.end method

.method private constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    .line 518
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 514
    iput p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;)V

    return-void
.end method

.method private postScan()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting BLE scan for AutoHotspot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    .line 549
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->startScan()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 550
    iput v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    goto :goto_0

    .line 551
    :cond_0
    iget v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 553
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scanner failed to start scan "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_1
    iput v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    return-void

    .line 560
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->semNotifyScanStateChanged(I)V

    .line 562
    new-instance v0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-wide v1, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private start()V
    .locals 2

    .line 522
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsActive:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 523
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsActive:Z

    .line 524
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Scanner start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->postScan()V

    :cond_1
    return-void
.end method

.method private stop()V
    .locals 3

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mIsActive:Z

    .line 533
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scanner stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    iput v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->mRetry:I

    const/4 v1, 0x0

    .line 537
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stopping BLE scan for AutoHotspot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->wifiApBleClientRole(Z)Z

    return-void
.end method
