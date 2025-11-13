.class public abstract Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;
.super Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

.field public final loggerTag:Ljava/lang/String;

.field public monitoringCurrentTouch:Z

.field public startTime:J

.field public startY:F

.field public final swipeDistanceThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;Ljava/lang/String;)V
    .locals 1

    const-class p2, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    iput-object p4, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050573

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->swipeDistanceThreshold:I

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 8

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->swipeDistanceThreshold:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    cmp-long v0, v0, v6

    if-gez v0, :cond_7

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetected$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetected$2;

    iget-object v4, v4, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v3, v1, v5, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput v0, v2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v4, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->onGestureDetected$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionEndedWithoutTriggering$2;

    iget-object v4, v4, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logGestureDetectionStarted$2;

    iget-object v4, v4, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    invoke-virtual {v4, v3, v5, v6, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput v0, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->startTime:J

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->monitoringCurrentTouch:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public final startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStarted$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStarted$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public abstract startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z
.end method

.method public final stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->logger:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStopped$2;->INSTANCE:Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger$logInputListeningStopped$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;->loggerTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
