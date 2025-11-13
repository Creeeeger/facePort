.class public final Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $windowManager$inlined:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroid/view/WindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2;->$windowManager$inlined:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;

    iget v1, v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/SensorLocationInternal;

    iget v2, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2;->$windowManager$inlined:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_0:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-eq p2, v6, :cond_5

    sget-object v6, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_180:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne p2, v6, :cond_4

    goto :goto_2

    :cond_4
    move v6, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v6, v3

    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    :goto_4
    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_5
    iget v6, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    const/4 v8, 0x2

    mul-int/2addr v6, v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v2, :cond_c

    sget-object v11, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v11, p2

    if-eq p2, v3, :cond_b

    if-eq p2, v8, :cond_a

    if-eq p2, v10, :cond_9

    if-ne p2, v9, :cond_8

    new-instance p2, Lkotlin/Pair;

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    sub-int/2addr v5, p1

    sub-int/2addr v5, v6

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, p1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_9
    new-instance p2, Lkotlin/Pair;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    sub-int/2addr v5, p1

    sub-int/2addr v5, v6

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, v7, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_a
    new-instance p2, Lkotlin/Pair;

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_b
    new-instance p2, Lkotlin/Pair;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    sget-object v11, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v11, p2

    if-eq p2, v3, :cond_10

    if-eq p2, v8, :cond_f

    if-eq p2, v10, :cond_e

    if-ne p2, v9, :cond_d

    new-instance p2, Lkotlin/Pair;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    new-instance p2, Lkotlin/Pair;

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    sub-int/2addr v7, p1

    sub-int/2addr v7, v6

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v7}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, p1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    new-instance p2, Lkotlin/Pair;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    sub-int/2addr v7, p1

    sub-int/2addr v7, v6

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    new-instance p2, Lkotlin/Pair;

    iget p1, p1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    new-instance v4, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;

    invoke-direct {v4, p1, p2, v6, v2}, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;-><init>(IIIZ)V

    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/SideFpsSensorInteractor$special$$inlined$map$5$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v4, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_11

    return-object v1

    :cond_11
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
