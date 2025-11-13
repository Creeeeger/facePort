.class public final Lcom/android/systemui/haptics/slider/SliderStateProducer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/haptics/slider/SliderEventProducer;


# instance fields
.field public final _currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderEvent;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->NOTHING:Lcom/android/systemui/haptics/slider/SliderEventType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/haptics/slider/SliderEvent;-><init>(Lcom/android/systemui/haptics/slider/SliderEventType;F)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateProducer;->_currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method


# virtual methods
.method public final onStartTracking(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/haptics/slider/SliderEventType;->STARTED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/haptics/slider/SliderEventType;->STARTED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateProducer;->_currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/haptics/slider/SliderEvent;

    new-instance v3, Lcom/android/systemui/haptics/slider/SliderEvent;

    iget v2, v2, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    invoke-direct {v3, p1, v2}, Lcom/android/systemui/haptics/slider/SliderEvent;-><init>(Lcom/android/systemui/haptics/slider/SliderEventType;F)V

    invoke-virtual {v0, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method

.method public final onStopTracking(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateProducer;->_currentEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/haptics/slider/SliderEvent;

    new-instance v3, Lcom/android/systemui/haptics/slider/SliderEvent;

    iget v2, v2, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    invoke-direct {v3, p1, v2}, Lcom/android/systemui/haptics/slider/SliderEvent;-><init>(Lcom/android/systemui/haptics/slider/SliderEventType;F)V

    invoke-virtual {v0, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method
