.class public Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLastSuccessiveErrorMessage:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method


# virtual methods
.method public final onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->-$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    :cond_1
    :goto_0
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public final onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 10

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationHelper:Lcom/android/systemui/keyguard/util/IndicationHelper;

    invoke-virtual {v2, p3, p1}, Lcom/android/systemui/keyguard/util/IndicationHelper;->shouldSuppressErrorMsg(Landroid/hardware/biometrics/BiometricSourceType;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_6

    iget p3, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    if-eq p3, p1, :cond_6

    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_2
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x1010543

    invoke-static {v2, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v8

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, v0, :cond_6

    iget-object v0, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v2, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    sget-object v5, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object p3, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    goto :goto_2

    :cond_3
    if-ne p3, v2, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isInDisplayFingerprintSupported()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_5

    goto :goto_1

    :cond_5
    const-string p2, ""

    :goto_1
    invoke-virtual {v1, v0, p2, v8, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    :goto_2
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    :cond_6
    :goto_3
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method

.method public final onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 10

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    const-class p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v9, -0x1

    if-eqz v2, :cond_5

    invoke-interface {v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p3, p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_5

    :cond_5
    :goto_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v2, v2, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    iget-boolean p3, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez p3, :cond_11

    if-eq p1, v0, :cond_c

    if-eq p1, v4, :cond_b

    const/4 p3, 0x3

    if-eq p1, p3, :cond_a

    const/4 p3, 0x5

    if-eq p1, p3, :cond_9

    const/16 p3, 0x3e9

    if-eq p1, p3, :cond_8

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_7

    const/16 p3, 0x3ec

    if-eq p1, p3, :cond_6

    :goto_2
    move-object v5, p2

    goto :goto_3

    :cond_6
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d9

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d5

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d8

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_9
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d7

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_a
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_b
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d4

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_c
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const p3, 0x7f1308d6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :goto_3
    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_d

    sget-boolean p3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p3, :cond_d

    if-eq p2, v4, :cond_10

    :cond_d
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p3

    if-eqz p3, :cond_e

    if-nez p2, :cond_e

    sget-object v3, Lcom/android/systemui/statusbar/IndicationPosition;->UPPER:Lcom/android/systemui/statusbar/IndicationPosition;

    sget-object v4, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isInDisplayFingerprintSupported()Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_4

    :cond_f
    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object p3, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p2, v5, p3, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    iget-object p2, v1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->showBounceAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    :cond_10
    :goto_4
    if-ne p1, v9, :cond_11

    iget-object p1, v1, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isMaxFailedBiometricUnlockAttemptsShort()Z

    move-result p1

    if-nez p1, :cond_11

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;I)V

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    :cond_11
    :goto_5
    iput v9, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->mLastSuccessiveErrorMessage:I

    return-void
.end method

.method public final onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->-$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    sget-object p0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object p1, p2, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p2, p0, v1, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_STOP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->isAuthenticatedWithBiometric()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    const-wide/16 v0, 0x64

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;I)V

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mLifeStyleContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onLockModeChanged()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v11, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v12, v11, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v13

    const-string v2, "onLockModeChanged - "

    const-string v3, " | "

    invoke-static {v2, v0, v1, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "KeyguardSecIndicationController"

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, 0x0

    cmp-long v2, v0, v16

    const/4 v10, 0x0

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startCountdownTimer - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPerformingWipeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v18, v12

    move-object v12, v10

    goto :goto_0

    :cond_0
    iget-object v2, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v10, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v9, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;

    sub-long v2, v0, v2

    iget-object v6, v11, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-object v7, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v8, v11, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-wide/16 v4, 0x3e8

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v12

    move-object v12, v10

    move/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_2
    move-object/from16 v18, v12

    move-object v12, v10

    iget-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v12, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_3
    :goto_0
    cmp-long v0, v13, v16

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startBiometricCountdownTimer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isPerformingWipeOut()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v12, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    :cond_5
    iget-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mUpperTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v6, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;

    sub-long v2, v13, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJ)V

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    goto :goto_1

    :cond_7
    iget-object v0, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v12, v11, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_8
    :goto_1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->onRefreshBatteryInfo(Lcom/android/systemui/statusbar/KeyguardBatteryStatus;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onStrongAuthStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mBiometricsCountdownTimer:Landroid/os/CountDownTimer;

    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    :cond_1
    sget-object p1, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_ERROR:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/android/systemui/statusbar/IndicationPosition;->DEFAULT:Lcom/android/systemui/statusbar/IndicationPosition;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationPosition;Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final onTrustChanged(I)V
    .locals 3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, p1, v0}, Lio/reactivex/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/internal/operators/completable/CompletableTimer;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;I)V

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public final onUSBRestrictionChanged(Z)V
    .locals 2

    const-string v0, "onUSBRestrictionChanged "

    const-string v1, "KeyguardSecIndicationController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsUsbRestricted:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addUsbRestriction()Z

    return-void
.end method

.method public final onUserUnlocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method
