.class public final Lcom/android/systemui/Dependency;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field public mActivityStarter:Ldagger/Lazy;

.field public mAiBriefManagerLazy:Ldagger/Lazy;

.field public mAllowedOngoingActivityListManager:Ldagger/Lazy;

.field public mAmbientStateLazy:Ldagger/Lazy;

.field public mAppLockNotificationController:Ldagger/Lazy;

.field public mAssistManager:Ldagger/Lazy;

.field public mAssistantFeedbackController:Ldagger/Lazy;

.field public mBgHandler:Ldagger/Lazy;

.field public mBgLooper:Ldagger/Lazy;

.field public mBluetoothController:Ldagger/Lazy;

.field public mBroadcastDispatcher:Ldagger/Lazy;

.field public mBubblesManagerOptional:Ldagger/Lazy;

.field public mCentralSurfaces:Ldagger/Lazy;

.field public mChannelEditorDialogController:Ldagger/Lazy;

.field public mColoredBGHelper:Ldagger/Lazy;

.field public mCommandQueue:Ldagger/Lazy;

.field public mConfigurationController:Ldagger/Lazy;

.field public mContentInsetsProviderLazy:Ldagger/Lazy;

.field public mCoverScreenManager:Ldagger/Lazy;

.field public mCoverUtilWrapper:Ldagger/Lazy;

.field public mDarkIconDispatcher:Ldagger/Lazy;

.field public final mDependencies:Landroid/util/ArrayMap;

.field public mDesktopManager:Ldagger/Lazy;

.field public mDeviceProvisionedController:Ldagger/Lazy;

.field public mDialogTransitionAnimatorLazy:Ldagger/Lazy;

.field public mDisplayLifecycle:Ldagger/Lazy;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mExternalClockProvider:Ldagger/Lazy;

.field public mFaceWidgetController:Ldagger/Lazy;

.field public mFalsingManager:Ldagger/Lazy;

.field public mFastUnlockController:Ldagger/Lazy;

.field public mFeatureFlagsLazy:Ldagger/Lazy;

.field public mFlashlightController:Ldagger/Lazy;

.field public mFoldController:Ldagger/Lazy;

.field public mFragmentService:Ldagger/Lazy;

.field public mFullExpansionPanelNotiAlphaController:Ldagger/Lazy;

.field public mGlobalActionsComponent:Ldagger/Lazy;

.field public mGroupExpansionManagerLazy:Ldagger/Lazy;

.field public mGroupMembershipManagerLazy:Ldagger/Lazy;

.field public mHeadsUpManager:Ldagger/Lazy;

.field public mHighPriorityProvider:Ldagger/Lazy;

.field public mINotificationManager:Ldagger/Lazy;

.field public mKeyguardMonitor:Ldagger/Lazy;

.field public mKeyguardShortcutManager:Ldagger/Lazy;

.field public mKeyguardStatusBarNioLayoutRepository:Ldagger/Lazy;

.field public mKeyguardUpdateMonitor:Ldagger/Lazy;

.field public mKeyguardVisibilityMonitor:Ldagger/Lazy;

.field public mKnoxStateMonitor:Ldagger/Lazy;

.field public mLauncherApps:Ldagger/Lazy;

.field public mLightBarController:Ldagger/Lazy;

.field public mLooperSlowLogController:Ldagger/Lazy;

.field public mMainHandler:Ldagger/Lazy;

.field public mMetricsLogger:Ldagger/Lazy;

.field public mMultiSIMControllerLazy:Ldagger/Lazy;

.field public mNavBarBgHandler:Ldagger/Lazy;

.field public mNavBarModeController:Ldagger/Lazy;

.field public mNavBarStore:Ldagger/Lazy;

.field public mNavigationBarController:Ldagger/Lazy;

.field public mNetworkController:Ldagger/Lazy;

.field public mNotiCinemaLogger:Ldagger/Lazy;

.field public mNotifCollection:Ldagger/Lazy;

.field public mNotifLiveDataStore:Ldagger/Lazy;

.field public mNotificationBackupRestoreManager:Ldagger/Lazy;

.field public mNotificationColorPicker:Ldagger/Lazy;

.field public mNotificationGutsManager:Ldagger/Lazy;

.field public mNotificationLockscreenUserManager:Ldagger/Lazy;

.field public mNotificationMediaManager:Ldagger/Lazy;

.field public mNotificationSectionsManagerLazy:Ldagger/Lazy;

.field public mNotificationShelfManager:Ldagger/Lazy;

.field public mOnUserInteractionCallback:Ldagger/Lazy;

.field public mOverviewProxyService:Ldagger/Lazy;

.field public mPanelScreenShotBufferLogger:Ldagger/Lazy;

.field public mPanelSplitHelper:Ldagger/Lazy;

.field public mPeopleSpaceWidgetManager:Ldagger/Lazy;

.field public mPluginFaceWidgetManager:Ldagger/Lazy;

.field public mPluginLockManager:Ldagger/Lazy;

.field public mPluginLockStarManager:Ldagger/Lazy;

.field public mPluginManager:Ldagger/Lazy;

.field public mPluginWallController:Ldagger/Lazy;

.field public mPluginWallpaperManager:Ldagger/Lazy;

.field public mPrivacyDialogController:Ldagger/Lazy;

.field public final mProviders:Landroid/util/ArrayMap;

.field public mQSBackupRestoreManager:Ldagger/Lazy;

.field public mQSClockBellTower:Ldagger/Lazy;

.field public mQSScrimViewSwitch:Ldagger/Lazy;

.field public mQuickPanelExternalLogger:Ldagger/Lazy;

.field public mQuickSettingsController:Ldagger/Lazy;

.field public mResetSettingsManager:Ldagger/Lazy;

.field public mRotationLockController:Ldagger/Lazy;

.field public mSPluginDependencyProvider:Ldagger/Lazy;

.field public mSPluginManager:Ldagger/Lazy;

.field public mScreenOffAnimationController:Ldagger/Lazy;

.field public mSearcleManager:Ldagger/Lazy;

.field public mSecHideNotificationShadeInMirrorInteractor:Ldagger/Lazy;

.field public mSecNotificationShadeWindowStateInteractor:Ldagger/Lazy;

.field public mSecPanelExpansionStateInteractor:Ldagger/Lazy;

.field public mSecPanelSAStatusLogInteractor:Ldagger/Lazy;

.field public mSecPanelTouchBlockHelper:Ldagger/Lazy;

.field public mSecPanelTouchProximityInteractor:Ldagger/Lazy;

.field public mSecQSCoverResourcePicker:Ldagger/Lazy;

.field public mSecQSDetailController:Ldagger/Lazy;

.field public mSecQSExpansionStateInteractor:Ldagger/Lazy;

.field public mSecQSPanelResourcePicker:Ldagger/Lazy;

.field public mSecQpBlurController:Ldagger/Lazy;

.field public mSecQuickSettingsAffordanceInteractor:Ldagger/Lazy;

.field public mSecRotationWatcher:Ldagger/Lazy;

.field public mSecSTQuickControlRequestReceiver:Ldagger/Lazy;

.field public mSecurityController:Ldagger/Lazy;

.field public mSelectedUserInteractor:Ldagger/Lazy;

.field public mSensitiveNotificationProtectionController:Ldagger/Lazy;

.field public mSensorPrivacyManager:Ldagger/Lazy;

.field public mSettingsHelper:Ldagger/Lazy;

.field public mShadeController:Ldagger/Lazy;

.field public mShadeHeaderController:Ldagger/Lazy;

.field public mShadeRepository:Ldagger/Lazy;

.field public mShelfToolTipManager:Ldagger/Lazy;

.field public mStatusBarIconControllerLazy:Ldagger/Lazy;

.field public mStatusBarStateController:Ldagger/Lazy;

.field public mStatusBarWindowControllerLazy:Ldagger/Lazy;

.field public mSubScreenManager:Ldagger/Lazy;

.field public mSubscreenMusicWidgetController:Ldagger/Lazy;

.field public mSubscreenNotificationController:Ldagger/Lazy;

.field public mSubscreenQsPanelController:Ldagger/Lazy;

.field public mSubscreenUtil:Ldagger/Lazy;

.field public mSysUiStateFlagsContainer:Ldagger/Lazy;

.field public mSystemUIDialogManagerLazy:Ldagger/Lazy;

.field public mSystemUIIndexMediator:Ldagger/Lazy;

.field public mTaskbarDelegate:Ldagger/Lazy;

.field public mTimeTickHandler:Ldagger/Lazy;

.field public mTunablePaddingService:Ldagger/Lazy;

.field public mTunerService:Ldagger/Lazy;

.field public mUiEventLogger:Ldagger/Lazy;

.field public mUiOffloadThread:Ldagger/Lazy;

.field public mUnlockedScreenOffAnimationHelper:Ldagger/Lazy;

.field public mUserContextProvider:Ldagger/Lazy;

.field public mUserInfoController:Ldagger/Lazy;

.field public mUserSwitcherController:Ldagger/Lazy;

.field public mUserSwitcherInteractor:Ldagger/Lazy;

.field public mUserTrackerLazy:Ldagger/Lazy;

.field public mVibratorHelper:Ldagger/Lazy;

.field public mVolumeDialogController:Ldagger/Lazy;

.field public mVolumeManager:Ldagger/Lazy;

.field public mWakefulnessLifecycle:Ldagger/Lazy;

.field public mWallpaperChangeNotifier:Ldagger/Lazy;

.field public mWallpaperEventNotifier:Ldagger/Lazy;

.field public mWallpaperManager:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "bg_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "bubble_manager"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "navbar_background_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/Dependency;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setInstance(Lcom/android/systemui/Dependency;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method


# virtual methods
.method public createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;->f$0:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported dependency "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method
