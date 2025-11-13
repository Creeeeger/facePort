.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $end:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

.field public final synthetic $start:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

.field public final synthetic $this_apply:Landroid/animation/ValueAnimator;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$start:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$end:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$this_apply:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$view:Landroid/view/View;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getBaseColorView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$start:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->baseViewAlpha:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$2$1$1;->$end:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$ViewStatus;->baseViewAlpha:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
