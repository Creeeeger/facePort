.class public final Lcom/android/systemui/qs/animator/QsOpenAnimator;
.super Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final mAnimContents:Ljava/util/ArrayList;

.field public final mBarController:Lcom/android/systemui/qs/bar/BarController;

.field public mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

.field public mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mCarrierIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mContext:Landroid/content/Context;

.field public mFadingSpan:F

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mHeaderDateSettingContainer:Landroid/view/View;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mHeadsUpPinned:Z

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mLoc:[I

.field public mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public mPanelExpansion:F

.field public mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field public final mQuickQsPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public final mYDiff:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qs/SecQuickQSPanelController;Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ed70a3d    # 0.42f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLoc:[I

    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v5, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v1, v2, v3, v5}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    iput v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070e45

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mYDiff:I

    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean p1, p3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p5, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQuickQsPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iput-object p6, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    return-void
.end method

.method public static getRelativePositionInt(Landroid/view/View;[I)V
    .locals 3

    instance-of v0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    aput v2, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    aput v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt(Landroid/view/View;[I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearAnimationState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final destroyQSViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QsOpenAnimator ============================================= "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v2, p0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->gatherStateOfViews(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    const-string p0, "============================================================== "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getEndDelay(Landroid/view/View;I)F
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLoc:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt(Landroid/view/View;[I)V

    aget p1, v2, v0

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    sub-float p1, p2, p1

    iget p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mFadingSpan:F

    sub-float/2addr p1, p0

    div-float/2addr p1, p2

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz p0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getStartDelay(Landroid/view/View;)F
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLoc:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt(Landroid/view/View;[I)V

    aget p1, v2, v0

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mYDiff:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const p1, 0x3dcccccd    # 0.1f

    sub-float/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final isThereNoView()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    return-void
.end method

.method public final onPanelClosed$1()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->clearAnimationState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    if-eqz v0, :cond_1

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

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updatePanelExpansion(F)V

    :cond_2
    return-void
.end method

.method public final onPanelOpened()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public final onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelSplitEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    :cond_0
    return-void
.end method

.method public final onQsClipBoundChanged(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "panelExpandedFraction : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QsOpenAnimator"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    move p1, v2

    :cond_2
    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, p1

    :goto_0
    cmpl-float p1, v2, v1

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    iget-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    if-eqz p1, :cond_b

    check-cast p1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mShadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyIsQsExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_b
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    sput p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    return-void
.end method

.method public final onUserSwitched(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mUserChanged:Z

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->clearAnimationState()V

    :cond_0
    return-void
.end method

.method public final setPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->destroyQSViews()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    return-void
.end method

.method public final setQsExpansionPosition(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    :cond_1
    sget-object p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    if-eqz v0, :cond_1

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

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updatePanelExpansion(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateAnimators()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->isThereNoView()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mFadingSpan:F

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v3, v3, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->getHeader()Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v3

    const-string v4, "open_anim"

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const v6, 0x7f0a0990

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_0
    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQuickQsPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS_MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    iget-object v7, v7, Lcom/android/systemui/qs/bar/BarController;->mCollapsedBarItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;

    invoke-direct {v8, v6, v1}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/bar/BarType;I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/bar/BarItemImpl;

    check-cast v6, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    iput-object v6, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    :cond_4
    :goto_1
    move-object v6, v5

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessMediaDevicesBar:Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;

    if-eqz v7, :cond_7

    iget-object v7, v7, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v7, v7, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    :cond_7
    :goto_3
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v8, 0x0

    new-array v9, v2, [F

    fill-array-data v9, :array_0

    const-string v10, "alpha"

    invoke-virtual {v4, v7, v10, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v9, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mYDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    new-array v11, v2, [F

    aput v9, v11, v0

    aput v8, v11, v1

    const-string/jumbo v12, "translationY"

    invoke-virtual {v4, v7, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    move-result v7

    iput v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v7

    iput v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    iput-object v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierIconAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mCarrierAndSystemIconContainer:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    if-eqz v4, :cond_8

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    new-array v11, v2, [F

    fill-array-data v11, :array_1

    invoke-virtual {v4, v7, v10, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    new-array v11, v2, [F

    aput v9, v11, v0

    aput v8, v11, v1

    invoke-virtual {v4, v7, v12, v11}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    move-result v7

    iput v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v7

    iput v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    iput-object v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-virtual {v4, v3, v10, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v7, v2, [F

    aput v9, v7, v0

    aput v8, v7, v1

    invoke-virtual {v4, v3, v12, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    move-result v7

    iput v7, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v3

    iput v3, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    iput-object v3, v4, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v6, :cond_9

    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v2, [F

    fill-array-data v4, :array_3

    invoke-virtual {v3, v6, v10, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v4, v2, [F

    aput v9, v4, v0

    aput v8, v4, v1

    invoke-virtual {v3, v6, v12, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    move-result v4

    iput v4, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v4

    iput v4, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    iput-object v4, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v5, :cond_a

    new-instance v3, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    new-array v4, v2, [F

    fill-array-data v4, :array_4

    invoke-virtual {v3, v5, v10, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    new-array v2, v2, [F

    aput v9, v2, v0

    aput v8, v2, v1

    invoke-virtual {v3, v5, v12, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;)F

    move-result v0

    iput v0, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mStartDelay:F

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v0

    iput v0, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mEndDelay:F

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    iput-object v0, v3, Lcom/android/systemui/qs/TouchAnimator$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iput-boolean v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->mAnimatorsInitialiezed:Z

    iget v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updatePanelExpansion(F)V
    .locals 3

    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    iget v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeadsUpPinned:Z

    :cond_0
    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    iput p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    :cond_2
    return-void
.end method
