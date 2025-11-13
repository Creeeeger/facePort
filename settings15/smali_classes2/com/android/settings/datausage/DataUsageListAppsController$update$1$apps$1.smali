.class final Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/android/settings/datausage/AppDataUsagePreference;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $carrierId:Ljava/lang/Integer;

.field final synthetic $endTime:J

.field final synthetic $startTime:J

.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageListAppsController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageListAppsController;Ljava/lang/Integer;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$carrierId:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$startTime:J

    iput-wide p5, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$endTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance p1, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$carrierId:Ljava/lang/Integer;

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$startTime:J

    iget-wide v5, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$endTime:J

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;-><init>(Lcom/android/settings/datausage/DataUsageListAppsController;Ljava/lang/Integer;JJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageListAppsController;->access$getRepository$p(Lcom/android/settings/datausage/DataUsageListAppsController;)Lcom/android/settings/datausage/lib/AppDataUsageRepository;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$carrierId:Ljava/lang/Integer;

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$startTime:J

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$endTime:J

    iget-object v5, p1, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->queryBuckets(JJ)Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->secureusage:J

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->getAppPercent(Ljava/lang/Integer;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;->$endTime:J

    new-instance p0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/AppItem;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v5, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageListAppsController;->access$getMContext$p$s-1996064701(Lcom/android/settings/datausage/DataUsageListAppsController;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageListAppsController;->access$getUidDetailProvider$p(Lcom/android/settings/datausage/DataUsageListAppsController;)Lcom/android/settingslib/net/UidDetailProvider;

    move-result-object v7

    invoke-direct {v5, v6, v4, v3, v7}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;)V

    new-instance v3, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1$1$1$1;-><init>(Lcom/android/settings/datausage/DataUsageListAppsController;Lcom/android/settingslib/AppItem;J)V

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const-string p0, "repository"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
