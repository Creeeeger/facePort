.class final Lcom/android/settings/datausage/DataUsageListAppsController$update$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageListAppsController;->update(Ljava/lang/Integer;JJ)Lkotlinx/coroutines/Job;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$carrierId:Ljava/lang/Integer;

    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$startTime:J

    iput-wide p5, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$endTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance p1, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$carrierId:Ljava/lang/Integer;

    iget-wide v3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$startTime:J

    iget-wide v5, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$endTime:J

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;-><init>(Lcom/android/settings/datausage/DataUsageListAppsController;Ljava/lang/Integer;JJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->label:I

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

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v1, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$carrierId:Ljava/lang/Integer;

    iget-wide v6, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$startTime:J

    iget-wide v8, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->$endTime:J

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/datausage/DataUsageListAppsController$update$1$apps$1;-><init>(Lcom/android/settings/datausage/DataUsageListAppsController;Ljava/lang/Integer;JJLkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageListAppsController;->access$getPreference$p(Lcom/android/settings/datausage/DataUsageListAppsController;)Landroidx/preference/PreferenceGroup;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "preference"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/AppDataUsagePreference;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageListAppsController$update$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageListAppsController;->access$getPreference$p(Lcom/android/settings/datausage/DataUsageListAppsController;)Landroidx/preference/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
