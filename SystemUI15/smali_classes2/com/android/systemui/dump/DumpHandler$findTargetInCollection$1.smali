.class final Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;
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

.field final synthetic $target:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$DumpableEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$LogBufferEntry;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/dump/DumpsysEntry$TableLogBufferEntry;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$dumpables:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$target:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$logBuffers:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$tableBuffers:Ljava/util/Collection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;

    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$dumpables:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$target:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$logBuffers:Ljava/util/Collection;

    iget-object v4, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$tableBuffers:Ljava/util/Collection;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    sget-object p1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    iget-object v5, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$dumpables:Ljava/util/Collection;

    iget-object v6, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$target:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lcom/android/systemui/dump/DumpHandler$Companion;->access$findBestTargetMatch(Lcom/android/systemui/dump/DumpHandler$Companion;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/dump/DumpsysEntry;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->label:I

    invoke-virtual {v1, p1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    iget-object v4, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$logBuffers:Ljava/util/Collection;

    iget-object v5, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$target:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/android/systemui/dump/DumpHandler$Companion;->access$findBestTargetMatch(Lcom/android/systemui/dump/DumpHandler$Companion;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/dump/DumpsysEntry;

    move-result-object p1

    if-eqz p1, :cond_5

    iput-object v1, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->label:I

    invoke-virtual {v1, p1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lcom/android/systemui/dump/DumpHandler;->Companion:Lcom/android/systemui/dump/DumpHandler$Companion;

    iget-object v3, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$tableBuffers:Ljava/util/Collection;

    iget-object v4, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->$target:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/android/systemui/dump/DumpHandler$Companion;->access$findBestTargetMatch(Lcom/android/systemui/dump/DumpHandler$Companion;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/dump/DumpsysEntry;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/dump/DumpHandler$findTargetInCollection$1;->label:I

    invoke-virtual {v1, p1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
