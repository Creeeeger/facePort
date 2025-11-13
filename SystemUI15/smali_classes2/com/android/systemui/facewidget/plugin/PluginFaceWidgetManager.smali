.class public final Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView$Callback;


# instance fields
.field public mAppPluginVersion:I

.field public mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

.field public mBatteryMeterViewControllerFactory:Lcom/android/systemui/battery/BatteryMeterViewController$Factory;

.field public final mCapturedBlurContainerController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

.field public final mConfigurationListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

.field public mContainerView:Landroid/view/View;

.field public final mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

.field public final mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field public mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

.field public final mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

.field public mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

.field public final mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public mIsConnected:Z

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

.field public final mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

.field public final mKeyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

.field public final mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

.field public final mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

.field public final mLockscreenShadeTransitionControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mMediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

.field public mMediaOutputController:Lcom/android/systemui/media/mediaoutput/MediaOutputController;

.field public final mMediaOutputControllerProvider:Ljavax/inject/Provider;

.field public mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public mPluginContext:Landroid/content/Context;

.field public mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

.field public final mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field public mPreviousAlpha:F

.field public mPreviousContainerEndX:I

.field public mPreviousContainerStartX:I

.field public mPreviousIconScaleRatio:F

.field public mPreviousIconSize:I

.field public mPreviousPaddingLeft:I

.field public mPreviousPaddingRight:I

.field public mPreviousTopMargin:I

.field public mPreviousTotalHeight:I

.field public mPreviousVisibility:I

.field public final mSettingsHelperProvider:Ljavax/inject/Provider;

.field public final mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

.field public mSoundCraftController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

.field public final mSoundCraftControllerProvider:Ljavax/inject/Provider;

.field public final mSysuiContext:Landroid/content/Context;

.field public final mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

.field public final mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

.field public final mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

.field public mediaPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/keyguard/KeyguardFoldController;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Ldagger/Lazy;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;Ljavax/inject/Provider;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/PluginManager;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;",
            "Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            "Lcom/android/systemui/BootAnimationFinishedCache;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/keyguard/KeyguardEditModeController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            "Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p31

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mediaPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousPaddingLeft:I

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousPaddingRight:I

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousTotalHeight:I

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousTopMargin:I

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousContainerStartX:I

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousContainerEndX:I

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousIconSize:I

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousIconScaleRatio:F

    iput v3, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousAlpha:F

    iput v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPreviousVisibility:I

    new-instance v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    iput-object v3, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    new-instance v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    iput-object v3, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    new-instance v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$3;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    new-instance v4, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    iput-boolean v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mIsConnected:Z

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockscreenShadeTransitionControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaOutputControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSoundCraftControllerProvider:Ljavax/inject/Provider;

    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    new-instance v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    new-instance v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    move-object/from16 v5, p20

    check-cast v5, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    invoke-virtual {v5, v2}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_COVER:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object/from16 v2, p22

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;)V

    move-object v5, p3

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    goto :goto_0

    :goto_2
    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-eqz v2, :cond_2

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mCapturedBlurContainerController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    :cond_2
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "addNioLayoutCallback("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") size["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]  "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->listeners:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    invoke-virtual {v4, v1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$$ExternalSyntheticLambda0;->onNioLayoutUpdated(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;)V

    move-object/from16 v1, p30

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSettingsHelperProvider:Ljavax/inject/Provider;

    const-string v0, "PluginFaceWidgetManager"

    const-string v1, "PluginFaceWidgetManager() started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final applyBlur(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->applyBlur(I)V

    return-void
.end method

.method public final applyBlur(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mCapturedBlurContainerController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    if-eqz p0, :cond_2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsFullScreenBlurShowing:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsFullScreenBlurShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    :cond_1
    int-to-float p1, p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->FULL_SCREEN:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->setAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    :cond_2
    return-void
.end method

.method public final applyBlur(Landroid/view/View;I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mCapturedBlurContainerController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    if-eqz p0, :cond_2

    int-to-float p2, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCaptureBlurOnAltView alpha = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapturedBlurContainerController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->ALT_VIEW:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->getPanelScreenShot(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->setBlurEffectOnBitmap(Landroid/graphics/Bitmap;Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mView:Lcom/android/systemui/statusbar/phone/CapturedBlurContainer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final canBeSkipOnWakeAndUnlock()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result p0

    return p0
.end method

.method public final createBatteryMeterView()Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "PluginFaceWidgetManager"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mBatteryMeterViewControllerFactory:Lcom/android/systemui/battery/BatteryMeterViewController$Factory;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->AOD:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/battery/BatteryMeterViewController$Factory;->create(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/battery/BatteryMeterViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->setAodScaleFactor()V

    return-object v0
.end method

.method public final getAODClockView(Z)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODClockContainer(Z)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getAODZigzagPosition()Landroid/graphics/Point;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getZigzagPosition()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mZigzagPosition:Landroid/graphics/Point;

    return-object p0
.end method

.method public final getAdaptiveColorResult()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayLifeCycle()Lcom/android/systemui/plugins/keyguardstatusview/PluginDisplayLifeCycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDisplayLifeCycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetDisplayLifeCycleWrapper;

    return-object p0
.end method

.method public final getFloatingShortcutRotation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getHomeCityTimeZoneDeviceProvisionedFromPrefs()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "HomecityTimezoneDeviceProvisioned"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInDisplayFingerprintHeight()I
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p0

    return p0
.end method

.method public final getInDisplayFingerprintImageSize()I
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintImageSize()I

    move-result p0

    return p0
.end method

.method public final getKeyguardStatusCallback()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusCallbackWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;

    return-object p0
.end method

.method public final getKeyguardStatusViewAlphaChangeController()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusViewAlphaChangeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    return-object p0
.end method

.method public final getKeyguardUpdateMonitor()Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardUpdateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardUpdateMonitorWrapper;

    return-object p0
.end method

.method public final getKnoxStateMonitor()Lcom/android/systemui/plugins/keyguardstatusview/PluginKnoxStateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    return-object p0
.end method

.method public final getLockPatternUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginLockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    return-object p0
.end method

.method public final getLockscreenShadeTransitionController()Lcom/android/systemui/plugins/keyguardstatusview/PluginLockscreenShadeTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockscreenShadeTransitionControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockscreenShadeTransitionControllerWrapper;

    return-object p0
.end method

.method public final getMediaPlayerLastExpandedFromPrefs()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const-string v0, "QsMediaPlayerLastExpanded"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getNavigationBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10502c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getNotificationControllerCallback()Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController$Callback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    return-object p0
.end method

.method public final getNotificationPanelViewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getPluginFaceWidgetColorScheme(Landroid/app/WallpaperColors;I)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
    .locals 7

    new-instance p0, Lcom/android/systemui/monet/ColorScheme;

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    new-instance p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    iget-object p2, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {p2}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {p0}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/monet/TonalPalette;->getS200()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;-><init>(IIIII)V

    return-object p1
.end method

.method public final getPluginLockManager()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetLockManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginLockManagerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper;

    return-object p0
.end method

.method public final getSystemUIPluginVersion()I
    .locals 0

    const/16 p0, 0xbd6

    return p0
.end method

.method public final getWallpaperUtils()Lcom/android/systemui/plugins/keyguardstatusview/PluginSystemUIWallpaperUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWallpaperUtilsWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;

    return-object p0
.end method

.method public final hasAdaptiveColorResult()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isBlurSupported()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_BLUR:Z

    return p0
.end method

.method public final isCMASSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isCapturedBlurSupported()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/LsRune;->LOCKUI_CAPTURED_BLUR:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEditMode()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isEditMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    const-string v2, "PluginFaceWidgetManager"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    return p0
.end method

.method public final isInDisplayFingerprintSupported()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isInDisplayFingerprintSupported()Z

    move-result p0

    return p0
.end method

.method public final isLockScreenDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mLockPatternUtils:Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isLockscreenDisabled()Z

    move-result p0

    return p0
.end method

.method public final isMultiSimSupported()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result p0

    return p0
.end method

.method public final isNoLockIcon()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result p0

    if-nez p0, :cond_1

    move v2, v1

    :cond_1
    move v0, v2

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public final isOpenThemeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isPresidentialCMASSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSubDisplay()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isUIBiometricsSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isWiFiOnlyDevice()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    move-result p0

    return p0
.end method

.method public final onClockPageTransitionEnded()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onTransitionEnded()V

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->getFaceWidgetManager()Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAODFaceWidgetManager;->onClockPageTransitionEnded()V

    :goto_0
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPluginConnected() app version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysui version = 3030, config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginContext:Landroid/content/Context;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 7

    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const-string v2, "PluginFaceWidgetManager"

    if-eqz v1, :cond_0

    const-string v1, "Remove \'init plugin wrapper\' message"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Remove \'attach container view\' message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-string p1, "onPluginDisconnected()"

    invoke-static {v2, p1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/plugins/PluginManager;

    invoke-virtual {p1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    iget-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/PluginManager;->isValidClassLoader(Ljava/lang/ClassLoader;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    invoke-interface {p1}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->onClassLoaderDiscarded()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mFaceWidgetContainer:Landroid/view/View;

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mClockContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mWakefullnessLifecycleWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetWakefulnessLifecycleWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetKnoxStateMonitorWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetKnoxStateMonitorWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    instance-of v3, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    iput-object v2, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->mPositionAlgorithm:Lcom/android/systemui/plugins/keyguardstatusview/PluginSecKeyguardClockPositionAlgorithm;

    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;->loadDimens(Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->initPlugin(Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mExternalClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockCallbacks:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    iget-object v6, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    invoke-interface {v6, v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider$ClockCallback;)V

    goto :goto_0

    :cond_6
    iput-object v2, v3, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->mClockProvider:Lcom/android/systemui/plugins/keyguardstatusview/PluginClockProvider;

    :goto_1
    iput-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginKeyguardSidePadding:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardSidePadding;

    iget-object v3, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v3, :cond_7

    iget-object v4, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v3, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    iput-object v2, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetPlugin:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    iput-boolean v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mIsConnected:Z

    iput v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mAppPluginVersion:I

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    iget-object v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    if-nez v1, :cond_8

    new-instance v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V

    iput-object v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    :cond_8
    iget-object p1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    invoke-interface {v0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->removeListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mEditModeListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$1;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSharedPrefListener:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$2;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final putHomeCityTimeZoneDeviceProvisionedToPrefs(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const-string v0, "HomecityTimezoneDeviceProvisioned"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putHomeCityTimeZoneSetToPrefs(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const-string v0, "HomecityTimezoneSet"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putMediaPlayerLastExpandedToPrefs(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "QsMediaPlayerLastExpanded"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0, v2, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeMediaData(Ljava/util/List;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->dismissMediaData(Ljava/lang/String;JZ)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldControlScreenOff()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaOutputDetailShowing:Z

    const-string/jumbo p0, "shouldControlScreenOff() : "

    const-string v1, "PluginFaceWidgetManager"

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public final shouldEnableKeyguardScreenRotation()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mSysuiContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final showBudsInfo()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PluginFaceWidgetManager"

    const-string v2, "Remove \'MSG_SHOW_BUDS_INFO\' message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final showMediaOutput(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mediaPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mUiHandler:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager$4;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PluginFaceWidgetManager"

    const-string v1, "Remove \'MSG_SHOW_MEDIA_OUTPUT\' message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateAnimateScreenOff()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method

.method public final updateFaceWidgetArea()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_0
    return-void
.end method

.method public final updateNIOShortcutFingerPrintVisibility(Z)V
    .locals 0

    return-void
.end method
