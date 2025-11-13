.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;


# virtual methods
.method public final onClosed()V
    .locals 1

    const-string p0, "UwbSimpleTestController"

    const-string v0, "onSessionStatusChanged  status: CLOSE"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    sput p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mState:I

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->-$$Nest$sfgetmUwbDataReceiver()Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;->onStateReceive(I)V

    return-void
.end method

.method public final onOpenFailed()V
    .locals 0

    return-void
.end method

.method public final onOpened()V
    .locals 1

    const-string p0, "UwbSimpleTestController"

    const-string v0, "onSessionStatusChanged  status: INIT"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mState:I

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->startRanging()V

    return-void
.end method

.method public final onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 1

    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/uwb/RangingMeasurement;

    invoke-virtual {p0}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "UwbSimpleTestController"

    const-string p1, "onRangingResults distance: null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->-$$Nest$sfgetmUwbDataReceiver()Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;->onReceive(Landroid/uwb/RangingReport;)V

    :goto_0
    return-void
.end method

.method public final onStarted()V
    .locals 0

    const/4 p0, 0x2

    sput p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mState:I

    return-void
.end method

.method public final onStopped()V
    .locals 1

    const-string p0, "UwbSimpleTestController"

    const-string v0, "onSessionStatusChanged  status: STOP"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    sput p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mState:I

    invoke-static {}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->-$$Nest$sfgetmUwbDataReceiver()Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;->onStateReceive(I)V

    return-void
.end method
