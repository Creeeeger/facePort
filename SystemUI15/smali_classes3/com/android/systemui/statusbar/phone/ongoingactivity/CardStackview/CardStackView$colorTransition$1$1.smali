.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $dstColor:I

.field public final synthetic $rgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public final synthetic $srcColor:I

.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Landroid/animation/ArgbEvaluator;Landroid/animation/ValueAnimator;IILcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$rgbEvaluator:Landroid/animation/ArgbEvaluator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$srcColor:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$dstColor:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$rgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$srcColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$dstColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$colorTransition$1$1;->$view:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->changeCardBg(Landroid/view/View;I)V

    return-void
.end method
