.class public final Lcom/android/systemui/common/ui/view/LongPressHandlingView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final interactionHandler$delegate:Lkotlin/Lazy;

.field public listener:Lcom/android/systemui/keyguard/ui/binder/DeviceEntryIconViewBinder$bind$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$1;->INSTANCE:Lcom/android/systemui/common/ui/view/LongPressHandlingView$1;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/common/ui/view/LongPressHandlingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2;-><init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->interactionHandler$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "long_press"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView;->interactionHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    sget-object p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Other;->INSTANCE:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Other;

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Cancel;->INSTANCE:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Cancel;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;

    invoke-static {p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewKt;->distanceMoved(Landroid/view/MotionEvent;)F

    move-result p1

    invoke-direct {v1, p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;-><init>(F)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;

    invoke-static {p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewKt;->distanceMoved(Landroid/view/MotionEvent;)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;-><init>(FJ)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;-><init>(II)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isLongPressHandlingEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    instance-of v1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;

    iget v1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;->x:I

    new-instance v2, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;

    iget p1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Down;->y:I

    invoke-direct {v2, p0, v1, p1}, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;-><init>(Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;II)V

    iget-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->longPressDuration:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->postDelayed:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;

    iget p1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Move;->distanceMoved:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_7
    :goto_2
    move v0, v2

    goto :goto_3

    :cond_8
    instance-of v0, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_9
    check-cast p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;

    iget v0, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;->distanceMoved:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->longPressDuration:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-wide v3, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Up;->gestureDuration:J

    cmp-long p1, v3, v0

    if-gez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isAttachedToWindow:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->onSingleTapDetected:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_b
    instance-of p1, p1, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$MotionEventModel$Cancel;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    goto :goto_2

    :goto_3
    move v2, v0

    :goto_4
    return v2
.end method
