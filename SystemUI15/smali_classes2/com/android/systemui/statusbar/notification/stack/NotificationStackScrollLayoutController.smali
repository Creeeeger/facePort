.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;


# static fields
.field public static final HIDE_ALPHA_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAllowLongPress:Z

.field public final mAppLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

.field public mBarState:I

.field public mBlockHideAmountVisibility:Z

.field public final mColorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;

.field public final mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

.field public final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field public final mDynamicPrivacyControllerListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda1;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFoldOpenModeListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

.field public final mForceLayoutTimeOutRunnable:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

.field public final mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

.field public mHasDelayedForceLayout:Z

.field public mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mHideAlphaAnimator:Landroid/animation/ObjectAnimator;

.field public mHistoryEnabled:Ljava/lang/Boolean;

.field public mIsInTransitionToAod:Z

.field public mIsStartFromContentsBound:Z

.field public final mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardMediaController:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

.field public final mKeyguardTransitionRepo:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

.field public final mKeyguardVisibilityListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda0;

.field public final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field public final mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

.field public mLongPressedView:Landroid/view/View;

.field public final mMaxAlphaForGlanceableHub:F

.field public mMaxAlphaForKeyguard:F

.field public mMaxAlphaForKeyguardSource:Ljava/lang/String;

.field public mMaxAlphaForUnhide:F

.field public final mMaxAlphaFromView:F

.field public final mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public final mMenuEventListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMusicItemExpanded:Z

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final mNotifStackController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;

.field public mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

.field public mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field final mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field public final mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

.field public final mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field public final mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

.field public final mNotificationTargetsHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationTargetsHelper;

.field public final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field public final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

.field public mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field mReduceTransparencyAndBlurCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSeenNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;

.field public final mSensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

.field public final mSensitiveStateChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field private final mSplitCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mStackStateLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

.field public final mStateListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$8;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

.field public final mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mViewBinder:Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;

.field public final mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

.field private final mWallpaperThemeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field public final mZenModeControllerCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$13;


# direct methods
.method public static -$$Nest$mupdateEventAvailability(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInContentBounds$2(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "HideNotificationsAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->HIDE_ALPHA_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;ZLcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/provider/VisibilityLocationProviderDelegator;Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;Lcom/android/systemui/shade/ShadeController;Ljavax/inject/Provider;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;Lcom/android/systemui/statusbar/notification/stack/NotificationTargetsHelper;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SplitShadeStateController;Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/AppLockNotificationController;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
            "Z",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            "Lcom/android/systemui/statusbar/notification/init/NotificationsController;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            "Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;",
            "Lcom/android/systemui/statusbar/policy/ZenModeController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/VisibilityLocationProviderDelegator;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;",
            "Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Ljavax/inject/Provider;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationTargetsHelper;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/statusbar/policy/SplitShadeStateController;",
            "Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/policy/AppLockNotificationController;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p15

    move-object/from16 v7, p19

    move-object/from16 v8, p20

    move-object/from16 v9, p23

    move-object/from16 v10, p26

    move-object/from16 v11, p27

    move-object/from16 v12, p31

    move-object/from16 v13, p42

    move-object/from16 v14, p46

    move-object/from16 v15, p48

    move-object/from16 v12, p49

    move-object/from16 v10, p53

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsInTransitionToAod:Z

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardVisibilityListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHasDelayedForceLayout:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMusicItemExpanded:Z

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mForceLayoutTimeOutRunnable:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFoldOpenModeListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    const/4 v10, 0x0

    invoke-direct {v6, v0, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;

    invoke-direct {v6, v0, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStackController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotifStackControllerImpl;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$3;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHideAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSensitiveStateChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyControllerListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda1;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$7;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->Companion:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->empty:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguard:F

    const-string v10, "constructor"

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguardSource:Ljava/lang/String;

    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForUnhide:F

    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaFromView:F

    iput v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForGlanceableHub:F

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$8;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStateListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$8;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMenuEventListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$13;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$13;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$13;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$14;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$14;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mWallpaperThemeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$15;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$15;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSplitCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$16;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$16;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mReduceTransparencyAndBlurCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    move-object/from16 v6, p1

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v6, p18

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardTransitionRepo:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    move-object/from16 v6, p36

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mViewBinder:Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;

    move-object/from16 v6, p40

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStackStateLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    move-object/from16 v6, p41

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    move/from16 v6, p2

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAllowLongPress:Z

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v6, p16

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v6, p21

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v6, p22

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mColorUpdateLogger:Lcom/android/systemui/statusbar/notification/ColorUpdateLogger;

    move-object/from16 v6, p24

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v6, p25

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v6, p39

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object v13, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iput-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    move-object/from16 v6, p30

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-object/from16 v6, p32

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v6, p35

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSeenNotificationsInteractor:Lcom/android/systemui/statusbar/notification/domain/interactor/SeenNotificationsInteractor;

    move-object/from16 v6, p37

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v6, p50

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    move-object/from16 v6, p43

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationTargetsHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationTargetsHelper;

    move-object/from16 v6, p44

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v6, p45

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDismissibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProvider;

    iput-object v14, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v15, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v10, p47

    iput-object v10, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSplitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSplitNotificationShade()V

    sget v6, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {v9, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iput-object v12, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    const-class v6, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v10, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v10, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardVisibilityListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda0;

    invoke-virtual {v6, v10}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v6, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/KeyguardFoldController;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFoldOpenModeListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

    check-cast v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    iget-object v11, v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenModeListeners:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v6, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->foldOpenModeListeners:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    invoke-virtual {v6, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iput-object v0, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    sget-boolean v6, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    if-eqz v6, :cond_1

    move-object/from16 v6, p52

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAppLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    :cond_1
    move-object/from16 v6, p53

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    move-object/from16 v10, p54

    iput-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-virtual/range {p42 .. p42}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->updateResources()V

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStackStateLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    iget-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iput-object v11, v6, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    iput-object v0, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    iput-object v6, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    iput-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLogger:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLogger;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;

    const/4 v11, 0x5

    invoke-direct {v6, v1, v11}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iput-object v6, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mResetUserExpandedStatesRunnable:Ljava/lang/Runnable;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v14, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllAnimationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    iput-object v12, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    sget v1, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p33 .. p33}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isRemoteInputActive()Z

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsRemoteInputActive:Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$17;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$17;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v6, p33

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addControllerCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;

    const/4 v10, 0x0

    invoke-direct {v6, v0, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mClearAllFinishedWhilePanelExpandedRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;

    const/4 v10, 0x4

    invoke-direct {v6, v0, v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCollapseShadeDelayedWhenNoViewsToAnimateAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda10;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/Dumpable;I)V

    move-object/from16 v6, p15

    const/4 v9, 0x1

    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    invoke-virtual/range {p15 .. p15}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    xor-int/2addr v1, v9

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundForPulsingViews:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    move-object/from16 v3, p26

    move-object/from16 v10, p53

    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMenuEventListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;

    iput-object v1, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mOnMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    iget-object v11, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mResources:Landroid/content/res/Resources;

    iget-object v12, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mViewConfiguration:Landroid/view/ViewConfiguration;

    iget-object v14, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    iget-object v9, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mOnMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    iget-object v10, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v15, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v16, v1

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v15

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;-><init>(Landroid/content/res/Resources;Landroid/view/ViewConfiguration;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$18;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$18;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v3, p29

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v1, v3, v4, v13}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object v3, v7

    check-cast v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDndStatusText(Lcom/android/systemui/statusbar/policy/ZenModeController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDndView(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p15 .. p15}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mKeyguardBypassEnabled:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda10;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/Dumpable;I)V

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->registerOnBypassStateChangedListener(Lcom/android/systemui/statusbar/phone/KeyguardBypassController$OnBypassStateChangedListener;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mManageButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFooterView:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mManageOrHistoryButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;->INSTANCE:Lcom/android/systemui/statusbar/notification/shared/NotificationsHeadsUpRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsHeadsUpRefactor()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mAnimationStateHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda13;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyControllerListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda1;

    iget-object v2, v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p31

    iput-object v0, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelperCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$15;

    iget-object v1, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    iput-object v2, v1, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iput-object v0, v1, Lcom/android/systemui/statusbar/DragDownHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;

    move-object v2, v8

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v2, p34

    iput-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/provider/VisibilityLocationProviderDelegator;->delegate:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    const-string v2, "high_priority"

    const-string v3, "notification_history_enabled"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p9

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;

    move-object/from16 v2, p10

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;->updateCurrentUserIsSetup()V

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSensitiveStateChangedListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    move-object/from16 v2, p48

    check-cast v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-interface {v1, v2}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    move-object/from16 v2, p28

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    iput-object v1, v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->clearAllClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;->_view:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-eqz v2, :cond_4

    iput-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v2, p27

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;->mOnGroupChangeListeners:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mViewBinder:Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/NotificationListViewBinder;->bindWhileAttached(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardTransitionRepo:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    check-cast v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v2, p53

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mWallpaperThemeCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/net/Uri;

    const-string v4, "notification_apply_wallpaper_theme"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSplitCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/net/Uri;

    const-string/jumbo v4, "split_quick_panel"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mReduceTransparencyAndBlurCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "accessibility_reduce_transparency"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final checkSnoozeLeavebehind()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mMaxAlphaFromView="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaFromView:F

    const-string v1, "mMaxAlphaForUnhide="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForUnhide:F

    const-string v1, "mMaxAlphaForGlanceableHub="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForGlanceableHub:F

    const-string v1, "mMaxAlphaForKeyguard="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguard:F

    const-string v1, "mMaxAlphaForKeyguardSource="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguardSource:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getNotGoneChildCount()I
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getTouchHandler()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    return-object p0
.end method

.method public final getVisibleNotificationCount()I
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    return p0
.end method

.method public final hasNotifications(IZ)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableAlertingNotifs:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableAlertingNotifs:Z

    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableSilentNotifs:Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifStats:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableSilentNotifs:Z

    :goto_1
    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Bad selection: "

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return v0

    :cond_4
    if-nez p0, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :cond_6
    :goto_2
    return p2
.end method

.method public final isAddOrRemoveAnimationPending()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHistoryEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHistoryEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "notification_history_enabled"

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHistoryEnabled:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "StackScrollerController"

    const-string v1, "isHistoryEnabled failed to initialize its value"

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isInContentBounds$2(F)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    add-float/2addr v0, v1

    cmpg-float v2, v0, p1

    if-gez v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    sub-float/2addr p0, v1

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLeftOrRightOutOfNSSL(F)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_0

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

.method public onKeyguardTransitionChanged(Lcom/android/systemui/keyguard/shared/model/TransitionStep;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-object v0, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsInTransitionToAod:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsInTransitionToAod:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    :cond_3
    return-void
.end method

.method public final setMaxDisplayedNotifications(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateContentHeight()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method public final setOverExpansion(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;

    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mOverExpansionAmount:F

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingYTranslation:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingYTranslation:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateRoundedClipPath()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public final setPanelFlinging(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isOnKeyguard()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlinging:Z

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlinging:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateStackPosition(Z)V

    :cond_1
    return-void
.end method

.method public final setQsExpansionFraction(F)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    cmpl-float v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput p1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsExpansionFraction:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateUseRoundedRectClipping()V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lez p1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-static {p1, v3, v1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOwnScrollY(I)V

    :cond_2
    sget p1, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFullExpansionPanelNotiAlphaController:Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean v1, p1, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_7

    iget-object p1, p1, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v4}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_1

    :cond_7
    iget-object p1, p1, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;->mStackScrollerAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_9

    goto :goto_2

    :cond_9
    move v2, v3

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedToUpdateProgress:Z

    if-eq p1, v2, :cond_b

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mediaOngoingData:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    sget-object v0, Lcom/android/systemui/media/MediaType;->ENR:Lcom/android/systemui/media/MediaType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerData(Lcom/android/systemui/media/MediaType;)Lcom/android/systemui/media/SecMediaPlayerData;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setQsExpansionFraction call setListening:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackScroller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/media/SecMediaPlayerData;->getMediaPlayers()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNeedToUpdateProgress:Z

    :cond_b
    return-void
.end method

.method public final updateAlpha$1$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaFromView:F

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguard:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForUnhide:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForGlanceableHub:F

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final updateFooter()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    const-string v0, "NSSLC.updateFooter"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateImportantForAccessibility()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public final updateNotificationsContainerVisibility(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHideAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->HIDE_ALPHA_PROPERTY:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput p1, p2, v1

    invoke-static {p0, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x168

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHideAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final updateSensitivenessWithAnimation(Z)V
    .locals 6

    const-string v0, "NSSLC.updateSensitivenessWithAnimation"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_STYLE_APP_LOCK:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSensitiveNotificationProtectionController:Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isAnyProfilePublicMode()Z

    move-result v0

    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    check-cast v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAppLockNotificationController:Lcom/android/systemui/statusbar/policy/AppLockNotificationController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/AppLockNotificationControllerImpl;->isAppLockEnabled()Z

    move-result p0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v4

    :goto_1
    if-eqz p1, :cond_2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {v1, v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(ZZ)V

    goto :goto_6

    :cond_3
    invoke-static {}, Lcom/android/server/notification/Flags;->screenshareNotificationHiding()V

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isAnyProfilePublicMode()Z

    move-result p0

    check-cast v2, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SensitiveNotificationProtectionControllerImpl;->isSensitiveStateActive()Z

    move-result v0

    if-nez p0, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move p0, v5

    goto :goto_4

    :cond_5
    :goto_3
    move p0, v4

    :goto_4
    if-eqz p1, :cond_6

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    move v4, v5

    :goto_5
    invoke-virtual {v1, v4, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(ZZ)V

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateShowEmptyShadeView()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    const-string v0, "NSSLC.updateShowEmptyShadeView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsInTransitionToAod:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/NotiRune;->NOTI_AOSP_DISABLE_EMPTY_SHADE_VIEW:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->assertInLegacyMode()V

    iget-boolean p0, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mHasFilteredOutSeenNotifications:Z

    invoke-virtual {v3, v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeView(ZZZ)V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateVisibility(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBlockHideAmountVisibility:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBlockHideAmountVisibility:Z

    move p1, v0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setVisibility(I)V

    sget v0, Lcom/android/systemui/statusbar/notification/footer/shared/FooterViewRefactor;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationsFooterViewRefactor()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateImportantForAccessibility()V

    :cond_2
    return-void
.end method
