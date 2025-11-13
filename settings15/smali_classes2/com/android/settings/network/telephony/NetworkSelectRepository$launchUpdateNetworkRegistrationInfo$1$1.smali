.class final Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;
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
.field final synthetic $action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/NetworkSelectRepository;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/android/settings/network/telephony/NetworkSelectRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->$action:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->$action:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectRepository;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/settings/network/telephony/NetworkSelectRepository;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->label:I

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

    new-instance v1, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1$1;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->this$0:Lcom/android/settings/network/telephony/NetworkSelectRepository;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectRepository;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkSelectRepository$NetworkRegistrationAndForbiddenInfo;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectRepository$launchUpdateNetworkRegistrationInfo$1$1;->$action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
