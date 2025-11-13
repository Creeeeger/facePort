.class public final Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;
.super Landroid/widget/GridView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLastTime:J

.field public mLastX:F

.field public mLastY:F

.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    invoke-direct {p0, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastX:F

    iput p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastY:F

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastTime:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastTime:J

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x437a0000    # 250.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->mLastY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "button click canceled, diff : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SideCoverContentView"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
