.class final Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;
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

.field final synthetic this$0:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/CommunalWidgetHost;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/widgets/CommunalWidgetHost;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalWidgetHost;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iget-object v0, v0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget v5, v0, v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;

    new-instance v7, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$addListener$1;

    invoke-direct {v7, v1}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$addListener$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v6, v5, v7}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$CommunalAppWidgetHostListener;-><init>(ILkotlin/jvm/functions/Function2;)V

    iget-object v7, v1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v7, v5, v6}, Landroid/appwidget/AppWidgetHost;->setListener(ILandroid/appwidget/AppWidgetHost$AppWidgetHostListener;)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    iget-object v7, v1, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetManager:Ljava/util/Optional;

    invoke-virtual {v7, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetManager;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    :cond_0
    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;->this$0:Lcom/android/systemui/communal/widgets/CommunalWidgetHost;

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->_appWidgetProviders:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
