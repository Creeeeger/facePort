.class public final synthetic Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->f$1:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda3;->f$2:I

    sget-object v2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v1, :cond_5

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v3, 0x1

    if-ne p0, v3, :cond_3

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hasPendingLock:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingLock:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_2
    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mLogger:Lcom/android/keyguard/logging/BiometricUnlockLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    iget-object p0, p0, Lcom/android/keyguard/logging/BiometricUnlockLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "BiometricUnlockLogger"

    const-string v4, "bio wakelock: Authenticated, waking up..."

    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0x11

    const-string v4, "android.policy:BIOMETRIC"

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_5
    const-string/jumbo p0, "release wake-and-unlock"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
