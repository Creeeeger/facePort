.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 14

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$start$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->display$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    iput p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DOZE_AP_SLEEP:Z

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_3

    :cond_2
    if-ne p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    iget-object v13, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->onChoreographerLog:Lkotlin/jvm/functions/Function2;

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const-wide/16 v10, 0x2710

    const/4 v12, 0x1

    const/16 v5, 0x8

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    invoke-virtual/range {v4 .. v13}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogTime:J

    iput v3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerLogCount:I

    iput v3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastChoreographerTotalDrawCount:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    const/16 v4, 0x8

    check-cast p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    invoke-virtual {p1, v4}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    :cond_5
    :goto_0
    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->ENABLE_PAUSE:Z

    if-nez p1, :cond_6

    iput-boolean v3, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->lastDisplayState:I

    const/4 v4, 0x1

    if-eq p1, v4, :cond_8

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->setAwake(I)V

    :cond_7
    move v0, v3

    goto :goto_1

    :cond_8
    move v0, v4

    :cond_9
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    iget-boolean p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->isPaused:Z

    const-string/jumbo p1, "updatePause isPaused="

    invoke-static {p1, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    if-eqz p1, :cond_a

    const-string p1, "UiThreadMonitor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
