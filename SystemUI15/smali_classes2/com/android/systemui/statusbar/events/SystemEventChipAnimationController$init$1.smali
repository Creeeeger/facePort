.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$GardenListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGardenChanged(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$init$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    if-eq v0, v2, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method
