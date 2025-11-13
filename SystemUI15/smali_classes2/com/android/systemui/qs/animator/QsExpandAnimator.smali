.class public final Lcom/android/systemui/qs/animator/QsExpandAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public isHeadsUpPinnedMode:Z

.field public final mAllViews:Ljava/util/ArrayList;

.field public mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

.field public final mBarController:Lcom/android/systemui/qs/bar/BarController;

.field public mBottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

.field public mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

.field public mBrightnessVolumeBar:Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

.field public mButtonsContainer:Landroid/view/View;

.field public mClockDateContainer:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public mDataUsageBar:Lcom/android/systemui/qs/bar/DataUsageBar;

.field public mEditContainer:Landroid/view/View;

.field public mExpandedMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field public mForceUpdate:Z

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mHeaderBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mHost:Lcom/android/systemui/qs/QSHost;

.field public final mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mLastPosition:F

.field public mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

.field public mMumContainer:Landroid/view/View;

.field public mNetworkSpeedContainer:Landroid/view/View;

.field public mOnExpandImmediate:Z

.field public mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelYAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPowerContainer:Landroid/view/View;

.field public mPrivacyContainer:Landroid/view/View;

.field public mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public final mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public mQsRootPanel:Landroid/view/View;

.field public mQuickControlBar:Lcom/android/systemui/qs/bar/QuickControlBar;

.field public mQuickQSPanelTileContainer:Landroid/view/View;

.field public mQuickQsAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSecurityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

.field public mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public mShadeHeaderExpandImmediateAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mSmartViewLargeTileBar:Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

.field public mStackScrollLayoutAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mSystemIconContainer:Landroid/view/View;

.field public final mTileAnimators:Ljava/util/ArrayList;

.field public mTileChunkLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

.field public mTileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

.field public mTopLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

.field public final mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

.field public mVideoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

.field public final onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/shade/ShadeHeaderController;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isHeadsUpPinnedMode:Z

    new-instance v0, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$1;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    new-instance v0, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    iput-object p7, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public static getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "expand_anim"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "QsExpandAnimator"

    const-string v3, "clearAnimationState "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result v2

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isHeadsUpPinnedMode:Z

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_c

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "view_visible_always"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_6

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "view_visible_expanded_state"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    if-eqz v2, :cond_7

    move v7, v5

    goto :goto_2

    :cond_7
    move v7, v6

    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, "view_visible_collapsed_state"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    if-eqz v2, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez v5, :cond_b

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    :cond_b
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    :goto_4
    return-void
.end method

.method public final destroyQSViews()V
    .locals 2

    const-string v0, "QsExpandAnimator"

    const-string v1, "destroyQSViews "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileChunkLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonsContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QsExpandAnimator ============================================= "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v2, p0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->gatherStateOfViews(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    const-string p0, "============================================================== "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isPanelExpandImmediate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isThereNoView()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileChunkLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

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

.method public final onAnimationAtEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "QsExpandAnimator"

    const-string v1, "onAnimationAtEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    :cond_1
    return-void
.end method

.method public final onAnimationAtStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "QsExpandAnimator"

    const-string v1, "onAnimationAtStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationStarted()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "QsExpandAnimator"

    const-string v1, "onAnimationStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/animator/QsExpandAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->detailTriggeredExpand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    iget v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getPanelHeight(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPanelClosed$1()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    const-string v1, "QsExpandAnimator"

    const-string v2, "onPanelClosed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mOnExpandImmediate:Z

    :cond_0
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isPanelExpandImmediate()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expandImmediate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    const-string v1, "QsExpandAnimator"

    invoke-static {v0, p1, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderExpandImmediateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_3
    return-void
.end method

.method public final onPanelOpened()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "QsExpandAnimator"

    const-string v1, "onPanelOpened "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    :cond_0
    return-void
.end method

.method public final onRtlChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    sput p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const-string p0, "QsExpandAnimator"

    const-string p1, "onStateChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTilesChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "brightness_on_top"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    goto :goto_0

    :cond_0
    const-string p2, "qspanel_media_quickcontrol_bar_available"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateAnimators()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p1, v1, v2, v0}, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;-><init>(ZFI)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    :cond_0
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onViewAttachedToWindow : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QsExpandAnimator"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onViewDetachedFromWindow : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QsExpandAnimator"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->destroyQSViews()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setQs : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QsExpandAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateViews()V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSHost;

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mUpdateAnimators:Lcom/android/systemui/qs/animator/QsExpandAnimator$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->onHeadsUpChangedListener:Lcom/android/systemui/qs/animator/QsExpandAnimator$1;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method

.method public final setQsExpansionPosition(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_14

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->expandedByNotiOverScroll:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setQsExpansionPosition "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QsExpandAnimator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iput p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_6

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->qsExpanded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_3
    move p1, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isPanelExpandImmediate()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    if-eqz v0, :cond_8

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move p1, v3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mExpandSettingsPanel:Z

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isDetailVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_a
    return-void

    :cond_b
    move v3, p1

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p1, :cond_12

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "keyguard edit vi running"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_12
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mStackScrollLayoutAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_13

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_13
    :goto_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mForceUpdate:Z

    :cond_14
    :goto_4
    return-void
.end method

.method public final updateAnimators()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string v4, "QsExpandAnimator"

    const-string/jumbo v5, "updateAnimators"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->clearAnimationState()V

    iget-object v5, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->updateViews()V

    new-instance v5, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iput-object v0, v5, Lcom/android/systemui/qs/TouchAnimator$Builder;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAnimatorForListener:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v5, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v6

    const v7, 0x7f0703b2

    const/high16 v8, 0x3f000000    # 0.5f

    const-string/jumbo v9, "translationY"

    const-string v10, "alpha"

    const/4 v11, 0x0

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "updateTileAnimator"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v13, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    new-array v14, v3, [F

    fill-array-data v14, :array_0

    invoke-virtual {v6, v13, v10, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v13, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v11, v15, v2

    aput v14, v15, v1

    invoke-virtual {v6, v13, v9, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v8, v6, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v6

    const v13, 0x3e99999a    # 0.3f

    const-string/jumbo v14, "view_visible_collapsed_state"

    if-eqz v6, :cond_4

    :cond_3
    move-object/from16 v16, v14

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v6, "updateHeaderAnimator"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v15, Landroid/util/Pair;

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    invoke-direct {v15, v14, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-array v15, v3, [F

    fill-array-data v15, :array_1

    invoke-virtual {v6, v12, v10, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-array v15, v3, [F

    fill-array-data v15, :array_2

    invoke-virtual {v6, v12, v9, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v8, v6, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v6, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    new-array v15, v3, [F

    fill-array-data v15, :array_3

    invoke-virtual {v6, v12, v10, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iput v13, v6, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderExpandImmediateAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v12, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v3, :cond_5

    move v12, v1

    goto :goto_1

    :cond_5
    move v12, v2

    :goto_1
    iget-object v15, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    iget-object v15, v15, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v15}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    move-result v15

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_6

    move v15, v2

    :cond_6
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v1, :cond_7

    mul-int/lit8 v15, v15, -0x1

    :cond_7
    if-eqz v12, :cond_8

    goto :goto_2

    :cond_8
    move v15, v2

    :goto_2
    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    iget-object v6, v6, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQQSPanelSidePadding(Landroid/content/Context;)I

    move-result v6

    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v7, :cond_9

    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v6

    mul-int/lit8 v6, v6, -0x1

    move v7, v6

    move v6, v2

    goto :goto_3

    :cond_9
    move v7, v2

    :goto_3
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    if-ne v12, v1, :cond_a

    mul-int/lit8 v6, v6, -0x1

    mul-int/lit8 v7, v7, -0x1

    :cond_a
    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNetworkSpeedContainer:Landroid/view/View;

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSystemIconContainer:Landroid/view/View;

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPrivacyContainer:Landroid/view/View;

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonsContainer:Landroid/view/View;

    if-eqz v12, :cond_3

    new-instance v12, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNetworkSpeedContainer:Landroid/view/View;

    int-to-float v13, v15

    move-object/from16 v16, v14

    new-array v14, v3, [F

    aput v11, v14, v2

    aput v13, v14, v1

    const-string/jumbo v1, "translationX"

    invoke-virtual {v12, v8, v1, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSystemIconContainer:Landroid/view/View;

    new-array v14, v3, [F

    aput v11, v14, v2

    const/16 v17, 0x1

    aput v13, v14, v17

    invoke-virtual {v12, v8, v1, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPrivacyContainer:Landroid/view/View;

    new-array v14, v3, [F

    aput v11, v14, v2

    aput v13, v14, v17

    invoke-virtual {v12, v8, v1, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    neg-int v13, v15

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v11, v14, v2

    aput v13, v14, v17

    invoke-virtual {v12, v8, v1, v14}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    new-array v13, v3, [F

    fill-array-data v13, :array_4

    invoke-virtual {v12, v8, v10, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonsContainer:Landroid/view/View;

    neg-int v6, v6

    int-to-float v6, v6

    int-to-float v7, v7

    new-array v13, v3, [F

    aput v6, v13, v2

    const/4 v6, 0x1

    aput v7, v13, v6

    invoke-virtual {v12, v8, v1, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v1

    const-string/jumbo v6, "view_visible_expanded_state"

    if-eqz v1, :cond_b

    goto/16 :goto_5

    :cond_b
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    new-array v8, v3, [F

    fill-array-data v8, :array_5

    invoke-virtual {v1, v7, v10, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const v7, 0x3e99999a    # 0.3f

    iput v7, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v12

    new-array v13, v3, [F

    aput v8, v13, v2

    const/4 v8, 0x1

    aput v11, v13, v8

    invoke-virtual {v1, v7, v9, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v13, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    new-array v12, v3, [F

    aput v13, v12, v2

    aput v11, v12, v8

    invoke-virtual {v1, v7, v9, v12}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelYAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileChunkLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    const-string/jumbo v12, "view_visible_always"

    invoke-direct {v7, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    new-array v8, v3, [F

    fill-array-data v8, :array_6

    invoke-virtual {v1, v7, v10, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    new-array v8, v3, [F

    fill-array-data v8, :array_7

    invoke-virtual {v1, v7, v10, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    new-array v8, v3, [F

    fill-array-data v8, :array_8

    invoke-virtual {v1, v7, v10, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsButtonsAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    invoke-direct {v7, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {v7, v12, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->isThereNoView()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v6, v0

    move-object/from16 v12, v16

    goto/16 :goto_d

    :cond_d
    const-string/jumbo v1, "updateBarAnimator"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    const/4 v4, 0x0

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    :cond_e
    move-object v1, v4

    :goto_6
    iget-object v7, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    if-eqz v7, :cond_f

    iget-object v4, v7, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-static {v4}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v4

    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    invoke-static {v1}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v1

    iget-object v4, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    invoke-static {v4}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v4

    iget-object v8, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mVideoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    invoke-static {v8}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v8

    iget-object v12, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v12}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessVolumeBar:Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    invoke-static {v13}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v14}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickControlBar:Lcom/android/systemui/qs/bar/QuickControlBar;

    invoke-static {v15}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v15

    iget-object v2, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    invoke-static {v2}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v2

    iget-object v11, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSmartViewLargeTileBar:Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    invoke-static {v11}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v11

    iget-object v3, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    invoke-static {v3}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDataUsageBar:Lcom/android/systemui/qs/bar/DataUsageBar;

    invoke-static {v6}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->getBarView$1(Lcom/android/systemui/qs/bar/BarItemImpl;)Landroid/view/View;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_10

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_9

    invoke-virtual {v1, v4, v10, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const v7, 0x7f0703b2

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    new-array v11, v6, [F

    const/4 v6, 0x0

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v6, 0x1

    aput v8, v11, v6

    invoke-virtual {v1, v4, v9, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v1, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    move-object/from16 v6, p0

    iget-object v8, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v12, v16

    invoke-direct {v11, v12, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    const v7, 0x7f0703b2

    move-object/from16 v6, p0

    move-object/from16 v12, v16

    :goto_8
    move-object/from16 v16, v12

    goto :goto_7

    :cond_11
    move-object/from16 v6, p0

    move-object/from16 v12, v16

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    iput-object v1, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeaderBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_14

    new-array v5, v3, [F

    fill-array-data v5, :array_a

    invoke-virtual {v2, v4, v10, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    if-eqz v1, :cond_13

    const/high16 v5, 0x41200000    # 10.0f

    goto :goto_b

    :cond_13
    const/high16 v5, 0x41a00000    # 20.0f

    :goto_b
    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x0

    const/4 v11, 0x1

    aput v5, v7, v11

    invoke-virtual {v2, v4, v9, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    sget v7, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->SCALE_DOWN_RATIO:F

    new-array v13, v3, [F

    aput v7, v13, v8

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v13, v11

    const-string/jumbo v15, "scaleX"

    invoke-virtual {v2, v4, v15, v13}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const-string/jumbo v13, "scaleY"

    new-array v15, v3, [F

    aput v7, v15, v8

    aput v14, v15, v11

    invoke-virtual {v2, v4, v13, v15}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    iget-object v7, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v11, Landroid/util/Pair;

    move-object/from16 v13, v18

    invoke-direct {v11, v13, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    move-object/from16 v13, v18

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_c
    move-object/from16 v18, v13

    const/4 v3, 0x2

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPanelBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_d
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v6, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_16

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, v6, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_b

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    const v1, 0x3f6e147b    # 0.93f

    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    const v1, 0x3d23d70a    # 0.04f

    iput v1, v0, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mStackScrollLayoutAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v0, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mAllViews:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, v6, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {v1, v12, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    iget v0, v6, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mLastPosition:F

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/animator/QsExpandAnimator;->setQsExpansionPosition(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final updateViews()V
    .locals 4

    const-string v0, "QsExpandAnimator"

    const-string/jumbo v1, "updateViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->getHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz v1, :cond_1

    const v2, 0x7f0a04e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mButtonsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a07ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMumContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a0901

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPowerContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a03e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mEditContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a0993

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQuickQSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v2, 0x7f0a02a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mClockDateContainer:Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v2, 0x7f0a0991

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mNetworkSpeedContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v2, 0x7f0a0b42

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSystemIconContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mShadeHeader:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const v2, 0x7f0a0920

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mPrivacyContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    if-eqz v1, :cond_2

    const-string v2, "qqs_expand_anim"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    if-nez v1, :cond_3

    const-string v1, "qqs_expand_anim is not inflated yet.!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickQSPanelTileContainer:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsRootPanel:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0996

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/SecTileChunkLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileChunkLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/bar/BarType;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BarItemImpl;

    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_VOLUME:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBrightnessVolumeBar:Lcom/android/systemui/qs/bar/BrightnessVolumeBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->TOP_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/TopLargeTileBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTopLargeTileBar:Lcom/android/systemui/qs/bar/TopLargeTileBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->BOTTOM_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBottomLargeTileBar:Lcom/android/systemui/qs/bar/BottomLargeTileBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->SMARTVIEW_LARGE_TILE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSmartViewLargeTileBar:Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->TILE_CHUNK_LAYOUT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mTileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->VIDEO_CALL_MIC_MODE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mVideoCallMicModeBar:Lcom/android/systemui/qs/bar/VideoCallMicModeBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->MULTI_SIM_PREFERRED_SLOT:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mMultiSIMBar:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->SECURITY_FOOTER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/SecurityFooterBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mSecurityFooterBar:Lcom/android/systemui/qs/bar/SecurityFooterBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->QS_MEDIA_PLAYER:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mExpandedMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->QUICK_CONTROL:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QuickControlBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mQuickControlBar:Lcom/android/systemui/qs/bar/QuickControlBar;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    sget-object v1, Lcom/android/systemui/qs/bar/BarType;->DATAUSAGE:Lcom/android/systemui/qs/bar/BarType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->getBarInExpanded(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/DataUsageBar;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsExpandAnimator;->mDataUsageBar:Lcom/android/systemui/qs/bar/DataUsageBar;

    return-void
.end method
