.class public final synthetic Lcom/android/systemui/classifier/BrightLineFalsingManager$3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/view/MotionEvent;

    new-instance p0, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int p1, v2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;-><init>(III)V

    return-object p0
.end method
