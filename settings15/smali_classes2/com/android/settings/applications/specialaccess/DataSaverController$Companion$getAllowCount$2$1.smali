.class final Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
.field final synthetic $appListRepository:Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;

.field final synthetic $context:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->$appListRepository:Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->$appListRepository:Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;-><init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->L$0:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1$appsDeferred$1;

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->$appListRepository:Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1$appsDeferred$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settings/applications/specialaccess/DataSaverController$Companion$getAllowCount$2$1;->label:I

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Count overflow has happened."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method
