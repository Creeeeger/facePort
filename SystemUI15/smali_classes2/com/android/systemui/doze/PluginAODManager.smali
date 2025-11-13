.class public final Lcom/android/systemui/doze/PluginAODManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public mAODMachine:Lcom/android/systemui/doze/AODMachine;

.field public mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

.field public mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field public final mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

.field public final mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

.field public mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

.field public mBatteryMeterViewControllerFactory:Lcom/android/systemui/battery/BatteryMeterViewController$Factory;

.field public mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field public mClockTransitionStarted:Z

.field public final mCommonNotifCollectionLazy:Ldagger/Lazy;

.field public mConnectionRunnableList:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mControlScreenOff:Z

.field public mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

.field public mCoverPluginContext:Landroid/content/Context;

.field public final mCoverScreenManagerLazy:Ldagger/Lazy;

.field public mCurrentPhoneState:I

.field public final mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public final mDisplayStateLock:Landroid/os/IBinder;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mDozing:Z

.field public mEmm:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

.field public mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field public final mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field public final mFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

.field public final mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsDifferentOrientation:Z

.field public mIsFolderOpened:Z

.field public mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field public final mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

.field public final mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

.field public final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field public mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mNotifCollectionListener:Lcom/android/systemui/doze/PluginAODManager$8;

.field public final mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

.field public final mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public mPanelViewControllerLazy:Ldagger/Lazy;

.field public mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mPluginAODStateProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mRefreshRateToken:Landroid/os/IBinder;

.field public mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSmartAlerts:Ljava/util/ArrayList;

.field public mStartedByFolderClosed:Z

.field public final mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

.field public final mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public final mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

.field public final mToken:Landroid/os/IBinder;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mWakefulness:I

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

.field public final mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

.field public mZigzagPosition:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/subscreen/SubScreenManager;Ldagger/Lazy;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ldagger/Lazy;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/aod/AODTouchModeManager;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardViewController;",
            "Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/statusbar/phone/DozeServiceHost;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/log/SamsungServiceLogger;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/aod/AODTouchModeManager;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaperController;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    move-object/from16 v2, p21

    move-object/from16 v3, p23

    move-object/from16 v4, p27

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-direct {v5}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v6, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    invoke-virtual {v5, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    iget-object v5, v5, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    iput-object v5, v0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetNotiController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotiIconMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayStateLock:Landroid/os/IBinder;

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mToken:Landroid/os/IBinder;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$1;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$2;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$3;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$4;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$4;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-virtual {v6, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$5;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$5;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$6;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$6;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$7;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$7;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

    new-instance v6, Lcom/android/systemui/doze/PluginAODManager$8;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/PluginAODManager$8;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    iput-object v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotifCollectionListener:Lcom/android/systemui/doze/PluginAODManager$8;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    const/4 v7, 0x0

    iput v7, v0, Lcom/android/systemui/doze/PluginAODManager;->mCurrentPhoneState:I

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mRefreshRateToken:Landroid/os/IBinder;

    move-object/from16 v8, p1

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mContext:Landroid/content/Context;

    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v8, p3

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v8, p5

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object/from16 v8, p10

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    move-object/from16 v8, p16

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v8, p17

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v8, p18

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    move-object/from16 v8, p19

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v8, p25

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProvider;

    move-object/from16 v8, p6

    iget-object v8, v8, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    iput-object v8, v0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    sget-boolean v8, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v8, :cond_6

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    sget-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_COMMON:Z

    if-eqz v8, :cond_2

    const-class v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v9, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    if-eqz v1, :cond_1

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v5

    :goto_0
    const/16 v9, 0x12d

    invoke-virtual {v1, v9, v8}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_1
    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v9, Lcom/android/systemui/media/SubscreenMusicWidgetController;

    invoke-virtual {v8, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/SubscreenMusicWidgetController;

    new-instance v9, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;

    iget-object v10, v8, Lcom/android/systemui/media/SubscreenMusicWidgetController;->mContext:Landroid/content/Context;

    iget-object v8, v8, Lcom/android/systemui/media/SubscreenMusicWidgetController;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    invoke-direct {v9, v10, v8}, Lcom/android/systemui/media/SubscreenMusicWidgetSubroom;-><init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;)V

    const/16 v8, 0x130

    invoke-virtual {v1, v8, v9}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL:Z

    const/16 v9, 0x12c

    if-eqz v8, :cond_7

    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_PANEL_WINDOW:Z

    if-eqz v8, :cond_6

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFoldStateChangedListener:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

    iget-object v10, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v10, v8}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x1

    const/16 v11, 0x96f

    const/4 v12, -0x1

    const v13, -0x7f7bffc0

    const/4 v14, -0x3

    move-object/from16 p1, v8

    move/from16 p2, v12

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v13

    move/from16 p6, v14

    invoke-direct/range {p1 .. p6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v10, 0x3

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v10, 0x30

    iput v10, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v10, "SubScreenQuickPanel"

    invoke-virtual {v8, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    invoke-virtual {v10}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->getScreenTimeOut()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v8, v11, v12}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v12

    not-int v12, v12

    and-int/2addr v11, v12

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v12

    not-int v12, v12

    and-int/2addr v11, v12

    invoke-virtual {v8, v11}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "window"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    if-nez v8, :cond_5

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v11, 0x7f0d04bd

    invoke-virtual {v8, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iput-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x105039c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    const/16 v11, 0xf

    invoke-virtual {v8, v11, v5}, Landroid/widget/FrameLayout;->semSetRoundedCorners(II)V

    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    const v12, 0x106000c

    invoke-virtual {v8, v12}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v11, v8}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object v8, v5, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    if-nez v8, :cond_3

    iget-object v8, v5, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iget-object v11, v5, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    invoke-static {v8, v11}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v8

    iput-object v8, v5, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    :cond_3
    iget-object v5, v5, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    iget-object v5, v5, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    iput-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/android/systemui/blur/SecCoverBlurController;

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    iget-object v11, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mQSPanel:Landroid/view/View;

    invoke-direct {v5, v8, v11}, Lcom/android/systemui/blur/SecCoverBlurController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v8, v5, Lcom/android/systemui/blur/SecCoverBlurController;->mRootView:Landroid/view/View;

    if-nez v8, :cond_4

    const-string v5, "SecCoverBlurController"

    const-string v8, "applySemWindowBlur: rootView is null"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v11, v5, Lcom/android/systemui/blur/SecCoverBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    invoke-virtual {v11, v8}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    new-instance v8, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v8, v7}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget v12, v11, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    float-to-int v12, v12

    invoke-virtual {v8, v12}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v8

    iget v12, v11, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    iget v13, v11, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    iget v14, v11, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    iget v15, v11, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    iget v6, v11, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    iget v11, v11, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    move-object/from16 p1, v8

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move/from16 p6, v6

    move/from16 p7, v11

    invoke-virtual/range {p1 .. p7}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object v6

    const/16 v8, 0x28

    int-to-float v8, v8

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v6

    iget-object v5, v5, Lcom/android/systemui/blur/SecCoverBlurController;->mRootView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_5
    :goto_2
    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iget-object v8, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v6, v6, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    invoke-virtual {v10}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->init()V

    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iput-object v10, v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->mSubScreenQSTouchHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;

    invoke-direct {v6, v4}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$2;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v5, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenComponent:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;

    iget-object v6, v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    invoke-interface {v5, v6}, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;->create(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;)Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent;->getSubScreenQuickPanelHeaderController()Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/ViewController;->init()V

    new-instance v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;

    invoke-direct {v5, v4, v7}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$PanelExpandedFractionProvider;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    invoke-virtual {v1, v9, v5}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    :cond_6
    :goto_3
    move-object/from16 v1, p14

    goto :goto_4

    :cond_7
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_SUBSCREEN_SETTINGS:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qp/SubscreenQsPanelController;

    iput-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    :cond_8
    iget-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    invoke-virtual {v4}, Lcom/android/systemui/qp/SubscreenQsPanelController;->init()V

    iget-object v4, v0, Lcom/android/systemui/doze/PluginAODManager;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    iget-object v5, v4, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    if-nez v5, :cond_9

    iget-object v5, v4, Lcom/android/systemui/qp/SubscreenQsPanelController;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/systemui/qp/SubscreenQsPanelController;->mInjectionInflater:Lcom/android/systemui/qs/InjectionInflationController;

    invoke-static {v5, v6}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->getInstance(Landroid/content/Context;Lcom/android/systemui/qs/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    :cond_9
    iget-object v4, v4, Lcom/android/systemui/qp/SubscreenQsPanelController;->mSubRoomQuickSettings:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    invoke-virtual {v1, v9, v4}, Lcom/android/systemui/subscreen/SubScreenManager;->setSubRoom(ILcom/android/systemui/plugins/subscreen/SubRoom;)V

    goto :goto_3

    :goto_4
    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    sput-object p20, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$9;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/doze/PluginAODManager$9;-><init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mHandler:Lcom/android/systemui/doze/PluginAODManager$9;

    iput-object v3, v0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$10;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/PluginAODManager$10;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    const-string v4, "AOD"

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "PluginAODManager"

    move-object/from16 v3, p22

    invoke-static {v3, v1, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iput-object v2, v0, Lcom/android/systemui/doze/PluginAODManager;->mFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    sget-boolean v1, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/PluginAODManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/PluginAODManager;)V

    const/4 v3, 0x4

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    :cond_a
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    move-object/from16 v1, p30

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method

.method public static isSmartAlertNoti(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string/jumbo v1, "smart_alert_title"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final addConnectionRunnable(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mConnectionRunnableList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final chargingAnimStarted(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onChargingAnimStarted(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onChargingAnimStarted(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final disableStatusBar(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "PluginAODManager"

    if-nez v0, :cond_1

    const-string p0, "disableStatusBar() : Could not get status bar manager"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "disableStatusBar() "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "      Plugins"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "        mAODPlugin : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "        mClockPackPlugin : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "        mCoverPlugin : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "        mSubScreenPlugin : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "        supportAODLightReveal : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/systemui/LsRune;->AOD_LIGHT_REVEAL:Z

    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final enableTouch(Z)V
    .locals 2

    const-string v0, "enableTouch : "

    const-string v1, " FaceWidgetContainerWrapper = "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginAODManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setTouchEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final initAODOverlayContainer()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PluginAODManager"

    const-string v1, "initAODOverlayContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getNotificationPanelView()Lcom/android/systemui/shade/NotificationShadeWindowView;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getNotificationPanelView()Lcom/android/systemui/shade/NotificationShadeWindowView;

    move-result-object v1

    const-string v2, "aod_overlay_container_stub_parent"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/AODOverlayContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    return-void
.end method

.method public final logSmartAlert(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onUpdateSmartAlert:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x51

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " showingKeys "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSmartAlerts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    sget-object p1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v0, Lcom/android/systemui/keyguard/AODDumpLog;->logger:Lcom/android/systemui/log/SamsungServiceLogger;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/android/systemui/log/SamsungServiceLoggerImpl;

    const-string v1, ""

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/systemui/log/SamsungServiceLoggerImpl;->logWithThreadId(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final needControlScreenOff()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCurrentPhoneState:I

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    iget-boolean v0, v0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginAODStateProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginAODStateProvider;->getNeedScreenOff()Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method

.method public final onTransitionEnded()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTransitionEnded mClockTransitionStarted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    const-string v3, " shouldControlScreenOff : "

    const-string v4, "PluginAODManager"

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_TRANSITION_ENDED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODTouchModeManager:Lcom/android/systemui/aod/AODTouchModeManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/aod/AODTouchModeManager;->setTouchMode(I)V

    iput-boolean v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mClockTransitionStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onAodTransitionEnd()V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final registerUpdateMonitor$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    iput v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerUpdateMonitor mWakefulness="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    const-string v1, "PluginAODManager"

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final removeUpdateMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessObserver:Lcom/android/systemui/doze/PluginAODManager$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    iput v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeUpdateMonitor mWakefulness="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulness:I

    const-string v1, "PluginAODManager"

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final setAODPlugin(Lcom/android/systemui/plugins/aod/PluginAOD;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object v4, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotifCollectionListener:Lcom/android/systemui/doze/PluginAODManager$8;

    iget-object v5, p0, Lcom/android/systemui/doze/PluginAODManager;->mCommonNotifCollectionLazy:Ldagger/Lazy;

    const-string v6, "PluginAODManager"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor$1()V

    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget v1, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDozeAmountChanged(FF)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    const-string p1, "addNotiCollectionListener: "

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    invoke-virtual {p1}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    const-string p0, "removeNotiCollectionListener: "

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mNotifCollectionListeners:Lcom/android/systemui/util/NamedListenerSet;

    invoke-virtual {p0, v4}, Lcom/android/systemui/util/NamedListenerSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final setCoverPlugin(Landroid/content/Context;Lcom/android/systemui/plugins/cover/PluginCover;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPluginContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mStateListener:Lcom/android/systemui/doze/PluginAODManager$5;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    :cond_2
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor$1()V

    :cond_3
    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {p2}, Lcom/android/systemui/plugins/cover/PluginCover;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-interface {p2, v2}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    :cond_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-eqz p1, :cond_7

    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->onDisplayReady()V

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/cover/CoverScreenManager;

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSubRoom() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SUB_ROOM_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverScreenManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/android/systemui/cover/CoverScreenManager;->mSubRoomMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    iget-boolean p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozingChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozeAmountChanged(F)V

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->disableStatusBar(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final setIsDozing(ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledBiometricUnlockVI()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mSecLsScrimControlHelper:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setFrontScrimToBlack(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->initAODOverlayContainer()V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/AODOverlayContainer;->setVisibility(I)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setIsDozing(ZZ)V

    :cond_3
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozingChanged(Z)V

    :cond_4
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p2, p2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    const/4 v4, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p2, p2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/16 v5, 0xd

    if-ne p2, v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, v1, v0}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x64

    iget-object v0, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, p2, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v1, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->adjustSubHomeActivityOrder(Z)V

    goto :goto_0

    :cond_6
    sget-boolean p2, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p2, :cond_7

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->get(II)I

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v1, v4}, Lcom/android/systemui/subscreen/SubScreenManager;->adjustSubHomeActivityOrder(Z)V

    :cond_7
    :goto_0
    sget-boolean p2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/cover/PluginCover;->onDozingChanged(Z)V

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverScreenManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->prepareCoverHomeActivity()Z

    :cond_9
    return-void
.end method

.method public final setStartedByFolderClosed(Z)V
    .locals 2

    const-string/jumbo v0, "setStartedByFolderClosed: "

    const-string v1, "PluginAODManager"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method

.method public final setSubScreenPlugin(Lcom/android/systemui/plugins/subscreen/PluginSubScreen;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotiCallback:Lcom/android/systemui/doze/PluginAODManager$4;

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->removeUpdateMonitor()V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->registerUpdateMonitor$1()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    invoke-interface {p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mNotificationCallback:Lcom/android/systemui/doze/PluginAODManager$3;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->setCallback(Lcom/android/systemui/plugins/aod/PluginAODNotificationManager$Callback;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubUICallback:Lcom/android/systemui/doze/PluginAODManager$7;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->setPluginCallback(Lcom/android/systemui/plugins/subscreen/PluginSubScreen$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozing:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozingChanged(Z)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onFolderStateChanged(Z)V

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDozeAmountChanged(F)V

    :cond_3
    return-void
.end method

.method public final showCoverToast(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "PluginAODManager"

    const-string/jumbo v1, "showCoverToast() with FIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    if-eqz v0, :cond_0

    const-string v0, "ignoreUnlock"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mCoverPlugin:Lcom/android/systemui/plugins/cover/PluginCover;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/plugins/cover/PluginCover;->showCoverToast(Landroid/app/PendingIntent;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->requestOpenAppPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final updateAnimateScreenOff()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mControlScreenOff:Z

    if-eq v0, v1, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mControlScreenOff:Z

    const-string/jumbo v0, "updateAnimateScreenOff : controlScreenOff="

    const-string v4, " AlwaysOn="

    invoke-static {v0, v4, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " keyguardShowing="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " powerSaveActive="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsFolderOpened="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/doze/PluginAODManager;->mIsFolderOpened:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " needControlScreenOff="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->needControlScreenOff()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " called="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x4

    const-string v3, "PluginAODManager"

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_4
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    :cond_5
    return-void
.end method

.method public final updateRefreshRate(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_DOZE_AP_SLEEP:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateRefreshRate: displayState="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dozeSuspend="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginAODManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez p1, :cond_3

    const-string p1, "display"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager;->mRefreshRateToken:Landroid/os/IBinder;

    const/16 v2, 0x1e

    invoke-interface {p1, v1, v2, v0}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string/jumbo p1, "updateRefreshRate enabled 30hz"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez p0, :cond_6

    const-string/jumbo p0, "updateRefreshRate failed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz p1, :cond_6

    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const-string/jumbo p1, "updateRefreshRate disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager;->mMaxRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    :cond_6
    :goto_4
    return-void
.end method
