.class public final Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;

    iget v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

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

    check-cast p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;

    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0713b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->left:I

    iget v7, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->top:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iget v2, v2, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel;->progressBarThickness:I

    add-int/2addr v2, v4

    sget-object v6, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_0:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-eq p2, v6, :cond_4

    sget-object v7, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_180:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne p2, v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v3

    :goto_2
    iget-boolean v8, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->isSensorVerticalInDefaultOrientation:Z

    if-ne v8, v7, :cond_7

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget p1, p1, Lcom/android/systemui/biometrics/domain/model/SideFpsSensorLocation;->length:I

    add-int/2addr v6, p1

    iput v6, v5, Landroid/graphics/Point;->y:I

    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_180:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-eq p2, p1, :cond_6

    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_90:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne p2, p1, :cond_5

    goto :goto_3

    :cond_5
    iget p1, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v2

    iput p1, v5, Landroid/graphics/Point;->x:I

    goto :goto_5

    :cond_6
    :goto_3
    iget p1, v5, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v4

    iput p1, v5, Landroid/graphics/Point;->x:I

    goto :goto_5

    :cond_7
    if-eq p2, v6, :cond_9

    sget-object p1, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_90:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    if-ne p2, p1, :cond_8

    goto :goto_4

    :cond_8
    iget p1, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v2

    iput p1, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_9
    :goto_4
    iget p1, v5, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v4

    iput p1, v5, Landroid/graphics/Point;->y:I

    :goto_5
    iput v3, v0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/SideFpsProgressBarViewModel$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    return-object v1

    :cond_a
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
