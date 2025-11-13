.class final Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;
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
.field final synthetic $appWidgetId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput p2, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->$appWidgetId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->$appWidgetId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object p1, p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->logger:Lcom/android/systemui/log/core/Logger;

    sget-object v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1$1;->INSTANCE:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1$1;

    iget v3, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->$appWidgetId:I

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v1, v7}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/systemui/log/core/LogMessage;->setInt1(I)V

    invoke-virtual {p1}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object p1, p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->_appWidgetIdToRemove:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget v1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->$appWidgetId:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v2, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;->label:I

    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
