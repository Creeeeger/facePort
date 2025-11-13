.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-eq p4, p8, :cond_4

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p2, :cond_4

    move-object p3, p2

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    instance-of p5, p2, Lcom/android/systemui/statusbar/events/SamsungBatteryStatusChip;

    if-eqz p5, :cond_1

    sget-object p5, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->getBatteryMeterView()Landroid/view/View;

    move-result-object p6

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p6}, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;->getBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p5

    iget p6, p5, Landroid/graphics/Rect;->top:I

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p6, p5

    div-int/lit8 p6, p6, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p6, p3

    iput p6, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result p3

    iget-object p5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    if-eqz p3, :cond_3

    iget-object p3, p5, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    move-result p3

    iget p5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    :goto_0
    sub-int/2addr p3, p5

    goto :goto_1

    :cond_3
    iget-object p3, p5, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    move-result p3

    iget p5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotMarginStart:I

    goto :goto_0

    :goto_1
    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    :goto_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->updateChipBounds(Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    filled-new-array {p2, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p3, p4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2$1$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$2$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V

    invoke-virtual {p1, p3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p2}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    :cond_4
    return-void
.end method
