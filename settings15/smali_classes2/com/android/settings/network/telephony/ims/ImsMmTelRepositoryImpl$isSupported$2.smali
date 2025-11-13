.class final Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "kotlin.jvm.PlatformType",
        "<anonymous>",
        "(Lkotlinx/coroutines/CoroutineScope;)Z"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $capability:I

.field final synthetic $transportType:I

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;


# direct methods
.method public constructor <init>(IILcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$capability:I

    iput p2, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$transportType:I

    iput-object p3, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;

    iget v0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$capability:I

    iget v1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$transportType:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;-><init>(IILcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->label:I

    const-string v2, "] "

    const-string v3, "["

    const-string v4, "ImsMmTelRepository"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iget-object v0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$capability:I

    iget v1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$transportType:I

    const-string v6, "isSupported(capability="

    const-string v7, ",transportType="

    const-string v8, ")"

    invoke-static {v6, v7, p1, v1, v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    iget v6, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$capability:I

    iget v7, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->$transportType:I

    iput-object p1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->L$1:Ljava/lang/Object;

    iput v6, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->I$0:I

    iput v7, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->I$1:I

    iput v5, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->label:I

    new-instance v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v9

    invoke-direct {v8, v5, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    :try_start_0
    iget-object v5, v1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->imsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    sget-object v9, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v9}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2$1$1;

    invoke-direct {v10, v8}, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V

    invoke-virtual {v5, v6, v7, v9, v10}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    iget v1, v1, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl$isSupported$2;->this$0:Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    iget p0, p0, Lcom/android/settings/network/telephony/ims/ImsMmTelRepositoryImpl;->subId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
