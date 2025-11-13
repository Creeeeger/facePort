.class final Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;"
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
.field final synthetic $sendInitial:Z

.field final synthetic $this_contentChangeFlow:Landroid/content/Context;

.field final synthetic $uri:Landroid/net/Uri;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$this_contentChangeFlow:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$sendInitial:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$this_contentChangeFlow:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$uri:Landroid/net/Uri;

    iget-boolean p0, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$sendInitial:Z

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;-><init>(Landroid/content/Context;Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1$contentObserver$1;

    invoke-direct {v1, p1}, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1$contentObserver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$this_contentChangeFlow:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$uri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v4, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$sendInitial:Z

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v4, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1$1;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->$this_contentChangeFlow:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1$1;-><init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1$contentObserver$1;)V

    iput v3, p0, Lcom/android/settingslib/spaprivileged/database/ContentChangeFlowKt$contentChangeFlow$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object v2
.end method
