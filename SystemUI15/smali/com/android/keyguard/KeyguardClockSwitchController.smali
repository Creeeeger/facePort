.class public final Lcom/android/keyguard/KeyguardClockSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAodIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public mCanShowDoubleLineClock:Z

.field public final mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

.field public final mClockEventController:Lcom/android/keyguard/ClockEventController;

.field public final mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

.field public mCurrentClockSize:I

.field public mDateWeatherView:Landroid/view/ViewGroup;

.field public final mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final mInWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

.field public mIsActiveDreamLockscreenHosted:Z

.field final mIsActiveDreamLockscreenHostedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mKeyguardDateWeatherViewInvisibility:I

.field public final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

.field public mLargeClockFrame:Landroid/widget/FrameLayout;

.field public final mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$2;

.field public mShownOnSecondaryDisplay:Z

.field public mSmallClockFrame:Landroid/widget/FrameLayout;

.field public final mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field public mSmartspaceView:Landroid/view/View;

.field public mStatusArea:Landroid/view/ViewGroup;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mWeatherView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$yqU1eRz3Djl_rk0159bqRf2vojc(Lcom/android/keyguard/KeyguardClockSwitchController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockTargetRegions()V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerAlwaysOnDisplayViewBinder;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;)V
    .locals 4

    move-object v0, p0

    move-object/from16 v1, p14

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShownOnSecondaryDisplay:Z

    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mIsActiveDreamLockscreenHosted:Z

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mIsActiveDreamLockscreenHostedCallback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$2;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$2;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$2;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$3;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBgExecutor:Ljava/util/concurrent/Executor;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v1, v2, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mInWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitchController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$4;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

    return-void
.end method


# virtual methods
.method public final addDateWeatherView()V
    .locals 6

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildAndConnectDateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v5, v2, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v3}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->connectSession()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v5, v5, v0, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot build weather view when not decoupled"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot build view when not enabled"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addSmartspaceView()V
    .locals 4

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v2}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iget-object v3, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configPlugin:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->connectSession()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iput-object v0, v1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mInWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

    iput-object v0, v1, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->lockscreenSmartspace:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSmartspace:Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot build view when not enabled"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final displayClock(IZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v1, v3, p2}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    move v3, v4

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 p2, 0x7

    invoke-direct {p1, v0, p2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x85

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "currentClockSizeLarge: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "mCanShowDoubleLineClock: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->dump(Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ClockRegistry:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/clocks/ClockSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  settings = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  availableClocks["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/clocks/ClockController;->dump(Ljava/io/PrintWriter;)V

    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getClock()Lcom/android/systemui/plugins/clocks/ClockController;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    return-object p0
.end method

.method public final getView()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    return-object p0
.end method

.method public final onConfigChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->onConfigChanged()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07049f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockTargetRegions()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    return-void
.end method

.method public final onInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    const v1, 0x7f0a0657

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmallClockFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    const v1, 0x7f0a0658

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v1, "KeyguardClockSwitchController"

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    invoke-static {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    sget-object v0, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onViewAttached()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object v2, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->assert:Lcom/android/systemui/util/ThreadAssert;

    invoke-virtual {v2}, Lcom/android/systemui/util/ThreadAssert;->isMainThread()V

    iget-object v2, v1, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createCurrentClock()Lcom/android/systemui/plugins/clocks/ClockController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V

    sget-object v1, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/ClockEventController;->registerListeners(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07049f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0704df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b005b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShownOnSecondaryDisplay:Z

    const v3, 0x7f0a0619

    const/16 v4, 0x8

    const v5, 0x7f0a05c7

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onSecondaryDisplayChanged(Z)V

    :cond_0
    iput-boolean v6, v2, Lcom/android/keyguard/ClockEventController;->largeClockOnSecondaryDisplay:Z

    invoke-virtual {v2}, Lcom/android/keyguard/ClockEventController;->updateFontSizes()V

    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->displayClock(IZ)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    sget v2, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setupAodIcons()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mAodIconContainer:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    const v2, 0x7f0a05c8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateDoubleLineClock()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->removeViewsFromStatusArea()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->addSmartspaceView()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->addDateWeatherView()V

    :cond_3
    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object v1, v0, Lcom/android/systemui/shared/clocks/ClockRegistry;->assert:Lcom/android/systemui/util/ThreadAssert;

    invoke-virtual {v1}, Lcom/android/systemui/util/ThreadAssert;->isMainThread()V

    iget-object v0, v0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->unregisterListeners()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeViewsFromStatusArea()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0d06

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V
    .locals 6

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    const-string v3, "KeyguardClockSwitchController"

    const-string v4, "New Clock"

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/ClockEventController;->setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    iput-object p1, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mClock:Lcom/android/systemui/plugins/clocks/ClockController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v2, "KeyguardClockSwitch"

    if-nez p1, :cond_1

    iget-object p1, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    const-string v3, "No clock being shown"

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    if-eqz v3, :cond_2

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    const-string v5, "Attached new clock views to switch"

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockTargetRegions()V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateStatusArea(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    return-void
.end method

.method public final setDateWeatherVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final setLockscreenClockY(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    iget v1, v1, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    if-eq v1, p1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    iput p1, v1, Lcom/android/keyguard/KeyguardClockSwitch;->screenOffsetYPadding:I

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setSplitShadeCentered(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitch;->updateStatusArea(Z)V

    :cond_0
    return-void
.end method

.method public final updateDoubleLineClock()V
    .locals 4

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "lockscreen_use_double_line_clock"

    const/4 v3, -0x2

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCanShowDoubleLineClock:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    neg-int p1, p1

    :cond_0
    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmallClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    int-to-float p1, p1

    invoke-static {v0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    sget-object p2, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_AOD:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_1
    return-void
.end method
