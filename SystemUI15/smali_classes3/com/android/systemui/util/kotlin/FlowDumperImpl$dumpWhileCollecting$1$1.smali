.class final Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field final synthetic $$this$flow:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector;"
        }
    .end annotation
.end field

.field final synthetic $mapKey:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/kotlin/FlowDumperImpl;Lkotlin/Pair;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/kotlin/FlowDumperImpl;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->$mapKey:Lkotlin/Pair;

    iput-object p3, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    invoke-static {v0}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$getFlowCollectionMap$p(Lcom/android/systemui/util/kotlin/FlowDumperImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->$mapKey:Lkotlin/Pair;

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->this$0:Lcom/android/systemui/util/kotlin/FlowDumperImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->access$updateRegistration(Lcom/android/systemui/util/kotlin/FlowDumperImpl;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/FlowDumperImpl$dumpWhileCollecting$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
