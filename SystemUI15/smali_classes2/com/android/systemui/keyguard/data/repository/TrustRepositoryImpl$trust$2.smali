.class final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;
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
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;-><init>(Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->L$0:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/systemui/keyguard/shared/model/TrustModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->latestTrustModelForUser:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TrustModel;

    iget v2, v1, Lcom/android/systemui/keyguard/shared/model/TrustModel;->userId:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/logging/TrustRepositoryLogger;->trustModelEmitted(Lcom/android/systemui/keyguard/shared/model/TrustModel;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->activeUnlockRunningForUser:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;

    iget v2, v1, Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;->userId:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/logging/TrustRepositoryLogger;->activeUnlockModelEmitted(Lcom/android/systemui/keyguard/shared/model/ActiveUnlockModel;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->trustManagedForUser:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;

    iget v2, v1, Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;->userId:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$trust$2;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;->logger:Lcom/android/keyguard/logging/TrustRepositoryLogger;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/logging/TrustRepositoryLogger;->trustManagedModelEmitted(Lcom/android/systemui/keyguard/shared/model/TrustManagedModel;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
