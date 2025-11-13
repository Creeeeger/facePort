.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field public final mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

.field public final mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public final mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda9;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBatteryListening:Z

.field public final mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

.field public final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mBlockedIcons:Ljava/util/List;

.field public mCallerExplicitAlpha:Ljava/lang/String;

.field public final mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mCommunalConsumer:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda10;

.field public final mCommunalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

.field public mCommunalShowing:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

.field public mDelayShowingKeyguardStatusBar:Z

.field public final mDesktopCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

.field public final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

.field public mDozing:Z

.field public mDraggedFraction:F

.field public mEssentialLeftWidth:I

.field public mExplicitAlpha:F

.field public mFirstBypassAttempt:Z

.field public mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final mGardener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$13;

.field public final mHeadsUpShowingAmountAnimation:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

.field public mHiddenByKnox:Z

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final mInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mKeyguardHeadsUpShowingAmount:F

.field public mKeyguardLeftSideContainerView:Landroid/view/ViewGroup;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mKeyguardStatusBarAnimateAlpha:F

.field public mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

.field public final mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

.field public mKeyguardStatusBarNotifContainer:Landroid/view/ViewGroup;

.field public final mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKnoxStatusBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mNetspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final mNotificationsHeaderCollideDistance:I

.field public final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda8;

.field public final mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public final mOngoingCallListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$9;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mPluginLockStarCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public final mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

.field public mShowingKeyguardHeadsUp:Z

.field public final mSlimIndicatorKeyguardCarrierTextHelper:Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public mStatusBarState:I

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;

.field public final mStatusBarUserChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

.field public mStatusIconArea:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public mStatusIconAreaView:Landroid/view/ViewGroup;

.field public final mStatusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

.field public mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

.field public mSystemEventAnimatorAlpha:F

.field public mSystemIconsContainer:Landroid/view/View;

.field public mTintedIconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

.field public final mTintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

.field public final mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

.field public final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$12;


# direct methods
.method public static $r8$lambda$7w5SQ8EAIsB6phwkiU0XFhO16b0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    if-eqz v1, :cond_0

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenApplyWindowInsets(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    move-result v0

    iget-object v1, v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateGarden(IILandroid/view/WindowInsets;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static $r8$lambda$PyURNFylWesnFtBP3URsrY4f6G0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHiddenByDeX:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static $r8$lambda$SDjYX36TdSthdVP17CFw-x9k5IE(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_MUM_ICON:Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserName:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f13011e

    invoke-virtual {p2, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static $r8$lambda$VD84sIQt3ejkk9-SF1MzpL04HFk(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsUserSwitcherEnabled:Z

    return-void
.end method

.method public static $r8$lambda$VT0xJSg7HWdegLHOKUTjxWLkC0k(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mNotifIconColor:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setKeyguardNotifIconTint(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YTsAQhIM-ZIR1qbmyZFXU-fHY0U(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Ljava/lang/Float;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$wGlIvEVAPs5MJk9Zk5mL4Xyfw3c(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v0, 0x7f0a0c0f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$wkGUzVGkLMdBs1oxoPHTaMz50Ho(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors(Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;)V

    return-void
.end method

.method public static $r8$lambda$xz00Wgoom64_pyrJyCsnl8d0-lo(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->isHiddenLockScreenMum()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->isMultiUserAvatarHidden:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    return-void
.end method

.method public static $r8$lambda$z2zgdSVI2vZwFMhzcuLHD6QN16w(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Landroid/graphics/Rect;)I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v2, 0x7f0a0c0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    sub-int/2addr v3, v0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070471

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    sub-int/2addr v3, p0

    return v3
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/battery/BatteryMeterViewController;Lcom/android/systemui/shade/ShadeViewStateProvider;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/ui/viewmodel/KeyguardStatusBarViewModel;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Landroid/os/UserManager;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p16

    move-object/from16 v3, p19

    move-object/from16 v4, p30

    move-object/from16 v5, p37

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v9, 0x0

    iput v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardHeadsUpShowingAmount:F

    new-instance v10, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    new-instance v11, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda7;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    sget-object v12, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v12, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;

    const-string v13, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    invoke-direct {v12, v13, v11, v10}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$5;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    new-instance v10, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    const v11, 0x7f0a0594

    const v13, 0x7f0a0595

    const v14, 0x7f0a0596

    invoke-direct {v10, v11, v13, v14, v12}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;-><init>(IIILandroid/util/Property;)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHeadsUpShowingAmountAnimation:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLock:Ljava/lang/Object;

    iput v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDraggedFraction:F

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$3;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda8;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda8;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda9;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda9;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda10;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommunalConsumer:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda10;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBlockedIcons:Ljava/util/List;

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAnimateAlpha:F

    iput v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimatorAlpha:F

    const/high16 v9, -0x40800000    # -1.0f

    iput v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPluginLockStarCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDesktopCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHiddenByKnox:Z

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$9;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$9;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$9;

    const-string v9, "-"

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCallerExplicitAlpha:Ljava/lang/String;

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$12;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$12;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$12;

    const/4 v9, -0x1

    iput v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mEssentialLeftWidth:I

    new-instance v9, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$13;

    const-string v10, "KeyguardStatusBarViewController"

    invoke-direct {v9, p0, p0, v10}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$13;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mGardener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$13;

    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    move-object/from16 v9, p3

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v9, p4

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    move-object/from16 v9, p5

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v9, p6

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v10, p15

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v10, p18

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserManager:Landroid/os/UserManager;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarUserChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    move-object/from16 v10, p20

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v10, p21

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v10, p22

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v10, p23

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v10, p24

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    move-object/from16 v10, p26

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommunalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKnoxStatusBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v8}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    iput-object v2, v5, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->setHidden:Lkotlin/jvm/functions/Function1;

    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v2, :cond_0

    move-object/from16 v2, p38

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNetspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    :cond_0
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    sget-boolean v2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;->view:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v2, v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    :cond_1
    move-object/from16 v2, p31

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual/range {p12 .. p12}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$10;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateBlockedIcons()V

    const v2, 0x7f070453

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationsHeaderCollideDistance:I

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v2, v3, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->chipEnabled:Z

    xor-int/2addr v2, v7

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserAvatarEnabled:Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    const/high16 v3, 0x100000

    invoke-direct {v1, v3, v6, v2}, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;-><init>(IILcom/android/systemui/statusbar/disableflags/DisableStateTracker$Callback;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    move-object/from16 v1, p33

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorKeyguardCarrierTextHelper:Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    move-object/from16 v1, p43

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static isMigrationEnabled()V
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method


# virtual methods
.method public final animateKeyguardStatusBarIn()V
    .locals 5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iget-object v1, v1, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v2, 0x0

    const-string v3, "KeyguardStatusBarViewController"

    const-string v4, "animating status bar in"

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda9;

    invoke-virtual {v0, p0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object p0, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateKeyguardStatusBarOut(JJ)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iget-object v2, v2, Lcom/android/keyguard/logging/KeyguardLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    const-string v4, "KeyguardStatusBarViewController"

    const-string v5, "animating status bar out"

    invoke-virtual {v2, v4, v1, v5, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v1, v2, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimatorUpdateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda9;

    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual {v1, p1, p2}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1, p3, p4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object p1, Lcom/android/app/animation/InterpolatorsAndroidX;->LINEAR_OUT_SLOW_IN:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$11;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$11;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    invoke-virtual {v1, p1}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "KeyguardStatusBarView:"

    const-string v1, "  mBatteryListening: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryListening:Z

    const-string v3, "  mExplicitAlpha: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    const-string v3, "  mCallerExplicitAlpha: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCallerExplicitAlpha:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mHiddenByKnox: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHiddenByKnox:Z

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mBatteryCharging: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryCharging:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLayoutState: 0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  mKeyguardUserSwitcherEnabled: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    const-string v3, "  mHiddenByDeX: "

    invoke-static {v0, v2, p1, v3}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mHiddenByDeX:Z

    invoke-static {v0, v2, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/battery/BatteryMeterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/battery/BatteryMeterView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " KeyguardStatusBarWallpaperHelper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorFromWallPaper:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "   fontColorFromWallPaper="

    invoke-static {p1, v1, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->fontColorType:I

    const-string v1, "   fontColorType="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget p2, p2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->intensity:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   intensity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/CarrierTextController;->dump(Ljava/io/PrintWriter;)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    return-void
.end method

.method public getBlockedIcons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBlockedIcons:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEssentialLeftWidth()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mEssentialLeftWidth:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mEssentialLeftWidth:I

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mEssentialLeftWidth:I

    return p0
.end method

.method public final getEssentialRightWidth()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v3, 0x7f0a07cb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v2

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr p0, v2

    return p0
.end method

.method public final getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a05a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mGardenLeftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconArea:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a0c1e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconArea:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconArea:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a05c9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAreaView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCarrierTextController:Lcom/android/keyguard/CarrierTextController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBatteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNetspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a05aa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarNotifContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a07f5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setKeyguardNotifIcon(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarNotifContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged(Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarUserChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;->bind(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    iput-object v2, v3, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->displayId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v3, 0x7f0a0c0f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->KEYGUARD:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->create(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v3, 0x7f0a0ce7

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemIconsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0a057f

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "injectNioContainer("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioContainerView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->updateNioLayoutMargin()Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v4, "status_bar_show_vibrate_icon"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$12;

    const/4 v7, -0x1

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateUserSwitcher()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->onThemeChanged()V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommunalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object v4, v4, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommunalConsumer:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda10;

    invoke-static {v2, v4, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKnoxStatusBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder;->bind(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$9;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->addCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v4, 0x7f0a05ab

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->keyguardCallChipController:Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    if-eqz v4, :cond_2

    const v6, 0x7f0a0875

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallChronometer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/Chronometer;->stop()V

    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/KeyguardCallChipController;->chipView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v4, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const-wide/16 v6, 0x11

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->listener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDesktopCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    invoke-interface {v0, v2}, Lcom/android/systemui/util/DesktopManager;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const-string v4, "KeyguardStatusBarViewController"

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3

    const-string v0, "Set keyguard status icons invisible from the beginning"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;ZI)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a057e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach() mCarrierTextView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorKeyguardCarrierTextHelper:Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;

    iget-object v3, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mCarrierTextView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", view:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mOriginalVisibility:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mOriginalVisibility:I

    const-string v5, "SlimIndicatorKeyguardCarrierTextHelper"

    invoke-static {v3, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iput-object v0, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mCarrierTextView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    iput v1, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mOriginalVisibility:I

    iput-object v2, v0, Lcom/android/keyguard/CarrierText;->mSlimIndicatorKeyguardCarrierTextInterface:Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;

    iget-object v0, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v1, "KeyguardStatusBarCarrierText"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v1, v4, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v1, "StatusBar"

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPluginLockStarCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$7;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemIconsContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mAnimationCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$5;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    iput-object v1, v0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->displayId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$12;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mTintedIconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->destroy()V

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$9;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->removeCallback(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarWallpaperHelper:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v2, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->wallpaperEventNotifier:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarWallpaperHelper;->listener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDesktopCallback:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$8;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v2, v0}, Lcom/android/systemui/util/DesktopManager;->unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "detach() mCarrierTextView:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorKeyguardCarrierTextHelper:Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;

    iget-object v3, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mCarrierTextView:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mOriginalVisibility:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mOriginalVisibility:I

    const-string v4, "SlimIndicatorKeyguardCarrierTextHelper"

    invoke-static {v3, v4, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput-object v1, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mCarrierTextView:Lcom/android/keyguard/CarrierText;

    iget-object v0, v2, Lcom/android/systemui/slimindicator/SlimIndicatorKeyguardCarrierTextHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v2, "KeyguardStatusBarCarrierText"

    invoke-virtual {v0, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v2, "KeyguardStatusBarViewController"

    invoke-virtual {v0, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v2, 0x7f0a057f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeNioContainer("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioContainerView:Landroid/view/View;

    return-void
.end method

.method public final setAlpha(F)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const v0, -0x43dc28f6    # -0.01f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCallerExplicitAlpha:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mExplicitAlpha("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") caller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCallerExplicitAlpha:Ljava/lang/String;

    const-string v2, "KeyguardStatusBarViewController"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    return-void
.end method

.method public final setKeyguardUserSwitcherEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    return-void
.end method

.method public updateBlockedIcons()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const v2, 0x7f030033

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    const v2, 0x1040eee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const/4 v0, -0x2

    const-string/jumbo v2, "status_bar_show_vibrate_icon"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBlockedIcons:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBlockedIcons:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateForHeadsUp(Z)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewStateProvider;->shouldHeadsUpBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShowingKeyguardHeadsUp:Z

    if-eq v3, v0, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShowingKeyguardHeadsUp:Z

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHeadsUpShowingAmountAnimation:Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v3, v2, v0, p1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->cancelAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)V

    iget-object p1, v3, Lcom/android/systemui/statusbar/notification/AnimatableProperty$6;->val$property:Landroid/util/Property;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mGardener:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$13;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    return-void
.end method

.method public final updateTopClipping(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final updateUserSwitcher()V
    .locals 3

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateViewState()V
    .locals 10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mShadeViewStateProvider:Lcom/android/systemui/shade/ShadeViewStateProvider;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewStateProvider;->getLockscreenShadeDragProgress()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v3, v2

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewStateProvider;->getKeyguardTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v4

    const-string v5, "KeyguardStatusBarViewController"

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateViewState() KeyguardTouchAnimator isViRunning is true, so return.. v:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mExplicitAlpha:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusBarState:I

    if-ne v4, v1, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewStateProvider;->getPanelViewExpandedHeight()F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v4, v6

    :goto_0
    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeViewStateProvider;->getPanelViewExpandedHeight()F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    goto :goto_0

    :goto_1
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    float-to-double v6, v0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardHeadsUpShowingAmount:F

    sub-float/2addr v3, v2

    mul-float v4, v3, v0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->isAnimationRunning:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mSystemEventAnimatorAlpha:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mFirstBypassAttempt:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDelayShowingKeyguardStatusBar:Z

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDozing:Z

    if-nez v2, :cond_b

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mCommunalShowing:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mHiddenByKnox:Z

    if-nez v0, :cond_b

    const-string v0, "isLockStarStatusBarEnabled: ret="

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    :try_start_0
    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v0, "isLockStarStatusBarEnabled: values are null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_a
    invoke-interface {v2}, Lcom/samsung/systemui/splugins/lockstar/LockStarValues;->getStatusBarVisible()Z

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_6

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "isLockStarStatusBarEnabled: error - "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    const/4 v3, 0x4

    :goto_7
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState(FI)V

    :cond_c
    return-void
.end method

.method public final updateViewState(FI)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isMigrationEnabled()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDisableStateTracker:Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/disableflags/DisableStateTracker;->isDisabled:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x4

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mDraggedFraction:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 p1, 0x40a00000    # 5.0f

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    :goto_0
    return-void
.end method
