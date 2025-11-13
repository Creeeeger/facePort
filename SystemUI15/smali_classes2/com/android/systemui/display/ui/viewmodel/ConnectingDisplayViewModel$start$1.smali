.class final Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;
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
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->this$0:Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$toInteractorPendingDisplay$1;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;

    iget-object p0, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->this$0:Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;-><init>(Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$toInteractorPendingDisplay$1;

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->this$0:Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_1

    :cond_2
    iput v2, p0, Lcom/android/systemui/display/ui/viewmodel/ConnectingDisplayViewModel$start$1;->label:I

    iget-object p0, p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$toInteractorPendingDisplay$1;->$this_toInteractorPendingDisplay:Lcom/android/systemui/display/data/repository/DisplayRepository$PendingDisplay;

    check-cast p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$pendingDisplay$1$1;

    const-string p1, "Enabling display with id="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DisplayRepository#enable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$pendingDisplay$1$1;->$id:I

    const-string v3, ")"

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$pendingDisplay$1$1;->this$0:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    sget-object v1, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->Companion:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DisplayRepository"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->enableConnectedDisplay(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_5
    const-string p1, "DisplayRepository#ignore("

    invoke-static {v2, p1, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_6
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->_ignoredDisplayIds:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p1, v3}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_9
    throw p0

    :goto_2
    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_a
    throw p0
.end method
