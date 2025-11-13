.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# instance fields
.field public mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

.field public mAlwaysOnSuppressed:Z

.field public mAmbientIndicationContainer:Landroid/view/View;

.field public mAnimateWakeup:Z

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mDefaultHasPendingScreenOffCallbackChangeListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field public mDozingRequested:Z

.field public mHasPendingScreenOffCallbackChangeListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$HasPendingScreenOffCallbackChangeListener;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mIgnoreTouchWhilePulsing:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public mNotificationPanelViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

.field public final mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;

.field public mPendingScreenOffCallback:Ljava/lang/Runnable;

.field public mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mPulsePending:Z

.field public mPulsing:Z

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

.field public mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field mWakeLockScreenPerformsAuth:Z

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeLog;Landroid/os/PowerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/DozeLog;",
            "Landroid/os/PowerManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/policy/BatteryController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-direct {v2}, Lcom/android/systemui/util/CopyOnLoopListenerSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDefaultHasPendingScreenOffCallbackChangeListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda0;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHasPendingScreenOffCallbackChangeListener:Lcom/android/systemui/statusbar/phone/DozeServiceHost$HasPendingScreenOffCallbackChangeListener;

    const-string v2, "persist.sysui.wake_performs_auth"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakeLockScreenPerformsAuth:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V

    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAssistManagerLazy:Ldagger/Lazy;

    move-object v3, p11

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    return-void
.end method


# virtual methods
.method public final dozeTimeTick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v1}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_dozeTimeTick:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->dozeTimeTick()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->dozeTimeTick()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v0, p0, Lcom/android/systemui/doze/DozeReceiver;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/doze/DozeReceiver;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeReceiver;->dozeTimeTick()V

    :cond_0
    return-void
.end method

.method public final extendPulse(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->hasNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    const/4 p1, 0x0

    const-string v0, "extendPulse()"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final getNotificationPanelView()Lcom/android/systemui/shade/NotificationShadeWindowView;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "DozeServiceHost"

    const-string v0, "getNotificationPanelView NotificationPanel is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final pulseWhileDozing(Lcom/android/systemui/doze/DozeUi$2;I)V
    .locals 3

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p2, 0x4

    const-string v2, "com.android.systemui:LONG_PRESS"

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    :cond_1
    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakeLockScreenPerformsAuth:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/doze/DozeHost$PulseCallback;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iput-object v1, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput p2, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$1;->onPulseFinished()V

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-nez p2, :cond_5

    const-string/jumbo p1, "pulse - device isn\'t dozing"

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pulse - already has pulse callback mPulseCallback="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    return-void
.end method

.method public final setAodDimmingScrim(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->traceSetAodDimmingScrim(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAodFrontScrimAlpha: alpha="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " skip setAodFrontScrimAlpha"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScrimController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_3

    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    :goto_0
    return-void
.end method

.method public final stopDozing()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeServiceHost"

    const-string/jumbo v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozing()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Z)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDozing()V
    .locals 10

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    check-cast v2, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v1

    :cond_0
    sget v2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq v5, v4, :cond_2

    const-class v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v5, v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-ne v5, v4, :cond_4

    const-string v2, "DozeServiceHost"

    const-string/jumbo v5, "updateDozing set dozing false (dozing true, setDozing to false)"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :cond_4
    const-string v5, "DozeServiceHost"

    const-string/jumbo v6, "updateDozing dozing = "

    const-string v7, " / dozingRequested = "

    invoke-static {v6, v7, v2}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " / state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-static {v7, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-ne v6, v4, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    invoke-virtual {v5, v2, v4}, Lcom/android/systemui/doze/PluginAODManager;->setIsDozing(ZZ)V

    if-eqz v0, :cond_6

    if-ltz v1, :cond_6

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {v1, v0}, Lcom/android/systemui/util/LogUtil;->lapTime(ILjava/util/function/LongConsumer;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeInteractor:Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/DozeInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_isDozing:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    const/16 v4, 0xa

    if-ne v0, v2, :cond_8

    goto/16 :goto_6

    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    new-instance v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v6, v5, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;Z)V

    const-string v7, "LooperSlow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setIsDozing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v6, v4, v7, v5, v8}, Lcom/android/systemui/util/LogUtil;->execTime(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_9
    monitor-exit v0

    goto :goto_6

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    const-string v5, "StatusBarStateControllerImpl#setIsDozing"

    invoke-static {v5}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v6, v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v6, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozingChanged(Z)V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_b
    invoke-static {v5}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    if-eqz p0, :cond_c

    if-ltz v1, :cond_c

    const-string p0, "LooperSlow"

    const-string/jumbo v0, "updateDozing end"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, p0, v0, v2}, Lcom/android/systemui/util/LogUtil;->endTime(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    return-void

    :goto_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
