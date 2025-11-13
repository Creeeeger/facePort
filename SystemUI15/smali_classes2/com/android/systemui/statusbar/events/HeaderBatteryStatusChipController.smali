.class public final Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# instance fields
.field public final batteryChipContainer:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->context:Landroid/content/Context;

    const p1, 0x7f0a0166

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->batteryChipContainer:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->batteryChipContainer:Landroid/widget/FrameLayout;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
