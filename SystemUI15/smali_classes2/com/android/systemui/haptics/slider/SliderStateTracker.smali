.class public final Lcom/android/systemui/haptics/slider/SliderStateTracker;
.super Lcom/android/systemui/haptics/slider/SliderTracker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final config:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

.field public latestProgress:F

.field public timerJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/systemui/haptics/slider/SliderTracker;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->config:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;-><init>(JFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/haptics/slider/SliderStateTracker;-><init>(Lcom/android/systemui/haptics/slider/SliderStateListener;Lcom/android/systemui/haptics/slider/SliderEventProducer;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;)V

    return-void
.end method


# virtual methods
.method public final bookendReached(F)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->config:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    iget v0, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->lowerBookendThreshold:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final executeOnBookend()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->latestProgress:F

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->config:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    iget v1, v1, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->upperBookendThreshold:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->sliderListener:Lcom/android/systemui/haptics/slider/SliderStateListener;

    if-ltz v0, :cond_1

    check-cast p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    iget-boolean v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->hasVibratedAtUpperBookend:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->getTrackedVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->scaleOnEdgeCollision(F)F

    move-result v0

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->VIBRATION_ATTRIBUTES_PIPELINING:Landroid/os/VibrationAttributes;

    iget-object v3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->hasVibratedAtUpperBookend:Z

    goto :goto_2

    :cond_1
    check-cast p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    iget-boolean v0, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->hasVibratedAtLowerBookend:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->getTrackedVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->scaleOnEdgeCollision(F)F

    move-result v0

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->VIBRATION_ATTRIBUTES_PIPELINING:Landroid/os/VibrationAttributes;

    iget-object v3, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->hasVibratedAtLowerBookend:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final executeOnState(Lcom/android/systemui/haptics/slider/SliderState;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderStateTracker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->sliderListener:Lcom/android/systemui/haptics/slider/SliderStateListener;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->executeOnBookend()V

    iget-object p1, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object p1, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :pswitch_2
    iget p0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->latestProgress:F

    check-cast v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    invoke-virtual {v1, p0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->onProgress(F)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_5
    check-cast v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->dragTextureLastProgress:F

    iget-object p1, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object p1, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->executeOnBookend()V

    goto :goto_0

    :pswitch_7
    iget p0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->latestProgress:F

    check-cast v1, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;

    invoke-virtual {v1, p0}, Lcom/android/systemui/haptics/slider/SliderHapticFeedbackProvider;->onProgress(F)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final iterateState(Lcom/android/systemui/haptics/slider/SliderEvent;)Lkotlin/Unit;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderStateTracker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    iget v4, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->bookendReached(F)Z

    move-result v4

    sget-object v7, Lcom/android/systemui/haptics/slider/SliderStateTracker$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v7, v0

    if-eq v0, v2, :cond_3

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVES_CONTINUOUSLY:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVES_CONTINUOUSLY:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/systemui/haptics/slider/SliderStateTracker$launchTimer$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/haptics/slider/SliderStateTracker$launchTimer$1;-><init>(Lcom/android/systemui/haptics/slider/SliderStateTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->WAIT:Lcom/android/systemui/haptics/slider/SliderState;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v4, Lcom/android/systemui/haptics/slider/SliderStateTracker$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVED_ONCE:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVES_CONTINUOUSLY:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/android/systemui/haptics/slider/SliderStateTracker$launchTimer$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/haptics/slider/SliderStateTracker$launchTimer$1;-><init>(Lcom/android/systemui/haptics/slider/SliderStateTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->WAIT:Lcom/android/systemui/haptics/slider/SliderState;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderStateTracker$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v7, :cond_8

    if-eq v0, v4, :cond_7

    goto/16 :goto_5

    :cond_7
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_DRAGGING:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_4
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderStateTracker$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v7, :cond_a

    if-eq v0, v4, :cond_9

    goto/16 :goto_5

    :cond_9
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :cond_a
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_DRAGGING:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_5
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_6
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_b

    iget v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->bookendReached(F)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_DRAGGING:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :cond_b
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_7
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :cond_c
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_17

    iget v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->bookendReached(F)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_8
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_RELEASED_FROM_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :cond_d
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_DRAGGING:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto/16 :goto_5

    :pswitch_9
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    iget-object v1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    sget-object v2, Lcom/android/systemui/haptics/slider/SliderState;->WAIT:Lcom/android/systemui/haptics/slider/SliderState;

    if-eq v1, v2, :cond_e

    goto/16 :goto_5

    :cond_e
    iget v1, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->latestProgress:F

    iget v4, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->config:Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;

    iget v5, v5, Lcom/android/systemui/haptics/slider/SeekableSliderTrackerConfig;->jumpThreshold:F

    const v6, 0x3727c5ac    # 1.0E-5f

    sub-float/2addr v5, v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v7, 0x0

    :goto_2
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->PROGRESS_CHANGE_BY_USER:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_12

    invoke-virtual {p0, v4}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->bookendReached(F)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->JUMP_BOOKEND_SELECTED:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto :goto_3

    :cond_10
    if-eqz v7, :cond_11

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->JUMP_TRACK_LOCATION_SELECTED:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->DRAG_HANDLE_ACQUIRED_BY_TOUCH:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto :goto_3

    :cond_12
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->STOPPED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_13

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->IDLE:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    :cond_13
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    if-eq v0, v2, :cond_17

    iget-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_14

    invoke-interface {v0, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_14
    iput-object v3, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    goto :goto_5

    :pswitch_a
    iget-object v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->type:Lcom/android/systemui/haptics/slider/SliderEventType;

    sget-object v4, Lcom/android/systemui/haptics/slider/SliderEventType;->STARTED_TRACKING_TOUCH:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v4, :cond_15

    new-instance v0, Lcom/android/systemui/haptics/slider/SliderStateTracker$launchTimer$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/haptics/slider/SliderStateTracker$launchTimer$1;-><init>(Lcom/android/systemui/haptics/slider/SliderStateTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->timerJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->WAIT:Lcom/android/systemui/haptics/slider/SliderState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    goto :goto_5

    :cond_15
    sget-object v1, Lcom/android/systemui/haptics/slider/SliderEventType;->STARTED_TRACKING_PROGRAM:Lcom/android/systemui/haptics/slider/SliderEventType;

    if-ne v0, v1, :cond_17

    iget v0, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->bookendReached(F)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_REACHED_BOOKEND:Lcom/android/systemui/haptics/slider/SliderState;

    goto :goto_4

    :cond_16
    sget-object v0, Lcom/android/systemui/haptics/slider/SliderState;->ARROW_HANDLE_MOVED_ONCE:Lcom/android/systemui/haptics/slider/SliderState;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/haptics/slider/SliderStateTracker;->setState(Lcom/android/systemui/haptics/slider/SliderState;)V

    :cond_17
    :goto_5
    iget p1, p1, Lcom/android/systemui/haptics/slider/SliderEvent;->currentProgress:F

    iput p1, p0, Lcom/android/systemui/haptics/slider/SliderStateTracker;->latestProgress:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setState(Lcom/android/systemui/haptics/slider/SliderState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/haptics/slider/SliderTracker;->currentState:Lcom/android/systemui/haptics/slider/SliderState;

    return-void
.end method
