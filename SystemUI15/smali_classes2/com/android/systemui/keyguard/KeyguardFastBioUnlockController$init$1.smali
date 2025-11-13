.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostFinishedWakingUp()V
    .locals 4

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unregisterBrightnessListener"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    check-cast v0, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/DisplayTrackerImpl;->removeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->curIsAodBrighterThanNormal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V

    const-wide/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateMonitorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEnabledWof()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    if-nez v0, :cond_1

    const-string v0, "registerBrightnessListener"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->displayTracker:Lcom/android/systemui/settings/DisplayTracker;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addBrightnessChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->brightnessChangedCallback:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isBrightnessChangedCallbackRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
