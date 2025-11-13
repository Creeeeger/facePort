.class final Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Lkotlin/coroutines/Continuation;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;

    iget-object p0, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;-><init>(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    sget-object v1, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;->Companion:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;

    iget-object v3, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-static {v3}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->access$getResolver$p(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Companion;->areAnimationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-static {v1}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->access$getBackgroundHandler$p(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;

    iget-object v4, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-direct {v3, v4, p1, v1}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;-><init>(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-static {v1}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;->access$getResolver$p(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "animator_duration_scale"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$1;

    iget-object v4, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->this$0:Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;

    invoke-direct {v1, v4, v3}, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$1;-><init>(Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl;Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1$observer$1;)V

    iput v2, p0, Lcom/android/systemui/util/animation/data/repository/AnimationStatusRepositoryImpl$areAnimationsEnabled$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
