.class final Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $plugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->$plugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->$plugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;-><init>(Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->label:I

    const-string v2, "Stopped tracking slider state"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v4, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->$plugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    iget-object v5, v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTracker:Lcom/android/systemui/haptics/slider/SliderStateTracker;

    if-eqz v5, :cond_4

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/systemui/haptics/slider/SliderTracker;->job:Lkotlinx/coroutines/Job;

    if-eqz v6, :cond_2

    invoke-static {v2, v6}, Lkotlinx/coroutines/JobKt;->cancel$default(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    :cond_2
    iput-object v3, v5, Lcom/android/systemui/haptics/slider/SliderTracker;->job:Lkotlinx/coroutines/Job;

    iget-object v6, v5, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz v6, :cond_3

    invoke-interface {v6, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    iput-object v3, v5, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object v6, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    iput-object v6, v5, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    new-instance v5, Lcom/android/systemui/haptics/slider/SliderStateTracker;

    iget-object v6, v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderHapticFeedbackProvider:Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    iget-object v7, v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderEventProducer:Lcom/android/systemui/haptics/slider/SliderStateProducer;

    iget-object v8, v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTrackerConfig:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    invoke-direct {v5, v6, v7, p1, v8}, Lcom/android/systemui/haptics/slider/SliderStateTracker;-><init>(Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;)V

    iput-object v5, v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTracker:Lcom/android/systemui/haptics/slider/SliderStateTracker;

    iput-object p1, v1, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->pluginScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;

    invoke-direct {p1, v5, v3}, Lcom/android/systemui/haptics/slider/SliderTracker$startTracking$1;-><init>(Lcom/android/systemui/haptics/slider/SliderTracker;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object v6, v5, Lcom/android/systemui/haptics/slider/SliderTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v6, v3, v3, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, v5, Lcom/android/systemui/haptics/slider/SliderTracker;->job:Lkotlinx/coroutines/Job;

    :try_start_1
    iput v4, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->label:I

    invoke-static {p0}, Lkotlinx/coroutines/DelayKt;->awaitCancellation(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/haptics/slider/HapticSliderViewBinder$bind$1;->$plugin:Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SeekbarHapticPlugin;->sliderTracker:Lcom/android/systemui/haptics/slider/SliderStateTracker;

    if-eqz p0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_6

    invoke-static {v2, v0}, Lkotlinx/coroutines/JobKt;->cancel$default(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    :cond_6
    iput-object v3, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->job:Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_7

    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    iput-object v3, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_8
    throw p1
.end method
