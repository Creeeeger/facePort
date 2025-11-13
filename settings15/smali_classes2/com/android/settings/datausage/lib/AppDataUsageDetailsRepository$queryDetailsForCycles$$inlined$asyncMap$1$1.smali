.class public final Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;

    iget-object v0, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;

    invoke-direct {p1, v0, p2, p0}, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->$item:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/util/Range;

    iget-object p0, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1$1;->this$0:Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;

    sget-object p1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    const-string v0, "getLower(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    const-string v0, "getUpper(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->queryBuckets(JJ)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-object v4, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->withSdkSandboxUids:Ljava/util/List;

    iget v3, v3, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v6, p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->bytes:J

    add-long/2addr v4, v6

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget v6, v6, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->state:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v6, v2

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v2, p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->bytes:J

    add-long/2addr v6, v2

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    sub-long v8, v4, v6

    move-object v0, p0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;-><init>(Landroid/util/Range;JJJ)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
