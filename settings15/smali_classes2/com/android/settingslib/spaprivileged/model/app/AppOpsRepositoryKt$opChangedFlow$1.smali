.class final Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $op:I

.field final synthetic $this_opChangedFlow:Landroid/app/AppOpsManager;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager;ILandroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$this_opChangedFlow:Landroid/app/AppOpsManager;

    iput p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$op:I

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$this_opChangedFlow:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$op:I

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;-><init>(Landroid/app/AppOpsManager;ILandroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->label:I

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

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1$listener$1;

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v4, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1$listener$1;-><init>(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$this_opChangedFlow:Landroid/app/AppOpsManager;

    iget v6, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$op:I

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1$1;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->$this_opChangedFlow:Landroid/app/AppOpsManager;

    invoke-direct {v4, v5, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1$1;-><init>(Landroid/app/AppOpsManager;Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1$listener$1;)V

    iput v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method
