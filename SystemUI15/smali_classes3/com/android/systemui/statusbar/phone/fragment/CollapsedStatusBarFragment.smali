.class public final Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public mAnimationsEnabled:Z

.field public final mBlockedIcons:Ljava/util/List;

.field public final mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

.field public final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

.field public final mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final mCarrierLogoViewControllerFactory:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;

.field public mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

.field public mClockView:Landroid/view/View;

.field public final mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

.field public final mCollapsedStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinder;

.field public final mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

.field public final mDarkIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;

.field public final mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

.field public final mDemoModeCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

.field public final mHandler:Landroid/os/Handler;

.field public final mHasOngoingActivity:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

.field public mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

.field public final mLocationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public mNotificationIconAreaInner:Landroid/view/View;

.field public mOngoingActivityChip:Landroid/view/View;

.field public final mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

.field public mOngoingCallChip:Landroid/view/View;

.field public final mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public final mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mStartableStates:Ljava/util/Map;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field public mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

.field public final mStatusBarFragmentComponentFactory:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final mStatusBarLayoutListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

.field public final mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

.field public mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

.field public final mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$7;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinder;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/icon/ui/viewbinder/NotificationIconContainerStatusBarViewBinder;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Ljava/util/concurrent/Executor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/demomode/DemoModeController;Landroid/os/Handler;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p31

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->Companion:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;->createModelFromFlags(II)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;->createModelFromFlags(II)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$7;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$7;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarLayoutListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponentFactory:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLocationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinder;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v2, p30

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierLogoViewControllerFactory:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final animateHiddenState(Landroid/view/View;IZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animateChipHide(Landroid/view/View;IZ)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p3, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p3, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda6;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final animateShow(Landroid/view/View;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animateChipShow(Landroid/view/View;Z)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x140

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x32

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v0, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final calculateInternalModel(Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;
    .locals 12

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible$1()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    const/4 v5, 0x1

    if-nez v4, :cond_6

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v3}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v3}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->shouldHideStatusBarIconsWhenExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v3, :cond_1

    const-string v3, "CollapsedStatusBarFragment"

    const-string/jumbo v4, "shouldHideStatusBar() will return true for Keyguard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->hideIconsForBouncer:Z

    if-nez v4, :cond_2

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    if-eqz v6, :cond_3

    :cond_2
    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    const-string v7, "hideIconsForBouncer="

    const-string v8, " wereIconsJustHidden="

    const-string v9, "StatusBarHideIconsForBouncerManager"

    invoke-static {v7, v8, v9, v4, v6}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_3
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->hideIconsForBouncer:Z

    if-nez v4, :cond_4

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    if-eqz v3, :cond_6

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v5, :cond_5

    if-nez v2, :cond_6

    :cond_5
    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    return-object v0

    :cond_6
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    invoke-static {}, Lcom/android/systemui/Flags;->statusBarScreenSharingChips()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->shouldVisible()Z

    move-result v4

    new-instance v7, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    move v0, v5

    goto :goto_1

    :cond_7
    move v0, v6

    :goto_1
    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZ)V

    return-object v7
.end method

.method public final clockHiddenMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0
.end method

.method public final disable(IIIZ)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    new-instance v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    invoke-direct {v0, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logDisableFlagChange$2;

    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logDisableFlagChange$2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;)V

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "CollapsedSbFragment"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iget v3, v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    iput v3, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget v0, v0, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    iput v0, v2, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->Companion:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;->createModelFromFlags(II)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    return-void
.end method

.method public disableAnimationsForTesting()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mHasOngoingActivity="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHasOngoingActivity:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mAnimationsEnabled="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    if-nez p1, :cond_0

    const-string p0, "StatusBarFragmentComponent is null"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStartables()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Startables: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_1
    return-void
.end method

.method public enableAnimationsForTesting()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    return-void
.end method

.method public getBlockedIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    return-object p0
.end method

.method public final hideCarrierLogo(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->userSetup:Z

    if-nez p2, :cond_1

    :cond_0
    const/16 v0, 0x8

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    :cond_2
    return-void
.end method

.method public final initOperatorName()V
    .locals 5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->CARRIER_LOGO_ON_HOME_SCREEN:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a025b

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierLogoViewControllerFactory:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$Factory;->create(Landroid/view/View;I)Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->hideCarrierLogo(ZZ)V

    :cond_1
    return-void
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->postUpdateStatusBarVisibility()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->addListener(Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;)V

    sget p0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0458

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget p0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    return-void
.end method

.method public final onDestroyView()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/CarrierConfigTracker;->removeCallback(Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/CarrierConfigTracker;->removeDataSubscriptionChangedListener(Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStartables()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-class v1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    const-string v1, "CollapsedStatusBarFragment"

    invoke-virtual {v0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    return-void
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$7;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPrepareSystemEventAnimation(Z)Landroidx/core/animation/Animator;
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logStatusBarAlpha(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$hideAnimatedViewWithAlpha$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$hideAnimatedViewWithAlpha$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    return-object p1

    :cond_0
    new-instance p0, Landroidx/core/animation/AnimatorSet;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->setChipView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->parent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityChip:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->initCapsuleLayout(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$7;

    const-string/jumbo v1, "status_bar_show_vibrate_icon"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string p0, "panel_state"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->postUpdateStatusBarVisibility()V

    return-void
.end method

.method public final onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;Z)V

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->addListener(Landroidx/core/animation/AnimatorListenerAdapter;)V

    return-object p1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    const-class v3, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "CollapsedStatusBarFragment"

    invoke-static {v2, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponentFactory:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Factory;->create(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->initOperatorName()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->init()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStartables()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v6, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STARTING:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider$layoutListener$1;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v6, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;->STARTED:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent$Startable$State;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f0a0c13

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarLayoutListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda1;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateStatusBarLocation(II)V

    if-eqz p2, :cond_1

    const-string v2, "panel_state"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;

    const v2, 0x7f0a0c0f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout;

    sget-object v4, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    iget-object v8, p2, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mDarkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    iget-object v5, p2, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mWifiUiAdapter:Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;

    iget-object v9, p2, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mBTTetherUiAdapter:Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;

    iget-object v6, p2, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    iget-object v7, p2, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager$Factory;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;-><init>(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mShouldLog:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast p2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a0c15

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a02a2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a0872

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a0841

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityChip:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->showEndSideContent(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    const-string p1, "CollapsedStatusBarFragment#initNotifIconArea"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const p2, 0x7f0a0819

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateNotificationIconAreaAndOngoingActivityChip(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;I)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;I)V

    invoke-direct {p1, p2, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/CarrierConfigTracker;->addCallback(Lcom/android/systemui/util/CarrierConfigTracker$CarrierConfigChangedListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/CarrierConfigTracker;->addDefaultDataSubscriptionChangedListener(Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/CollapsedStatusBarViewBinderImpl;->bind(Landroid/view/View;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/CollapsedStatusBarViewModel;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p1, p2, v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    return-void
.end method

.method public final showEndSideContent(Z)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animators:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->updateAlpha(FI)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iget-wide v5, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    sget-object v7, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    iget-wide v8, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animateToAlpha(FJLandroidx/core/animation/PathInterpolator;J)V

    goto :goto_0

    :cond_2
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    sget-object v14, Lcom/android/app/animation/InterpolatorsAndroidX;->ALPHA_IN:Landroidx/core/animation/PathInterpolator;

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0x140

    const-wide/16 v15, 0x32

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animateToAlpha(FJLandroidx/core/animation/PathInterpolator;J)V

    :goto_0
    return-void
.end method

.method public updateBlockedIcons()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateNotificationIconAreaAndOngoingActivityChip(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v5, 0x2

    const-class v6, Lcom/android/systemui/util/SettingsHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    if-nez v1, :cond_2

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v7, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getStatusBarNotificationStyle()I

    move-result v6

    if-ne v6, v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v6}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getStatusBarNotificationStyle()I

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    :goto_2
    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v4

    :goto_3
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v4

    :goto_4
    const/16 v1, 0x8

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/View;

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hideTimeViewByOngoingChip(Z)V

    goto :goto_6

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {v5}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v4

    :goto_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/View;

    invoke-virtual {p0, v6, v1, v5}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    :goto_6
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityChip:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hideTimeViewByOngoingChip(Z)V

    goto :goto_8

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    invoke-virtual {p1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    move v2, v4

    :goto_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingActivityChip:Landroid/view/View;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hideTimeViewByOngoingChip(Z)V

    :cond_b
    :goto_8
    invoke-static {}, Lcom/android/systemui/Flags;->statusBarScreenSharingChips()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->logger:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;

    if-eqz v3, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->chipIsVisible:Z

    if-eq v3, p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger$OngoingCallEvents;->ONGOING_CALL_VISIBLE:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger$OngoingCallEvents;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_c
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallLogger;->chipIsVisible:Z

    return-void
.end method

.method public final updateStatusBarLocation(II)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRight()I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLocationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->listeners:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->listeners:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateStatusBarVisibilities(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->calculateInternalModel(Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;Z)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz p0, :cond_1

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    if-nez p0, :cond_0

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    if-nez p0, :cond_0

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    if-nez p0, :cond_0

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    if-nez p0, :cond_0

    iget-boolean p0, v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;->postUpdateStatusBarVisibility()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda3;->run()V

    :goto_1
    return-void
.end method

.method public final updateStatusBarVisibilitiesInner(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->calculateInternalModel(Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;)Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logVisibilityModel$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$logVisibilityModel$2;

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "CollapsedSbFragment"

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iget-boolean v7, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    iput-boolean v7, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iget-boolean v8, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    iput-boolean v8, v6, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iget-boolean v9, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    iput-boolean v9, v6, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iget-boolean v10, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    iput-boolean v10, v6, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    const/4 v5, 0x0

    if-eq v10, v4, :cond_3

    if-eqz v10, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->showEndSideContent(Z)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animators:Ljava/util/Map;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/animation/ValueAnimator;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {v4, v5, v10}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->updateAlpha(FI)V

    goto :goto_0

    :cond_2
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    sget-object v15, Lcom/android/app/animation/InterpolatorsAndroidX;->ALPHA_OUT:Landroidx/core/animation/PathInterpolator;

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v13, 0xa0

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;->animateToAlpha(FJLandroidx/core/animation/PathInterpolator;J)V

    :cond_3
    :goto_0
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    const/4 v6, 0x0

    const/4 v10, 0x1

    if-eq v8, v4, :cond_4

    move v4, v10

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    iget-boolean v8, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    iget-boolean v11, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    if-eq v11, v8, :cond_5

    move v8, v10

    goto :goto_2

    :cond_5
    move v8, v6

    :goto_2
    iget-boolean v12, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    if-eq v9, v12, :cond_6

    move v6, v10

    :cond_6
    if-eqz v8, :cond_a

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/View;

    if-eqz v9, :cond_a

    if-eqz v11, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    if-nez v11, :cond_a

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallChip:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    :cond_8
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v9, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    if-eqz v9, :cond_9

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    if-nez v4, :cond_b

    if-nez v6, :cond_b

    if-eqz v8, :cond_c

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateNotificationIconAreaAndOngoingActivityChip(Z)V

    :cond_c
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    if-ne v7, v4, :cond_d

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v5

    if-eq v4, v5, :cond_10

    :cond_d
    if-eqz v7, :cond_f

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    if-eqz v11, :cond_e

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->hideCarrierLogo(ZZ)V

    goto :goto_3

    :cond_e
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateShow(Landroid/view/View;Z)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierHomeLogoViewController:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    goto :goto_3

    :cond_f
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->animateHiddenState(Landroid/view/View;IZ)V

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->hideCarrierLogo(ZZ)V

    :cond_10
    :goto_3
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityExt:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prv:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollapsedStatusBarFragment_StatusBarVisibilityExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method
