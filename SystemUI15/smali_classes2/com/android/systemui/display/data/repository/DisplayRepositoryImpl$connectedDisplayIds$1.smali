.class final Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;
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
.field final synthetic $backgroundHandler:Landroid/os/Handler;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Landroid/os/Handler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;",
            "Landroid/os/Handler;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->$backgroundHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;

    iget-object v1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->$backgroundHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;-><init>(Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Landroid/os/Handler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->label:I

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    sget-object v3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->Companion:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "DisplayRepository#getInitialConnectedDisplays"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v2, v2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    const-string v4, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    sget-boolean v4, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "DisplayRepository"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInitialConnectedDisplays: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;

    iget-object v4, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    invoke-direct {v3, v2, v4, p1}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;-><init>(Ljava/util/Set;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->$backgroundHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x20

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    new-instance v2, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$1;

    iget-object v4, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$1;-><init>(Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1$callback$1;)V

    iput v0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$connectedDisplayIds$1;->label:I

    invoke-static {p1, v2, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_2
    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    throw p0
.end method
