.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $isToRight:Z

.field public final synthetic $topView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$isToRight:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$topView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$isToRight:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$topView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$topView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    neg-float p1, p1

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget v0, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->centerDp:I

    iget v1, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeEndDp:I

    add-int v2, v0, v1

    int-to-float v2, v2

    iget v3, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dpToFlot:F

    mul-float/2addr v2, v3

    cmpl-float v4, p1, v2

    if-ltz v4, :cond_1

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$topView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget p2, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->cardSwipeStartDp:I

    int-to-float v4, p2

    mul-float/2addr v4, v3

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    sub-float/2addr v2, p1

    sub-int/2addr v0, p2

    add-int/2addr v0, v1

    int-to-float p1, v0

    mul-float/2addr p1, v3

    div-float/2addr v2, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$swipeItemToHorizontal$1$1;->$topView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method
