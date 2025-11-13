.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $alphaStart:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$alphaStart:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xef

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$alphaStart:Lkotlin/jvm/internal/Ref$FloatRef;

    const v1, 0x3f7d70a4    # 0.99f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$expand_contents:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$internalExpandAnimation$1$1$1$1;->$alphaStart:Lkotlin/jvm/internal/Ref$FloatRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p1, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    return-void
.end method
