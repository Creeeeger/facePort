.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

.field public final HIDE$delegate:Lkotlin/Lazy;

.field public final KEYGUARD_DONE$delegate:Lkotlin/Lazy;

.field public final KEYGUARD_DONE_DRAWING$delegate:Lkotlin/Lazy;

.field public final KEYGUARD_DONE_PENDING_TIMEOUT$delegate:Lkotlin/Lazy;

.field public final NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

.field public final NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

.field public final RESET$delegate:Lkotlin/Lazy;

.field public final SET_OCCLUDED$delegate:Lkotlin/Lazy;

.field public final SHOW$delegate:Lkotlin/Lazy;

.field public final START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

.field public final SYSTEM_READY$delegate:Lkotlin/Lazy;

.field public final activityManager:Landroid/app/ActivityManager;

.field public final aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public aodAppearAnimationFrameCount:I

.field public final aodAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;

.field public aodAppearAnimator:Landroid/animation/ValueAnimator;

.field private final aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final audioManager:Landroid/media/AudioManager;

.field public barService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

.field public final biometricUnlockControllerLazy:Ldagger/Lazy;

.field public final bootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

.field public final briefNowBarControllerLazy:Ldagger/Lazy;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

.field public final carrierLock:Ljava/lang/Object;

.field public final centralSurfacesLazy:Ldagger/Lazy;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commonNotifCollectionLazy:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public curIsOccluded:Z

.field public final delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

.field public final desktopManager:Lcom/android/systemui/util/DesktopManager;

.field public disableFlags:I

.field public disableRemoteUnlockAnimation:Z

.field public disabled1:I

.field public final dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

.field public doKeyguardPendingIntent:Landroid/app/PendingIntent;

.field public drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

.field public final dreamViewModelLazy:Ldagger/Lazy;

.field public dvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field public final editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public exitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

.field public extraUserPresentIntent:Landroid/content/Intent;

.field public final fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public firstKeyguardShown:Z

.field public final fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

.field public final fmmLock:Ljava/lang/Object;

.field public final foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

.field public goingAwayWithAnimation:Z

.field public handleMsgLogKey:I

.field public final handler$delegate:Lkotlin/Lazy;

.field public hidingByDisabled:Z

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public isAODShowStateCbRegistered:Z

.field public final keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public final knoxStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

.field public final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public lastGoingAwayFlags:I

.field public lastOccludedApp:Landroid/content/ComponentName;

.field public lastShowingTime:J

.field public lastSleepReason:I

.field public lastWakeReason:I

.field public final localReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

.field public final lock$delegate:Lkotlin/Lazy;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public lockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public lockSoundStreamId:I

.field public lockSounds:Landroid/media/SoundPool;

.field public lockStaySoundId:I

.field public final looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public final notificationShadeWindowControllerLazy:Ldagger/Lazy;

.field public final notificationsControllerLazy:Ldagger/Lazy;

.field public final occludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;

.field public final occludedSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final pickupController:Lcom/android/systemui/sensor/PickupController;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public final pm:Landroid/os/PowerManager;

.field public pogoPlugged:I

.field public final remoteLockMonitorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

.field public screenTuringOnTime:J

.field public final scrimControllerLazy:Ldagger/Lazy;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final setLockScreenShownRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

.field public showingOptions:Landroid/os/Bundle;

.field public final stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final surfaceControllerLazy:Ldagger/Lazy;

.field public switchingUserId:I

.field public final sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

.field public final sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final token:Landroid/os/IBinder;

.field public final uiBgExecutor:Ljava/util/concurrent/Executor;

.field public uiSoundsStreamType:I

.field public final unlockAnimationControllerLazy:Ldagger/Lazy;

.field public final unlockAnimationExecutor:Ljava/util/concurrent/Executor;

.field public unlockSoundId:I

.field public final unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final unlockedScreenOffAnimationHelper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

.field public final unoccluedAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

.field public final updateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final viewControllerLazy:Ldagger/Lazy;

.field public final viewMediatorLazy:Ldagger/Lazy;

.field public viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

.field public final visibilityListener:Lkotlin/reflect/KFunction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/keyguard/KeyguardDisplayManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/app/ActivityManager;Lcom/android/systemui/knox/KnoxStateMonitor;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/sensor/PickupController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;Landroid/os/PowerManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/log/SamsungServiceLogger;Landroid/media/AudioManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/BootAnimationFinishedTrigger;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/util/CarLifeManager;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/keyguard/KeyguardDisplayManager;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            "Lcom/android/systemui/util/DesktopManager;",
            "Lcom/android/systemui/sensor/PickupController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/DismissCallbackRegistry;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;",
            "Landroid/os/PowerManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Landroid/media/AudioManager;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/BootAnimationFinishedTrigger;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;",
            "Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            "Lcom/android/systemui/util/CarLifeManager;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ldagger/Lazy;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->centralSurfacesLazy:Ldagger/Lazy;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notificationShadeWindowControllerLazy:Ldagger/Lazy;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->scrimControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->activityManager:Landroid/app/ActivityManager;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pickupController:Lcom/android/systemui/sensor/PickupController;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dismissCallbackRegistry:Lcom/android/systemui/keyguard/DismissCallbackRegistry;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v2, p30

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationHelper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    move-object/from16 v2, p31

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    move-object/from16 v2, p32

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->dreamViewModelLazy:Ldagger/Lazy;

    move-object/from16 v2, p33

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v2, p34

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v2, p35

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object/from16 v2, p37

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->audioManager:Landroid/media/AudioManager;

    move-object/from16 v2, p39

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->bootAnimationFinishedTrigger:Lcom/android/systemui/BootAnimationFinishedTrigger;

    move-object/from16 v2, p40

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object/from16 v2, p41

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    move-object/from16 v2, p42

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    move-object/from16 v2, p43

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    move-object/from16 v2, p44

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-object/from16 v2, p45

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->commonNotifCollectionLazy:Ldagger/Lazy;

    move-object/from16 v2, p46

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notificationsControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p47

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    move-object/from16 v2, p49

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v2, p50

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->briefNowBarControllerLazy:Ldagger/Lazy;

    move-object/from16 v2, p52

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SHOW$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SHOW$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SHOW$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$HIDE$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$HIDE$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->HIDE$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$RESET$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$RESET$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->RESET$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_FINISHED_GOING_TO_SLEEP$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_FINISHED_GOING_TO_SLEEP$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_DRAWING$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_DRAWING$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_DRAWING$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SET_OCCLUDED$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SET_OCCLUDED$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_TIMEOUT$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_TIMEOUT$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$DISMISS$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$DISMISS$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$START_KEYGUARD_EXIT_ANIM$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$START_KEYGUARD_EXIT_ANIM$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_PENDING_TIMEOUT$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$KEYGUARD_DONE_PENDING_TIMEOUT$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_PENDING_TIMEOUT$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_WAKING_UP$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_WAKING_UP$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_GOING_TO_SLEEP$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$NOTIFY_STARTED_GOING_TO_SLEEP$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SYSTEM_READY$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$SYSTEM_READY$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SYSTEM_READY$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$CANCEL_KEYGUARD_EXIT_ANIM$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$CANCEL_KEYGUARD_EXIT_ANIM$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->CANCEL_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->setLockScreenShownRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setLockScreenShownRunnable$1;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->occludedSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handler$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handler$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handler$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$lock$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$lock$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$shadeWindowControllerHelper$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$shadeWindowControllerHelper$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disabled1:I

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->token:Landroid/os/IBinder;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$displayManager$2;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$displayManager$2;

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$refreshRateToken$2;

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$mainMaxRefreshRate$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$mainMaxRefreshRate$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$subMaxRefreshRate$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$subMaxRefreshRate$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-static {v3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    iput v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodShowStateCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-boolean v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->firstKeyguardShown:Z

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$visibilityListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$visibilityListener$1;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->visibilityListener:Lkotlin/reflect/KFunction;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fmmLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->carrierLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->remoteLockMonitorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->localReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$localReceiver$1;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->broadcastReceiver:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$broadcastReceiver$1;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

    sput-object p36, Lcom/android/systemui/keyguard/KeyguardDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    sput-object p38, Lcom/android/systemui/keyguard/SecurityDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    move-object/from16 v4, p51

    invoke-static {v4, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->occludeAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unoccluedAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$unoccluedAnimationRunner$1;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationRunner:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$aodAppearAnimationRunner$1;

    return-void
.end method

.method public static final access$canBeDismissedWhenSpenDetached(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Intent;ZZ)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "isBoot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v2

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->hasPenDetachmentOption()Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    if-nez v3, :cond_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz v2, :cond_1

    const-string p2, "canBeDismissedWhenSpenDetached isBoot="

    const-string p3, ", isScreenOffMemoRunning="

    const-string v0, ", hasPenDetachOpt="

    invoke-static {p2, p3, v0, p1, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final access$keyguardDone(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->keyguardDone(I)V

    return-void
.end method

.method public static final access$notifyRemoteLockRequested(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0x44d

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    instance-of p1, p1, Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public static final access$onAODShowStateChanged(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAODShowStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "KeyguardViewMediator"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final adjustStatusBarLocked$2()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->adjustStatusBarLocked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final cancelLockWhenCoverIsOpened(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelLockWhenCoverIsOpened "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->alarmManager:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_2

    move-object v2, p0

    :cond_2
    iget-object p0, v2, Lcom/android/systemui/keyguard/ViewMediatorProvider;->increaseDelayedShowingSeq:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final disable(IIIZ)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disabled1:I

    return-void
.end method

.method public final doKeyguardLocked$2(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->doKeyguardLocked:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final enableLooperLogController(IJ)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelHigh()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->looperLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x14

    move v1, p1

    move-wide v6, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->enable(IJJJZLkotlin/jvm/functions/Function2;)Z

    :cond_1
    return-void
.end method

.method public final getBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->barService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method

.method public final getHandler$1()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public final getSET_OCCLUDED()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SET_OCCLUDED$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getSHOW()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SHOW$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getShadeWindowControllerHelper()Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->shadeWindowControllerHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    return-object p0
.end method

.method public final handleSecMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const/4 v9, 0x1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v2, 0x44d

    const/4 v10, 0x0

    if-eq v1, v2, :cond_79

    const/16 v2, 0x44e

    if-eq v1, v2, :cond_75

    const/16 v2, 0x4b1

    if-eq v1, v2, :cond_71

    const/16 v2, 0x515

    if-eq v1, v2, :cond_70

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4b

    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_7c

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCoverOccluded "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", request Cover Bouncer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    const-string v4, "SubScreenManager"

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v2, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current running task: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    invoke-static {v5, v6, v4}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-eqz v3, :cond_1

    add-int/2addr v11, v9

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "className  "

    invoke-static {v5, v3, v4}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v11, :cond_6

    const-string v2, "no running task"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "no prev occluded app"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "prev occluded app: "

    invoke-static {v5, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mOccludedApps:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mRequestBouncerForLauncherTask:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/subscreen/SubScreenManager;->startSubHomeActivity()V

    :cond_6
    :goto_4
    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v1, :cond_7

    const-string v0, "onCoverOccludedStateChanged() no plugin"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :cond_7
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onCoverOccludedStateChanged(Z)V

    goto/16 :goto_4b

    :pswitch_1
    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    invoke-interface {v1, v9}, Lcom/android/systemui/util/DesktopManager;->notifyOccluded(Z)V

    goto/16 :goto_4b

    :pswitch_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->START_KEYGUARD_EXIT_ANIM$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    move-result v0

    const-string v15, "KeyguardViewMediator"

    if-eqz v0, :cond_1f

    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isDisabledUnlockAnimation(Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)Z

    move-result v0

    iget-object v7, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    if-nez v0, :cond_9

    move-object v9, v7

    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_9
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-nez v0, :cond_c

    iget-boolean v0, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz v0, :cond_a

    :goto_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v0

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v7, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    goto :goto_6

    :cond_b
    move v0, v9

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v7

    goto/16 :goto_10

    :cond_c
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move-object v9, v7

    goto/16 :goto_f

    :cond_e
    :goto_8
    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-nez v0, :cond_f

    sget v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v7, v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v7, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v0, v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFingerprintUnlocked()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_9
    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v1, :cond_10

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;

    invoke-direct {v2, v1, v8}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->setPendingRunnable(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;)V

    iput-object v10, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    iput-object v10, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    :cond_10
    const/16 v16, 0x0

    goto :goto_a

    :cond_11
    move/from16 v16, v9

    :goto_a
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v1, :cond_12

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFingerprintUnlocked()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeMaskViewForOpticalFpSensor()V

    :cond_12
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated()Z

    move-result v4

    iget-object v6, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_15

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v12, v1

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v12, :cond_14

    aget-object v10, v1, v11

    move-object/from16 p1, v1

    iget v1, v10, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v1, v9, :cond_13

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/2addr v11, v9

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_b

    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/RemoteAnimationTarget;

    iget-object v10, v10, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v10, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    iget-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    if-eqz v1, :cond_16

    array-length v2, v1

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v2, :cond_16

    aget-object v11, v1, v10

    iget-object v11, v11, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v9

    goto :goto_d

    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    if-nez v6, :cond_18

    :cond_17
    move-object v9, v7

    goto :goto_e

    :cond_18
    new-instance v10, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v10}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v11, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v18, v3

    move-object v3, v10

    move-object v10, v6

    move-object/from16 v6, v18

    move-object v9, v7

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$updateAppLeashAndKeyguardVisibility$4;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/view/SurfaceControl$Transaction;ZLjava/util/ArrayList;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    iput-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    const/4 v1, 0x0

    new-array v0, v1, [Landroid/view/RemoteAnimationTarget;

    iput-object v0, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    :cond_19
    :goto_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :goto_f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_10
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v1, :cond_1a

    :try_start_0
    invoke-interface {v1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_11

    :catch_0
    const-string v1, "RemoteException"

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    const/4 v3, 0x0

    invoke-static {v15, v2, v1, v3}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    iput-object v3, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    goto :goto_12

    :cond_1a
    const/4 v3, 0x0

    :goto_12
    iput-object v3, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    :cond_1b
    if-eqz v0, :cond_1c

    const-string/jumbo v1, "showForegroundImmediatelyIfNeeded returns true"

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_1c
    :goto_13
    if-eqz v0, :cond_1f

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOverrideStartKeyguardExitAnimation$1;

    invoke-direct {v0, v8, v14}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOverrideStartKeyguardExitAnimation$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/os/Message;)V

    iget-object v1, v9, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1d
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    goto :goto_14

    :cond_1e
    const/4 v2, 0x1

    :goto_14
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    iget-object v3, v9, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;J)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->start(Z)V

    iput-object v1, v9, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->delayedActionParams:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    goto/16 :goto_4b

    :cond_1f
    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestedShowSurfaceBehindKeyguard()Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_18

    :cond_20
    invoke-virtual {v8, v13}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isDisabledUnlockAnimation(Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_27

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    const/16 v18, 0x1

    goto :goto_15

    :cond_21
    const/16 v18, 0x0

    :goto_15
    xor-int/lit8 v0, v18, 0x1

    if-eqz v0, :cond_26

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    if-nez v0, :cond_22

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    const v3, 0x3c23d70a    # 0.01f

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceAppearAmount(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_22
    iget-object v3, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_25

    aget-object v0, v3, v5

    if-eqz v0, :cond_24

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v6}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->isValid(Landroid/view/SurfaceControl;F)Z

    move-result v7

    if-nez v7, :cond_23

    goto :goto_17

    :cond_23
    const-string v7, "KeyguardSurface"

    const-string/jumbo v9, "setLeashAppearAmount amount=1.0 hasTransaction=true"

    invoke-static {v7, v9}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1, v0, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_17

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string/jumbo v0, "setLeashAppearAmount exception"

    invoke-static {v7, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_17
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_16

    :cond_25
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_26
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    :cond_27
    iget-object v0, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_28

    :try_start_2
    const-string v1, "keepOrDisableUnlockAnimation disabled"

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    :cond_28
    :goto_18
    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    if-nez v0, :cond_29

    iget v0, v14, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no need to handle msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object v0, v13, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    if-eqz v0, :cond_7c

    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_4b

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_4b

    :pswitch_3
    const/4 v4, 0x2

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    const/4 v2, 0x1

    goto :goto_19

    :cond_2a
    const/4 v2, 0x0

    :goto_19
    iget v0, v0, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v0, 0x0

    :goto_1a
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    const-string v5, "KeyguardFoldController"

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleFoldMessage: isOpened="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", showing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3a

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v3, :cond_39

    if-eqz v2, :cond_38

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v3

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    sget-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FOLD_OPENED:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-object v5, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_22

    :cond_2c
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    const-string v4, "KeyguardFoldController"

    const-string v5, "dismiss failed. Permanent state."

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_2d
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v5, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_4
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasOccludedMsg$1()Z

    move-result v6

    if-eqz v6, :cond_2e

    iget-boolean v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->curIsOccluded:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x1

    if-ne v6, v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_1b

    :catchall_0
    move-exception v0

    goto/16 :goto_21

    :cond_2e
    const/4 v3, 0x0

    :goto_1b
    monitor-exit v5

    if-eqz v3, :cond_2f

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    const-string v4, "KeyguardFoldController"

    const-string/jumbo v5, "will handle occluded"

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_2f
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->RESET$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v3, :cond_30

    goto :goto_1c

    :cond_30
    const/4 v3, 0x0

    :goto_1c
    iget-object v3, v3, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetPendingReset:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_31

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->dependency:Lcom/android/systemui/keyguard/KeyguardFoldControllerDependency;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerDependencyImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_31
    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-static {v6}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId$default(Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    if-nez v3, :cond_33

    if-eqz v5, :cond_32

    goto :goto_1d

    :cond_32
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardViewController;->folderOpenAndDismiss()V

    goto/16 :goto_22

    :cond_33
    :goto_1d
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_35

    iget v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->wakeReason:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_34

    goto :goto_1e

    :cond_34
    move v12, v4

    goto :goto_1f

    :cond_35
    :goto_1e
    const/4 v12, 0x3

    :goto_1f
    invoke-virtual {v1, v12}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v3, :cond_36

    move-object v10, v3

    goto :goto_20

    :cond_36
    const/4 v10, 0x0

    :goto_20
    iget-object v3, v10, Lcom/android/systemui/keyguard/ViewMediatorProvider;->tryKeyguardDone:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_22

    :goto_21
    monitor-exit v5

    throw v0

    :cond_37
    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    iget-object v4, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_22

    :cond_38
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->getViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    goto :goto_22

    :cond_39
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v3, :cond_3a

    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewMediatorHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->adjustStatusBarLocked$2()V

    :cond_3a
    :goto_22
    iget-object v3, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->normalRankedStateListeners:Ljava/util/List;

    iget-object v4, v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldConfig:Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;->isDebug()Z

    move-result v4

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->onFoldStateChanged(Ljava/util/List;ZZZ)V

    goto/16 :goto_4b

    :pswitch_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    check-cast v0, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    goto :goto_23

    :cond_3b
    const/4 v0, 0x0

    :goto_23
    const-string v1, "handleNotifyScreenTurningOn fastWakeUnlockMode="

    if-nez v0, :cond_40

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v3

    sget v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    and-int/2addr v2, v3

    if-nez v2, :cond_3c

    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_REQUEST:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_3c

    goto :goto_25

    :cond_3c
    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->getMode()I

    move-result v3

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    sget v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_FRAME_COMMIT:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_24

    :cond_3d
    const/4 v2, 0x0

    :goto_24
    if-nez v2, :cond_3f

    :cond_3e
    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-nez v2, :cond_40

    :cond_3f
    :goto_25
    const-string v0, "handleNotifyScreenTurningOn"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn()V

    goto/16 :goto_4b

    :cond_40
    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    iget-object v4, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v4, :cond_41

    const/4 v4, 0x1

    goto :goto_26

    :cond_41
    const/4 v4, 0x0

    :goto_26
    iget-wide v5, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastShowingTime:J

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-eqz v5, :cond_42

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v9, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastShowingTime:J

    sub-long v9, v5, v9

    goto :goto_27

    :catchall_1
    move-exception v0

    goto/16 :goto_2b

    :cond_42
    :goto_27
    iget-object v5, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v5

    iget-object v6, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v6, :cond_43

    goto :goto_28

    :cond_43
    const/4 v6, 0x0

    :goto_28
    iget-object v6, v6, Lcom/android/systemui/keyguard/ViewMediatorProvider;->hasPendingLock:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasOccludedMsg$1()Z

    move-result v7

    if-eqz v0, :cond_44

    const/4 v11, 0x1

    goto :goto_29

    :cond_44
    const/4 v11, 0x0

    :goto_29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bioUnlock="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasShow="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pendingLock="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasCb="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hasOccluded="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_45

    monitor-exit v2

    goto/16 :goto_4b

    :cond_45
    :try_start_6
    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-nez v1, :cond_46

    if-nez v5, :cond_47

    :cond_46
    if-nez v4, :cond_48

    if-nez v3, :cond_47

    if-eqz v6, :cond_48

    :cond_47
    iput-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    goto :goto_2a

    :cond_48
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DELAY_NOTIFY_DRAWN_PREMIUM_WATCH:Z

    if-eqz v1, :cond_4a

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isPremiumWatchEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hasOccludedMsg$1()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_4a

    :cond_49
    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4a

    iput-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->visibilityListener:Lkotlin/reflect/KFunction;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt$sam$java_util_function_IntConsumer$0;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt$sam$java_util_function_IntConsumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    const-string v0, "delayed notifyDrawn caused by occluded"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v2

    goto/16 :goto_4b

    :cond_4a
    const-wide/16 v5, 0xc8

    cmp-long v1, v9, v5

    if-gez v1, :cond_4b

    if-nez v4, :cond_4b

    :try_start_7
    iput-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "delayed notifyDrawn"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v2

    goto/16 :goto_4b

    :cond_4b
    :try_start_8
    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    :goto_2a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v2

    goto/16 :goto_4b

    :goto_2b
    monitor-exit v2

    throw v0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    const-string v2, "FI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_4c

    const-string v2, "ignoreKeyguardState"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v2, v17

    goto :goto_2c

    :cond_4c
    const/4 v3, 0x0

    move v2, v3

    :goto_2c
    if-eqz v0, :cond_4d

    const-string v4, "ignoreUnlock"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v4, v17

    goto :goto_2d

    :cond_4d
    move v4, v3

    :goto_2d
    if-eqz v0, :cond_4e

    const-string v5, "notificationKey"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    :cond_4e
    const/4 v5, 0x0

    :goto_2e
    const-string/jumbo v6, "runOnCover"

    if-eqz v0, :cond_4f

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_2f

    :cond_4f
    const/4 v7, 0x0

    :goto_2f
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    iget-object v9, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v3, :cond_50

    invoke-interface {v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_51

    :cond_50
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v3, :cond_5a

    iget-object v3, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_51
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-nez v3, :cond_52

    sget-boolean v10, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v10, :cond_53

    :cond_52
    if-eqz v7, :cond_53

    invoke-interface {v9, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchStartSubscreenBiometric(Landroid/content/Intent;)V

    :cond_53
    if-nez v3, :cond_59

    const/4 v3, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v6, v17

    goto :goto_30

    :cond_54
    move v6, v3

    :goto_30
    if-eqz v0, :cond_55

    const-string v7, "bio_extend_duration"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v7, v17

    goto :goto_31

    :cond_55
    move v7, v3

    :goto_31
    if-eqz v0, :cond_56

    const-string/jumbo v10, "showCoverToast"

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    goto :goto_32

    :cond_56
    const/4 v10, 0x0

    :goto_32
    if-nez v10, :cond_58

    if-nez v7, :cond_58

    if-eqz v6, :cond_57

    goto :goto_33

    :cond_57
    const/4 v3, 0x0

    goto :goto_34

    :cond_58
    :goto_33
    const/4 v3, 0x1

    :goto_34
    if-eqz v3, :cond_5a

    :cond_59
    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/doze/PluginAODManager;->showCoverToast(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_4b

    :cond_5a
    if-eqz v4, :cond_5b

    const-string v2, "handleSetPendingIntentAfterUnlock() ignoreUnlock"

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_4b

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v0, :cond_5c

    const-string v3, "afterKeyguardGone"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v3, v17

    goto :goto_35

    :cond_5c
    const/4 v4, 0x0

    move v3, v4

    :goto_35
    if-eqz v5, :cond_5d

    const-string/jumbo v6, "|"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v5, v6, v4, v7}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5d

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_36

    :cond_5d
    iget-object v4, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-static {v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId$default(Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)I

    move-result v4

    :goto_36
    if-nez v3, :cond_5e

    iget-object v5, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v5, v4}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isPersona(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v13, 0x1

    goto :goto_37

    :cond_5e
    move v13, v3

    :goto_37
    iget-object v3, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v3

    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v4, :cond_60

    if-eqz v2, :cond_5f

    if-nez v3, :cond_5f

    goto :goto_38

    :cond_5f
    const/4 v5, 0x0

    goto :goto_39

    :cond_60
    :goto_38
    const/4 v5, 0x1

    :goto_39
    if-eqz v0, :cond_66

    const-string v6, "dismissType"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_66

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v10, -0x37ba085b

    if-eq v7, v10, :cond_64

    const v10, -0xa17f9aa

    if-eq v7, v10, :cond_63

    const v10, 0x1ea9d7a4

    if-eq v7, v10, :cond_61

    goto :goto_3b

    :cond_61
    const-string v7, "fingerprinterror"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_3b

    :cond_62
    sget-object v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_FINGERPRINT_ERROR:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v9, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    :goto_3a
    const/4 v5, 0x1

    goto :goto_3b

    :cond_63
    const-string/jumbo v7, "shutdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    sget-object v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v9, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    goto :goto_3a

    :cond_64
    const-string v7, "reboot"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    goto :goto_3b

    :cond_65
    sget-object v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_REBOOT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-interface {v9, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V

    goto :goto_3a

    :cond_66
    :goto_3b
    sget-object v6, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PENDING_INTENT:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v6}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    if-eqz v0, :cond_67

    const-string v6, "dismissIfInsecure"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_3c

    :cond_67
    const/4 v5, 0x0

    :goto_3c
    iget-object v6, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    if-nez v5, :cond_68

    if-eqz v2, :cond_69

    if-eqz v3, :cond_68

    goto :goto_3d

    :cond_68
    const/4 v3, 0x1

    goto :goto_3e

    :cond_69
    :goto_3d
    if-eqz v4, :cond_6a

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardViewController;->setShowSwipeBouncer(Z)V

    :goto_3e
    move v14, v3

    goto :goto_3f

    :cond_6a
    const/4 v3, 0x1

    const/4 v14, 0x0

    :goto_3f
    if-eqz v0, :cond_6b

    const-string/jumbo v2, "withAnimation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    goto :goto_40

    :cond_6b
    const/4 v9, 0x1

    :goto_40
    iput-boolean v9, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    if-eqz v0, :cond_6c

    const-string/jumbo v2, "wakeAndUnlock"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    move v15, v11

    goto :goto_41

    :cond_6c
    const/4 v3, 0x0

    move v15, v3

    :goto_41
    iget-boolean v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    const-string v3, "handleSetPendingIntentAfterUnlock() : afterKeyguardGone="

    const-string v4, " isInstantDismiss="

    const-string v5, " withAnimation="

    invoke-static {v3, v4, v5, v13, v14}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wakeAndUnlock="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardViewMediator"

    invoke-static {v3, v2}, Lcom/android/systemui/keyguard/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/keyguard/KeyguardViewController;

    new-instance v11, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;

    invoke-direct {v11, v8, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleSetPendingIntentAfterUnlock$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    const/4 v12, 0x0

    invoke-interface/range {v10 .. v15}, Lcom/android/keyguard/KeyguardViewController;->dismissWithAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    goto/16 :goto_4b

    :cond_6d
    if-eqz v2, :cond_6e

    invoke-virtual {v8, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_4b

    :cond_6e
    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v2, :cond_6f

    move-object v10, v2

    goto :goto_42

    :cond_6f
    const/4 v10, 0x0

    :goto_42
    iget-object v2, v10, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isExternallyEnabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7c

    if-eqz v5, :cond_7c

    invoke-virtual {v8, v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto/16 :goto_4b

    :cond_70
    const-string v0, "adjustStatusBarLocked - ADJUST_STATUS_BAR : flags=0x"

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_7c

    iget v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    const/16 v3, 0x10

    invoke-static {v3}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableFlags:I

    iget-object v2, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->token:Landroid/os/IBinder;

    iget-object v3, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4b

    :catch_3
    move-exception v0

    const-string v1, "adjustStatusBarLocked - ADJUST_STATUS_BAR - disable failed"

    const-string v2, "KeyguardViewMediator"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    :cond_71
    const/4 v3, 0x0

    const-string v0, "handleBootCompleted"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz v0, :cond_7c

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->subScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SubScreenManager"

    const-string v2, "onBootCompleted() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    if-nez v2, :cond_7c

    const-string v2, "init() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v4, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_74

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSubDisplay() : length "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    invoke-static {v5, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    array-length v4, v2

    move v11, v3

    :goto_43
    if-ge v11, v4, :cond_74

    aget-object v3, v2, v11

    if-nez v3, :cond_72

    const-string v3, "Do not show SubScreen UI on null display"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    const/4 v3, 0x1

    goto :goto_45

    :cond_72
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_73

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Show SubScreen UI on this display "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v3

    goto :goto_46

    :cond_73
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Do not show SubScreen UI on this display "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :goto_45
    add-int/2addr v11, v3

    goto :goto_43

    :cond_74
    const/4 v10, 0x0

    :goto_46
    iput-object v10, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->initWindow()V

    iget-object v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_7c

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenManager$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/subscreen/SubScreenManager$6;-><init>(Lcom/android/systemui/subscreen/SubScreenManager;)V

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    goto/16 :goto_4b

    :cond_75
    const-string v0, "handleLaunchPersoLock"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "doKeyguardLocked"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_DRAWING$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardLocked$2(Landroid/os/Bundle;)V

    goto :goto_48

    :catchall_2
    move-exception v0

    goto :goto_49

    :cond_76
    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->HIDE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeMessage(I)V

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v0, :cond_77

    move-object v10, v0

    goto :goto_47

    :cond_77
    const/4 v10, 0x0

    :goto_47
    iget-object v0, v10, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setHiding:Lkotlin/jvm/functions/Function1;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    :goto_48
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v1

    goto :goto_4b

    :goto_49
    monitor-exit v1

    throw v0

    :cond_79
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "handleRemoteLockRequested"

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    instance-of v1, v0, Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v1, :cond_7a

    check-cast v0, Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-nez v0, :cond_7a

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7c

    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    goto :goto_4b

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v0

    if-nez v0, :cond_7b

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->doKeyguardLocked$2(Landroid/os/Bundle;)V

    goto :goto_4a

    :cond_7b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->resetStateLocked$2()V

    :goto_4a
    iget-object v0, v8, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    :catch_4
    :cond_7c
    :goto_4b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasOccludedMsg$1()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public final initAlphaForAnimationTargets(Landroid/view/IRemoteAnimationRunner;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->exitAnimationRunner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAnimationDisabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-nez p1, :cond_3

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-eqz p1, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p4

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, p4, v4

    iget v6, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v6, v2, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RemoteAnimationTarget;

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v4, "KeyguardViewMediator"

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initAlphaForAnimationTargets: MODE_CLOSING wallpaper target it="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p4

    move v5, v0

    :goto_4
    if-ge v5, v2, :cond_9

    aget-object v6, p4, v5

    iget v7, v6, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v7, :cond_8

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    new-instance p4, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p4, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationTarget;

    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_6
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initAlphaForAnimationTargets: MODE_OPENING wallpaper target it="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6

    :cond_b
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    :goto_7
    if-ge v0, v1, :cond_d

    aget-object v4, p3, v0

    iget v5, v4, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v5, :cond_c

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p4, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/SurfaceControl;

    invoke-virtual {p2, p4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_9

    :cond_f
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V

    :cond_10
    return p1
.end method

.method public final isDisabledUnlockAnimation(Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewController;->isLaunchTransitionRunning()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewController;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    if-eqz p1, :cond_2

    array-length p1, p1

    if-le p1, v3, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastGoingAwayFlags:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    const/4 v1, 0x5

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getTransitionAnimationScale()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_5

    const/4 v1, 0x6

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->scrimControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, p1, :cond_7

    const/16 v1, 0x8

    goto :goto_2

    :cond_7
    sget-boolean p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImplKt;->DEBUG_DISABLE_REMOTE_UNLOCK_ANIMATION:Z

    if-eqz p0, :cond_8

    const/16 v1, 0xff

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    :goto_0
    const/4 v1, 0x7

    goto :goto_2

    :cond_a
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "isDisabledUnlockAnimation why="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return v3

    :cond_b
    return v2
.end method

.method public final isEnabledBiometricUnlockVI()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result p0

    return p0
.end method

.method public final isKeyguardDisabled(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getLockScreenOverrideMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    move v4, v2

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return v2

    :cond_4
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardDisabledBySettings(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    return v2

    :cond_6
    if-eqz p1, :cond_7

    return v3

    :cond_7
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    move-result p1

    if-eqz p1, :cond_8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "KeyguardViewMediator"

    const-string v4, "Failed to stop app pinning"

    invoke-static {p1, v4}, Lcom/android/systemui/keyguard/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->hasPendingAuthentication()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v4, :cond_9

    move p1, v2

    goto :goto_3

    :cond_9
    move p1, v3

    :goto_3
    if-eqz p1, :cond_a

    const-string p0, "keyguardDisabled: pending fingerprint auth"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return v2

    :cond_a
    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isLockScreenDisabledbyKNOX()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p0, "keyguardDisabled: it is disabled by Knox"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return v2

    :cond_b
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_c

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p0, "doKeyguard: not showing because cover is showing"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return v2

    :cond_c
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_HOMEHUB:Z

    if-eqz p1, :cond_d

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pogoPlugged:I

    if-eqz p0, :cond_d

    const-string p0, "keyguardDisabled: it is HomeHub device and pogo is plugged"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return v2

    :cond_d
    return v3
.end method

.method public final isKeyguardDisabledBySettings(Z)Z
    .locals 3

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "keyguardDisabled: factory binary"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/FactoryTest;->checkAutomationTestOption(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const-string p0, "keyguardDisabled: automation test"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAccessControlEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    const-string p0, "keyguardDisabled: access control is enabled"

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public final isKeyguardHiding()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result p0

    return p0
.end method

.method public final isScreenOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public final isSecure$2()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result p0

    return p0
.end method

.method public final isShowing$1()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isShowing:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isUnlockStartedOrFinished()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockAnimationControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isAnimatingBetweenKeyguardAndSurfaceBehind()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final keyguardGoingAway(I)Z
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    const-string v1, "keyguardGoingAway flags=0x"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->needsBlankScreen:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    iget-boolean v2, v2, Lcom/android/systemui/doze/PluginAODManager;->mIsDifferentOrientation:Z

    if-eqz v2, :cond_0

    const-string v1, "needPendingGoingAway: fastWakeAndUnlock and different orientation"

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$keyguardGoingAway$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reservedKeyguardGoingAway:Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :goto_0
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastGoingAwayFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_2

    :goto_1
    const-string p1, "KeyguardViewMediator"

    const-string v0, "Error while calling WindowManager"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {p1, v1, v0, p0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p0, v3

    :goto_2
    sget-object v2, Lcom/android/systemui/keyguard/KeyguardDumpLog;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardDumpLog;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3c

    move v4, p0

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->state$default(Lcom/android/systemui/keyguard/KeyguardDumpLog;IZZZIII)V

    return p0
.end method

.method public final needsCollapsePanelWithNoAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSET_OCCLUDED()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final notifyDrawn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->screenTuringOnTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "notifyDrawn "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDrawnCallback;->onDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "KeyguardViewMediator"

    const-string v0, "Exception calling onDrawn():"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {p1, v1, v0, p0}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final onAbortHandleStartKeyguardExitAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->stateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->onDismissCancelled()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->onAbortKeyguardDone()V

    return-void
.end method

.method public final onAbortKeyguardDone()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardViewController;->reset(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->reset()V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    return-void
.end method

.method public final onForegroundShown()V
    .locals 4

    const-string v0, "BioUnlock"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onForegroundShown hasDrawnCb="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final onKeyguardExitFinished$2()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    const-string v2, "BioUnlock"

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewRootImpl;->setReportNextDraw(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager;->notifyDismissKeyguard()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setUnlockingKeyguard(Z)V

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->requestSessionClose()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pm:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isSecure$2()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSecurityPropertyUpdated$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onSecurityPropertyUpdated$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    :cond_4
    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getShadeWindowControllerHelper()Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->forceVisibleForUnlockAnimation:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->centralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setLeaveOpenOnKeyguardHide(Z)V

    :cond_6
    return-void
.end method

.method public final onKeyguardGone()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->hideAfterKeyguardInvisible()V

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$registerSysDumpHeap$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$registerSysDumpHeap$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final playSound$2(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockSoundEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$playSound$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postHandleMsg(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->SYSTEM_READY$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-ne v0, v1, :cond_6

    const-string v0, "KeyguardViewMediator"

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    if-nez v1, :cond_0

    sget-boolean v8, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, v7, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->context:Landroid/content/Context;

    const-class v9, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v8, :cond_1

    sget-object v9, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$1;

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v10, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v11, v7, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->context:Landroid/content/Context;

    new-instance v12, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;

    invoke-direct {v12, v7}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$init$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V

    invoke-direct {v10, v11, v12}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v8, v9, v10}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleSystemReady$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleSystemReady$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    const/4 v8, 0x6

    invoke-virtual {v7, v1, v8, v6}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$knoxStateCallback$1;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v6, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v6, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_3

    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->remoteLockMonitorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$remoteLockMonitorCallback$1;

    invoke-interface {v1, v4, v6}, Lcom/android/internal/widget/ILockSettings;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "RemoteLockMonitorCallback regi Failed!"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-static {v0, v6, v4, v1}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->pickupController:Lcom/android/systemui/sensor/PickupController;

    iget-object v4, v1, Lcom/android/systemui/sensor/PickupController;->baseSensorListener:Lcom/android/systemui/sensor/PickupController$baseSensorListener$1;

    iget-object v6, v1, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v1, v1, Lcom/android/systemui/sensor/PickupController;->pickupListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "register listener caller="

    const-string v4, "PickupController"

    invoke-static {v3, v1, v4}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v1, :cond_1f

    const-string v1, "postHandleSystemReady(). check FBE"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-interface {v5, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateUserUnlockNotification(I)V

    goto/16 :goto_9

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeCallbacks$1$1(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    move-object v5, v12

    :goto_1
    iget-object v5, v5, Lcom/android/systemui/keyguard/ViewMediatorProvider;->getDelayedShowingSequence:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lt v5, v3, :cond_9

    sget-boolean v3, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastSleepReason:I

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->delayedDrawnRunnable:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$delayedDrawnRunnable$1;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->notifyDrawn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    iput-object v12, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->drawnCallback:Lcom/android/internal/policy/IKeyguardDrawnCallback;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_3
    monitor-exit v0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastShowingTime:J

    :cond_b
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->resetFoldOpenState$1()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->notifyShowKeyguard()V

    :cond_d
    iput-boolean v11, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    goto/16 :goto_9

    :goto_4
    monitor-exit v0

    throw p0

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_17

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->binderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->MAX_DURATION:J

    const-wide/32 v7, 0xf4240

    div-long v7, v0, v7

    const-wide/16 v9, 0xbb8

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorImpl;->startMonitoring(IJJ)Z

    :cond_f
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    const/16 v4, 0xa

    if-eq v0, v4, :cond_10

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v11}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setDozing(Z)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isShowing$1()Z

    move-result v0

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isHiding()Z

    move-result v4

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    sget-boolean v5, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v5, :cond_14

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    iget v8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    const/16 v9, 0x67

    if-ne v8, v9, :cond_14

    if-eqz v0, :cond_14

    if-nez v4, :cond_14

    if-eqz v5, :cond_14

    iget-boolean v4, v5, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v4, :cond_14

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    if-eq v7, v2, :cond_11

    if-nez v1, :cond_14

    goto :goto_5

    :cond_11
    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v1, :cond_13

    move-object v12, v1

    :cond_13
    iget-object v1, v12, Lcom/android/systemui/keyguard/ViewMediatorProvider;->handleHide:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_14
    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->requestSessionClose()V

    goto :goto_6

    :cond_15
    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v6, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState(I)V

    :cond_16
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_17
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_GOING_TO_SLEEP$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lock$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->NOTIFY_STARTED_WAKING_UP$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_8

    :cond_18
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isKeyguardHiding()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-boolean v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->hidingByDisabled:Z

    if-nez v3, :cond_1a

    const-string v3, "change mHiding = false"

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v3, :cond_19

    move-object v12, v3

    :cond_19
    iget-object v3, v12, Lcom/android/systemui/keyguard/ViewMediatorProvider;->setHiding:Lkotlin/jvm/functions/Function1;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->reset()V

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->resetFoldOpenState$1()V

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastSleepReason:I

    if-ne v0, v4, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getShadeWindowControllerHelper()Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0, v11}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    :cond_1b
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string v4, "aod_show_state"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_1c
    iput-boolean v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isAODShowStateCbRegistered:Z

    iput-boolean v11, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->disableRemoteUnlockAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->cancel()V

    goto :goto_9

    :goto_8
    monitor-exit v0

    throw p0

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->KEYGUARD_DONE_PENDING_TIMEOUT$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v0, :cond_1e

    move-object v12, v0

    :cond_1e
    iget-object v0, v12, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isKeyguardDonePending:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleKeyguardDonePendingTimeout donePending="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    :cond_1f
    :goto_9
    iget p1, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$endHandleMsgTime$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;I)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/util/function/LongConsumer;)V

    iput v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->handleMsgLogKey:I

    return-void
.end method

.method public final removeCallbacks$1$1(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeMessage(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final removeShowMsg()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getHandler$1()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getSHOW()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->showKeyguardWakeLock:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public final removeShowMsgOnCoverOpened()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v2

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->switchingUserId:I

    iget v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAutomaticUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq v3, v1, :cond_0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->removeShowMsg()V

    :cond_2
    return-void
.end method

.method public final resetStateLocked$2()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->resetStateLocked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final setKeyguardGoingAway(I)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->goingAwayWithAnimation:Z

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->biometricUnlockControllerLazy:Ldagger/Lazy;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    or-int/lit8 p1, p1, 0x2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->isWakeAndUnlocking:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit16 p1, p1, 0x100

    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v1, :cond_4

    or-int/lit16 p1, p1, 0x200

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isUnlockOnFoldOpened()Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 p1, p1, 0x20

    :cond_5
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->sysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const-wide/16 v5, 0x1356

    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->start(IJJ)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    if-nez v1, :cond_7

    sget v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v4, v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne v1, v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFingerprintUnlocked()Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->fixedRotationMonitor:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;

    iget-boolean v5, v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    const-string v5, "KeyguardFixedRotation"

    const-string/jumbo v6, "start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    iget-object v5, v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->windowManager:Landroid/view/IWindowManager;

    iget-object v6, v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    iput-boolean v3, v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->keyguardGoingAway(I)Z

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastUnlockMode()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isInvisibleAfterGoingAwayTransStarted:Z

    if-eqz p1, :cond_b

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->goingAwayTime:J

    :cond_b
    if-eqz v0, :cond_c

    iget p1, v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getShadeWindowControllerHelper()Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->setForceInvisible(Z)V

    :cond_c
    return-void
.end method

.method public final setShowingOptions(Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p1, :cond_1

    const-string v1, "KeyguardExitEditVI"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-boolean v1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "request_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-object p1, v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperRequestId:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->showingOptions:Landroid/os/Bundle;

    if-eqz p0, :cond_5

    const-string p1, "preview_pfd_from_preview"

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    :cond_5
    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->backupWallpaperPreviewPFD:Landroid/os/ParcelFileDescriptor;

    :goto_3
    return-void
.end method

.method public final startSetPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "notificationKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->uiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;

    invoke-direct {v2, p1, v0, p0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$startSetPendingIntent$1;-><init>(Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isPanelFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    :cond_1
    return-void
.end method

.method public final updatePendingLock(IJZILcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda1;Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda8;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    const-string v0, "net.mirrorlink.on"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    cmp-long v0, p2, v2

    if-gtz v0, :cond_4

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p5}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v0, p2, v2

    if-gtz v0, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    if-nez p4, :cond_8

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorProvider:Lcom/android/systemui/keyguard/ViewMediatorProvider;

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move-object p0, v4

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ViewMediatorProvider;->updatePhoneState:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    cmp-long p0, p2, v2

    if-gtz p0, :cond_6

    goto :goto_2

    :cond_6
    move-object p6, p7

    goto :goto_2

    :cond_7
    move-object p6, v4

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_2
    if-eqz p6, :cond_9

    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method
