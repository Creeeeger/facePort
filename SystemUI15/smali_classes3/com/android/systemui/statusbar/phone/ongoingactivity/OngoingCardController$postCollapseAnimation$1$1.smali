.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $left:F

.field public final synthetic $top:F

.field public final synthetic $width:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;FFI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->$left:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->$top:F

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const-string/jumbo v1, "{OngoingExpandedPipController}"

    const-string v2, "collapseAnimation.startRunnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->transitionLaunched:Z

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mainUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$1;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    const-wide/16 v5, 0x258

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->$left:F

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->$top:F

    iget v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->$width:I

    int-to-float v5, v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    const v7, 0x7f0a0876

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$postCollapseAnimation$1$1$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->getCardStackLocationOnScreen()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput v3, v7, Landroid/graphics/PointF;->x:F

    iput v4, v7, Landroid/graphics/PointF;->y:F

    iget v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->statusBarVisibility:I

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    iput v4, v7, Landroid/graphics/PointF;->y:F

    :cond_0
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isOrientationChanged:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isOrientationChanged:Z

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v2, v5

    iput v2, v7, Landroid/graphics/PointF;->x:F

    :cond_2
    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    int-to-float v2, v2

    add-float v10, v0, v2

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseRootInterpolator:Landroid/view/animation/PathInterpolator;

    const-wide/16 v14, 0x28a

    move-object v7, v1

    move-object/from16 v16, v6

    invoke-virtual/range {v7 .. v16}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->startAnimation(Landroid/view/View;FFFFLandroid/view/animation/PathInterpolator;JLkotlin/jvm/functions/Function0;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->onNudgeClockRequired()V

    goto :goto_0

    :cond_4
    return-void
.end method
