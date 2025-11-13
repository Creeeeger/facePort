.class public final Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow;"
    }
.end annotation


# instance fields
.field final synthetic $predicate$inlined$1:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1;->$predicate$inlined$1:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1$2;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1;->$predicate$inlined$1:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/util/kotlin/Utils$Companion$sampleFilter$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
