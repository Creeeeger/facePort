.class public final Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

.field public mInsetNavigationBarBottomHeight:I

.field public mIsFadingIn:Z

.field public mIsFadingOut:Z

.field public mLabelAlphaAnimStarted:Z

.field public mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

.field public mLastDensityDpi:I

.field public mLastOrientation:I

.field public mLastSemMobileKeyboardCovered:I

.field public final mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

.field public mPreviousVisible:Z

.field public mPrvAlpha:F

.field public final mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastDensityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastSemMobileKeyboardCovered:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPrvAlpha:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelAlphaAnimStarted:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    new-instance v2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v4, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    new-instance v5, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v6, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v6, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v7, p1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/IntSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V

    iput-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mPanelViewSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/NotificationPanelView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    return-void
.end method


# virtual methods
.method public final animateLabelAlpha(Landroid/view/View;Z)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x96

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3f147ae1    # 0.58f

    invoke-direct {p2, v2, v0, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$1;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onPanelConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    if-ne v0, v1, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastDensityDpi:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastSemMobileKeyboardCovered:I

    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v2, v3, :cond_2

    :cond_0
    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastOrientation:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelVisibility(Z)V

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLastSemMobileKeyboardCovered:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->updateLabelViewColor()V

    return-void
.end method

.method public final updateLabelViewColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_1

    const p0, -0x61000001

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    const v2, -0x66050501

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mContext:Landroid/content/Context;

    const v1, 0x7f060683

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v2, v1, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateLabelVisibility(Z)V
    .locals 8

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mOnKeyguardStateSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v4

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mMinExpansionHeightSupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_2

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->mFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mQuickStarHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-object v4, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v4, v4, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    iget v0, v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    if-ne v4, v0, :cond_3

    if-eqz p1, :cond_b

    :cond_3
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->DEBUG:Z

    if-eqz v5, :cond_6

    if-eq v4, v0, :cond_6

    const-string/jumbo v4, "updateLabelVisibility(forceUpdate:"

    const-string v5, ") preV:"

    invoke-static {v4, v5, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    const-string v6, " >> newV:"

    const-string v7, ", isFadingAnimationRunning()"

    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    const-string v5, "DataUsageLabelManager"

    invoke-static {v4, v2, v5}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingIn:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mIsFadingOut:Z

    if-eqz v2, :cond_8

    :cond_7
    if-eqz p1, :cond_a

    :cond_8
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mPreviousVisible:Z

    :cond_b
    return-void
.end method

.method public final updateNavBarHeight(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mNavSettingsHelper:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;

    if-ne v1, p1, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->updateSettingsAndCheckChanges()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateNavBarHeight("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    const-string v4, " >> "

    const-string v5, ") "

    invoke-static {v1, v3, v4, p1, v5}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$NavSettingsHelper;->getDumpText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageLabelManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mInsetNavigationBarBottomHeight:I

    new-instance p1, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;->mDataUsageLabelParent:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelParent;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelManager;Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
