.class final Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/searcle/SearcleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/searcle/SearcleManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;

    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v0, p1, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/searcle/SearcleManager;->access$getOmniEntryPoint(Lcom/android/systemui/searcle/SearcleManager;)I

    move-result p1

    sget-object v1, Lcom/android/systemui/searcle/OmniAPI;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invokeOmni omniEntryPoint = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OmniAPI"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Landroid/app/contextualsearch/ContextualSearchManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/contextualsearch/ContextualSearchManager;

    if-nez v0, :cond_0

    const-string p1, "CSS system service is null"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SearcleManager"

    const-string v0, "invokeSearcle invokeOmni return false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/contextualsearch/ContextualSearchManager;->startContextualSearch(I)V

    const-string p1, "invokeOmni"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    iget-object v0, v0, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    const-string v1, "749006"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;->this$0:Lcom/android/systemui/searcle/SearcleManager;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
