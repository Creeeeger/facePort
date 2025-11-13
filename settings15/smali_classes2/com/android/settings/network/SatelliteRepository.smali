.class public final Lcom/android/settings/network/SatelliteRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final isSessionStarted:Ljava/lang/Boolean;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SatelliteRepository;->context:Landroid/content/Context;

    return-void
.end method

.method public static getIsSessionStartedFlow$default(Lcom/android/settings/network/SatelliteRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 4

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "defaultDispatcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/SatelliteRepository;->context:Landroid/content/Context;

    const-class v2, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/satellite/SatelliteManager;

    if-nez v1, :cond_0

    const-string p0, "SatelliteRepository"

    const-string v0, "SatelliteManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/network/SatelliteRepository$getIsSessionStartedFlow$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p0, v3}, Lcom/android/settings/network/SatelliteRepository$getIsSessionStartedFlow$1;-><init>(Landroid/telephony/satellite/SatelliteManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/settings/network/SatelliteRepository;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final requestIsSessionStarted(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/network/SatelliteRepository;->isSessionStarted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/SatelliteRepository;->context:Landroid/content/Context;

    const-class v1, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SatelliteManager;

    if-nez v0, :cond_1

    const-string p0, "SatelliteRepository"

    const-string p1, "SatelliteManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/settings/network/SatelliteRepository$requestIsSessionStarted$2;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Lcom/android/settings/network/SatelliteRepository;)V

    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    return-object p0
.end method
