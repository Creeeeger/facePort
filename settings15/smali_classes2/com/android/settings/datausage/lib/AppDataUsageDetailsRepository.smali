.class public final Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final cycles:Ljava/util/List;

.field public final networkCycleDataRepository:Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

.field public final networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

.field public final withSdkSandboxUids:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uids"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    new-instance v1, Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->cycles:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->networkCycleDataRepository:Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    iput-object v1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    move-object p1, p4

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->withSdkSandboxUids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final queryDetailsForCycles(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;

    iget v1, v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;-><init>(Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->cycles:Ljava/util/List;

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    new-instance v4, Landroid/util/Range;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->networkCycleDataRepository:Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;

    invoke-virtual {p1}, Lcom/android/settings/datausage/lib/NetworkCycleDataRepository;->getCycles()Ljava/util/List;

    move-result-object p1

    :cond_6
    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, p0}, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$$inlined$asyncMap$1;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;)V

    iput v3, v0, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository$queryDetailsForCycles$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    iget-wide v1, v1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->totalUsage:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    return-object p0
.end method
