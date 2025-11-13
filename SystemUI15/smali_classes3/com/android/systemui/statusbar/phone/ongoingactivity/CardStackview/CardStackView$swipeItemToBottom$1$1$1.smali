.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $end:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

.field public final synthetic $i:I

.field public final synthetic $isShowBottomCardShadowCalled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $start:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;ILcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$i:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$isShowBottomCardShadowCalled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$view:Landroid/view/View;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$start:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$end:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$i:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$isShowBottomCardShadowCalled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getTopViewIndex()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->showBottomCardShadowIfNeeded(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$isShowBottomCardShadowCalled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$start:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->baseViewAlpha:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToBottom$1$1$1;->$end:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->baseViewAlpha:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
