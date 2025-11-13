.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onChangeCapsuleVisibility(ILcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0876

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {v11, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCapsule:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v1, v2, v1

    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    sub-int/2addr v1, v5

    const/4 v12, 0x1

    aget v2, v2, v12

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v4

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->getCardStackLocationOnScreen()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    if-ne v2, v12, :cond_0

    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCapsule:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCapsule:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    iput v2, v4, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandRootInterpolator:Landroid/view/animation/PathInterpolator;

    const-wide/16 v9, 0x1f4

    move-object v2, v0

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v1

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->startAnimation(Landroid/view/View;FFFFLandroid/view/animation/PathInterpolator;JLkotlin/jvm/functions/Function0;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->onNudgeClockRequired()V

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateMediaProgressStateIfNeeded()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iput-boolean v12, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->transitionLaunched:Z

    return-void
.end method
