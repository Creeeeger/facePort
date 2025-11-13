.class final Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsageCycleController;->updateAdapter(JJZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;",
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
.field final synthetic $endTime:J

.field final synthetic $startTime:J

.field label:I

.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/AppDataUsageCycleController;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    iput-wide p2, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->$startTime:J

    iput-wide p4, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->$endTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    iget-wide v2, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->$startTime:J

    iget-wide v4, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->$endTime:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;JJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->this$0:Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->access$getRepository$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v4, Landroid/util/Range;

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->$startTime:J

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v5, v6}, Ljava/lang/Long;-><init>(J)V

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->$endTime:J

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v4, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput v2, p0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;->label:I

    check-cast p1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;

    iget-object p0, p1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->withSdkSandboxUids:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    sget-object v6, Lcom/android/settings/datausage/lib/AppDataUsageDetailsRepository;->TAG:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    :try_start_0
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->queryDetailsForUidTagState(Landroid/util/Range;II)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v7, 0x2

    invoke-virtual {p0, v4, v5, v7}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;->queryDetailsForUidTagState(Landroid/util/Range;II)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v7, "queryNetworkStatsData"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    move-wide v9, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v7, p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->bytes:J

    add-long/2addr v9, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v7, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget-wide v1, p1, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->bytes:J

    add-long/2addr v7, v1

    goto :goto_2

    :cond_4
    const-string p0, "backgroundUsage = "

    const-string p1, "; foregroundUsage = "

    invoke-static {v9, v10, p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    add-long v5, v9, v7

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;-><init>(Landroid/util/Range;JJJ)V

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    return-object p1

    :cond_6
    const-string p0, "repository"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
