.class final Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $dumpables:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $logBuffers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tableBuffers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$dumpables:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$logBuffers:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$tableBuffers:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$targets:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;

    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$dumpables:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$logBuffers:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$tableBuffers:Ljava/util/Collection;

    iget-object v4, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$targets:Ljava/util/List;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/SequenceScope;

    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$dumpables:Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v5, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$targets:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;

    sget-object v9, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    move-object v10, v5

    check-cast v10, Ljava/util/Collection;

    invoke-static {v9, v8, v10}, Lcom/android/systemui/dump/DumpHandler$Companion;->access$matchesAny(Lcom/android/systemui/dump/DumpHandler$Companion;Lcom/android/systemui/dump/DumpsysEntry;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->label:I

    invoke-virtual {p1, v6, p0}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, p1

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$logBuffers:Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$targets:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;

    sget-object v8, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    move-object v9, v4

    check-cast v9, Ljava/util/Collection;

    invoke-static {v8, v7, v9}, Lcom/android/systemui/dump/DumpHandler$Companion;->access$matchesAny(Lcom/android/systemui/dump/DumpHandler$Companion;Lcom/android/systemui/dump/DumpsysEntry;Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iput-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->label:I

    invoke-virtual {v1, v5, p0}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$tableBuffers:Ljava/util/Collection;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->$targets:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;

    sget-object v7, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-static {v7, v6, v8}, Lcom/android/systemui/dump/DumpHandler$Companion;->access$matchesAny(Lcom/android/systemui/dump/DumpHandler$Companion;Lcom/android/systemui/dump/DumpsysEntry;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/dump/DumpHandler$findAllMatchesInCollection$1;->label:I

    invoke-virtual {v1, v4, p0}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    return-object v0

    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
