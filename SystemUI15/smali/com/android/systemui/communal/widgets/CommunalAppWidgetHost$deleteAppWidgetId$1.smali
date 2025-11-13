.class final Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;
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

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput p2, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->$appWidgetId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->$appWidgetId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iget-object v0, p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->observers:Ljava/util/Set;

    iget p0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;->$appWidgetId:I

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->observers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$Observer;

    check-cast v1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iget-object v2, v1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v2, p0}, Landroid/appwidget/AppWidgetHost;->removeListener(I)V

    iget-object v1, v1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->_appWidgetProviders:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
