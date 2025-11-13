.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field public final mCameraLauncherLazy:Ldagger/Lazy;

.field public final mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mCoverHost:Lcom/android/systemui/cover/CoverHost;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisabled1:I

.field public mDisabled2:I

.field public final mDisplayId:I

.field public final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mQSHost:Lcom/android/systemui/qs/QSHost;

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public final mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

.field public final mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mShadeInteractorLazy:Ldagger/Lazy;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mSubScreenManagerLazy:Ldagger/Lazy;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVibrateOnOpening:Z

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final needNotToShowQSGuideDialog:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/cover/CoverHost;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/QuickSettingsController;Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/recents/ScreenPinningRequest;Lcom/android/systemui/popup/SamsungScreenPinningRequest;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Ldagger/Lazy;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Landroid/os/PowerManager;Ljava/util/Optional;ILdagger/Lazy;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;Lcom/android/systemui/searcle/SearcleManager;Ldagger/Lazy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/cover/CoverHost;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/shade/QuickSettingsController;",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Lcom/android/systemui/recents/ScreenPinningRequest;",
            "Lcom/android/systemui/popup/SamsungScreenPinningRequest;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;",
            "Landroid/os/PowerManager;",
            "Ljava/util/Optional<",
            "Landroid/os/Vibrator;",
            ">;I",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/qs/QSHost;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;",
            "Lcom/android/systemui/searcle/SearcleManager;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->needNotToShowQSGuideDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mContext:Landroid/content/Context;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeInteractorLazy:Ldagger/Lazy;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPowerManager:Landroid/os/PowerManager;

    move/from16 v2, p27

    iput v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCameraLauncherLazy:Ldagger/Lazy;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p30

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    const v2, 0x7f050053

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibrateOnOpening:Z

    invoke-virtual/range {p26 .. p26}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p26 .. p26}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const/4 v4, 0x4

    const/4 v5, 0x1

    filled-new-array {v4, v5}, [I

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(I)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    goto :goto_1

    :cond_0
    invoke-virtual/range {p26 .. p26}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p26 .. p26}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->CAMERA_LAUNCH_GESTURE_VIBRATION_TIMINGS:[J

    sget-object v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->CAMERA_LAUNCH_GESTURE_VIBRATION_AMPLITUDES:[I

    invoke-static {v1, v2, v4}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    goto :goto_1

    :cond_1
    const v2, 0x7f030032

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [J

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    aget v5, v1, v3

    int-to-long v5, v5

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    :goto_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v1, :cond_3

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    :cond_3
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v1, :cond_4

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    :goto_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_5

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSubScreenManagerLazy:Ldagger/Lazy;

    :cond_5
    return-void
.end method


# virtual methods
.method public final addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSHost;->addTile(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final addQsTileToFrontOrEnd(Landroid/content/ComponentName;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/qs/QSHost;->addTile(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public final animateCollapsePanels(IZ)V
    .locals 3

    const-string v0, "animateCollapsePanels(): flags: "

    const-string v1, ", force: "

    const-string v2, "CentralSurfaces"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShadeFromCommand(IZ)V

    return-void
.end method

.method public final animateExpandNotificationsPanel()V
    .locals 2

    const-string v0, "CentralSurfaces"

    const-string v1, "animateExpandNotificationsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_GUIDE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->needNotToShowQSGuideDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandShade()V

    return-void
.end method

.method public final animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 1

    const-string p1, "CentralSurfaces"

    const-string v0, "animateExpandSettingsPanel()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_GUIDE:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->needNotToShowQSGuideDialog:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandQs()V

    return-void
.end method

.method public final appTransitionCancelled(I)V
    .locals 0

    return-void
.end method

.method public final appTransitionFinished(I)V
    .locals 0

    return-void
.end method

.method public final clickTile(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mQsPanelHost:Lcom/android/systemui/qs/QSPanelHost;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelHost;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/QSPanelHost$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final disable(IIIZ)V
    .locals 4

    iget p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisplayId:I

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled1:I

    xor-int/2addr p1, p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled1:I

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled2:I

    xor-int/2addr p4, p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDisabled2:I

    const/high16 v0, 0x10000

    and-int v1, p1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    invoke-interface {v2, v3}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    :cond_1
    const/high16 v0, 0x40000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    and-int p1, p2, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    :cond_2
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_3

    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_3

    invoke-interface {v2, v3}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    :cond_3
    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_4

    move v3, p1

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsDisabled:Z

    if-ne v3, p1, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsDisabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility$5()V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    check-cast p0, Lcom/android/systemui/util/NoRemeasureMotionLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/util/NoRemeasureMotionLayout;->setDisable(Z)V

    :goto_0
    return-void
.end method

.method public final dismissKeyboardShortcutsMenu()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    const/16 v0, 0x403

    invoke-interface {p0, v0}, Lcom/android/systemui/util/concurrency/MessageRouter;->cancelMessages(I)V

    invoke-interface {p0, v0}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessage(I)V

    return-void
.end method

.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x118

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    if-ne v1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p1, 0x1ed

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    const/4 p0, 0x0

    invoke-interface {v2, p0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x119

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x1ee

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mVibrateOnOpening:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->vibrateOnNavigationKeyDown()V

    :cond_3
    check-cast v2, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandShade()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mWillExpand:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->unpinAll(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    invoke-interface {p1}, Lcom/android/systemui/shade/QuickSettingsController;->getExpanded$1()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {v2}, Lcom/android/systemui/shade/ShadeController;->isExpandingOrCollapsing()Z

    move-result p1

    if-nez p1, :cond_5

    check-cast v2, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandQs()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p1, "panel_open_qs"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .locals 13

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput p1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastCameraLaunchSource:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraOnFinishedGoingToSleep:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v5}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->getBarState()I

    move-result v6

    iget-object v4, v4, Lcom/android/systemui/shade/CameraLauncher;->mCameraGestureHelper:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v7, v4, Lcom/android/systemui/camera/CameraGestureHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isCameraAllowedByAdmin()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v8, v4, Lcom/android/systemui/camera/CameraGestureHelper;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v10, v4, Lcom/android/systemui/camera/CameraGestureHelper;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v12

    invoke-virtual {v4, v12}, Lcom/android/systemui/camera/CameraGestureHelper;->getStartCameraIntent(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v10, v11}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v10

    const/high16 v12, 0x10000

    invoke-virtual {v8, v4, v12, v10}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_11

    if-nez v6, :cond_3

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isForegroundComponentName(Landroid/content/ComponentName;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_11

    :cond_3
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x5

    const-string v10, "com.android.systemui:CAMERA_GESTURE"

    invoke-virtual {v4, v6, v7, v8, v10}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_4
    sget-boolean v4, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCoverHost:Lcom/android/systemui/cover/CoverHost;

    check-cast v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverClosed:Z

    if-eqz v6, :cond_9

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mIsCoverAppCovered:Z

    if-nez v6, :cond_9

    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v6, :cond_9

    iget v6, v6, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->isCoverUIType(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    const-string v2, "isSecure"

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :goto_2
    const-string v0, "isQuickLaunchMode"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->Companion:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:Ljava/lang/String;

    const-string v1, "com.android.systemui.camera_launch_source"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isForegroundComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x10200000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    const/high16 v0, 0x34010000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_3
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0xc000000

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "CoverHostImpl"

    const-string v2, "make pending intent for cover toast."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Lcom/android/systemui/statusbar/phone/CoverHostImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "showCoverToast() notiKey = "

    const-string v4, "PluginAODManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v2, :cond_7

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/plugins/cover/PluginCover;->showCoverToast(Landroid/app/PendingIntent;Z)V

    :cond_7
    iget-object v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz v1, :cond_8

    const-string v2, ""

    invoke-interface {v1, v0, v3, v2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->requestOpenAppPopup(Landroid/app/PendingIntent;ZLjava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    const/4 v4, 0x2

    if-ne p1, v3, :cond_b

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-boolean v3, v6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    sget-object v7, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_CAMERA_LAUNCHED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v6, v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    sget-boolean v6, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSubScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v7, v6, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    const-string v8, "SubScreenManager"

    if-nez v7, :cond_a

    const-string v6, "onCameraLaunchedDoubleTap() no plugin"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string v7, "onCameraLaunchedDoubleTap() "

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v6, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {v6}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onCameraLaunchedDoubleTap()V

    :cond_b
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v6, :cond_c

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v9, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/os/UserHandle;I)V

    goto :goto_6

    :cond_c
    iget-boolean v6, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-nez v6, :cond_d

    const-wide/16 v6, 0x1770

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v6, v6, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq v6, v4, :cond_f

    if-ne v6, v3, :cond_e

    goto :goto_5

    :cond_e
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchCameraWhenFinishedWaking:Z

    goto :goto_6

    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :cond_10
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/CameraLauncher;

    invoke-interface {v5}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isFullyCollapsed()Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/shade/CameraLauncher;->launchCamera(IZ)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    :cond_11
    :goto_6
    return-void
.end method

.method public final onEmergencyActionLaunchGestureDetected()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$EmergencyGestureIntentFactory;

    check-cast v0, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;

    invoke-virtual {v0}, Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;->invoke()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "CentralSurfaces"

    const-string v0, "Couldn\'t find an app to process the emergency intent."

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v1, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-ne v1, v4, :cond_1

    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionOnFinishedGoingToSleep:Z

    return-void

    :cond_1
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v1, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v4, 0x4

    const-string v8, "com.android.systemui:EMERGENCY_GESTURE"

    invoke-virtual {v1, v6, v7, v4, v8}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    if-nez v1, :cond_3

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v9}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    iget-boolean v1, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-nez v1, :cond_4

    const-wide/16 v6, 0x1770

    iget-object v1, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_4
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchEmergencyActionWhenFinishedWaking:Z

    return-void

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset(Z)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onFlashlightKeyPressed(I)V
    .locals 2

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFlashlightKeyPressed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecFlashlightController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsThermalRestricted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1313e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showUnavailableMessage()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1306d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz v1, :cond_5

    check-cast v1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v1}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsEnabled:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    goto :goto_0

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mIsEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :goto_0
    return-void
.end method

.method public final onRecentsAnimationStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    return-void
.end method

.method public final remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSHost;->removeTileByUser(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final setQsTiles([Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mQSHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getSpecs()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/qs/QSHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final setTopAppHidesStatusBar(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->topAppHidesStatusBar:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->displayId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->updateHideIconsForBouncer(Z)V

    return-void
.end method

.method public final showAssistDisclosure()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistManager;->showDisclosure()V

    return-void
.end method

.method public final showScreenPinningRequest(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSamsungScreenPinningRequest:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->showPrompt(IZLjava/lang/String;)V

    return-void
.end method

.method public final showWirelessChargingAnimation(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    sget-object p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;->CIRCLE:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;

    sget-object v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, p1, v1, p0, v2}, Lcom/android/systemui/charging/WirelessChargingAnimation;->makeWirelessChargingAnimation(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/charging/WirelessChargingAnimation;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mNextView:Lcom/android/systemui/charging/WirelessChargingLayout;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->hide(J)V

    :cond_0
    sput-object p0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    sget-boolean p1, Lcom/android/systemui/charging/WirelessChargingAnimation;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SHOW: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WirelessChargingView"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    iget-object v2, p0, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->mHandler:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView$1;

    invoke-static {v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;->hide(J)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "setView must have been called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startAssist(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method public final startSearcleByHomeKey(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mSearcleManager:Lcom/android/systemui/searcle/SearcleManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/searcle/SearcleManager;->startSearcleByHomeKey(ZZ)V

    :cond_0
    return-void
.end method

.method public final suppressAmbientDisplay(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAlwaysOnSuppressed:Z

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Lcom/android/systemui/util/CopyOnLoopListenerSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onAlwaysOnSuppressedChanged(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final toggleKeyboardShortcutsMenu(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;-><init>(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    invoke-interface {p0, p1}, Lcom/android/systemui/util/concurrency/MessageRouter;->cancelMessages(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public final toggleNotificationsPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandShade()V

    :goto_0
    return-void
.end method

.method public final toggleQuickSettingsPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(I)V

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/BaseShadeControllerImpl;->animateExpandQs()V

    :goto_0
    return-void
.end method

.method public vibrateOnNavigationKeyDown()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/shade/ShadeController;->performHapticFeedback()V

    return-void
.end method
