.class final Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WepNetworksPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/channels/ProducerScope;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;

    iget-object p0, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;-><init>(Lcom/android/settings/wifi/WepNetworksPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->label:I

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

    iget-object p1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->this$0:Lcom/android/settings/wifi/WepNetworksPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WepNetworksPreferenceController;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v3}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1$1;

    invoke-direct {v4, p1}, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->queryWepAllowed(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    sget-object v1, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1$2;->INSTANCE:Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1$2;

    iput v2, p0, Lcom/android/settings/wifi/WepNetworksPreferenceController$wepAllowedFlow$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
