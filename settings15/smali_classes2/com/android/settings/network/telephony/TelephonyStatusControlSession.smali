.class public final Lcom/android/settings/network/telephony/TelephonyStatusControlSession;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final controllerSet:Ljava/util/Set;

.field public final controllers:Ljava/util/Collection;

.field public final job:Lkotlinx/coroutines/StandaloneCoroutine;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroidx/lifecycle/Lifecycle;)V
    .locals 3

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->controllers:Ljava/util/Collection;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->controllerSet:Ljava/util/Set;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$1;-><init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public static final access$setupAvailabilityStatus(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Lcom/android/settingslib/core/AbstractPreferenceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;

    iget v1, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;-><init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->I$0:I

    iget-object p1, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    iget-object v0, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p2, p0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    instance-of p2, p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result p2

    iput-object p0, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->I$0:I

    iput v3, v0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession$setupAvailabilityStatus$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->controllerSet:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast p1, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    invoke-interface {p1, p2}, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;->setAvailabilityStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "TelephonyStatusControlSS"

    const-string p2, "Setup availability status failed!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    :cond_4
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->controllerSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;

    invoke-interface {v0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityHandler;->unsetAvailabilityStatus()V

    goto :goto_0

    :cond_1
    return-void
.end method
