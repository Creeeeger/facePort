.class final Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isDragging:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$isDragging:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$isDragging:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object p1, p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$isDragging:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/ControllersKt$MoSlider$2$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
