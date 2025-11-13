.class final Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p1, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;

    iget-object p0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;-><init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;->this$0:Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;

    iget-object p1, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2$1;-><init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
