.class final Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;
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

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;-><init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    invoke-direct {v1, v3, p1}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;-><init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStatusBarControlModel:Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v5, v5, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v5, :cond_2

    iget-boolean v5, v5, Lcom/android/systemui/knox/CustomSdkMonitor;->mStatusBarIconsState:Z

    if-eqz v5, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isStatusBarHidden()Z

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x3c

    invoke-static/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;->copy$default(Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;ZZLjava/lang/String;IIII)Lcom/android/systemui/statusbar/phone/knox/data/model/KnoxStatusBarControlModel;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$1;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->this$0:Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;

    invoke-direct {v3, v4, v1}, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$1;-><init>(Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl;Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1$callback$1;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/knox/data/repository/KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
