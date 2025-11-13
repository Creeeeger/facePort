.class final Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$1;->this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$1;->this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mFlingGestureDetector:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_15

    if-eq v0, v6, :cond_14

    const/4 v1, 0x2

    const/4 v8, -0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto/16 :goto_a

    :cond_1
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtLeft:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    cmpg-float v3, v0, v2

    if-nez v3, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtLeft:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtLeft:Z

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtTop:Z

    if-nez v1, :cond_4

    cmpg-float v3, p1, v2

    if-nez v3, :cond_4

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtTop:Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtTop:Z

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtRight:Z

    if-nez v1, :cond_6

    int-to-float v2, v8

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtRight:Z

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    int-to-float v1, v8

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtRight:Z

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtBottom:Z

    if-nez v0, :cond_8

    int-to-float v1, v8

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_8

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtBottom:Z

    goto/16 :goto_a

    :cond_8
    if-eqz v0, :cond_19

    int-to-float v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_19

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtBottom:Z

    goto/16 :goto_a

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v1, :cond_a

    goto :goto_3

    :cond_a
    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDebugFireable:Z

    goto/16 :goto_a

    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownX:[F

    aget v1, v1, v7

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownY:[F

    aget v2, v2, v7

    sub-float/2addr v1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    goto :goto_4

    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    :goto_4
    move v0, v7

    goto :goto_5

    :cond_d
    move v0, v6

    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeFireable:Z

    if-nez v0, :cond_e

    goto/16 :goto_a

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    move v11, v7

    :goto_6
    if-ge v11, v10, :cond_12

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->findIndex(I)I

    move-result v12

    if-eq v12, v8, :cond_11

    move v13, v7

    :goto_7
    if-ge v13, v9, :cond_10

    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    invoke-virtual {p1, v11, v13}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v1

    invoke-virtual {p1, v11, v13}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v2

    move-object v0, p0

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->detectSwipe(FFJI)I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object v0, p0

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->detectSwipe(FFJI)I

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_12
    move v0, v7

    :goto_8
    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    move v6, v7

    :goto_9
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeFireable:Z

    goto :goto_a

    :cond_14
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeFireable:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDebugFireable:Z

    goto :goto_a

    :cond_15
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeFireable:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDebugFireable:Z

    iput v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownPointers:I

    invoke-virtual {p0, p1, v7}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtLeft:Z

    if-eqz p1, :cond_16

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtLeft:Z

    :cond_16
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtTop:Z

    if-eqz p1, :cond_17

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtTop:Z

    :cond_17
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtRight:Z

    if-eqz p1, :cond_18

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtRight:Z

    :cond_18
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtBottom:Z

    if-eqz p1, :cond_19

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mMouseHoveringAtBottom:Z

    :cond_19
    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
