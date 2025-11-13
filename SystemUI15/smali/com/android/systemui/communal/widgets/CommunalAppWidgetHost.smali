.class public final Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _appWidgetIdToRemove:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final appWidgetIdToRemove:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final observers:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$InteractionHandler;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "CommunalAppWidgetHost"

    invoke-direct {p1, p6, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->logger:Lcom/android/systemui/log/core/Logger;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p2, p2, p3, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->_appWidgetIdToRemove:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->appWidgetIdToRemove:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->observers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final allocateAppWidgetId()I
    .locals 4

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$allocateAppWidgetId$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$allocateAppWidgetId$1$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return v0
.end method

.method public final deleteAppWidgetId(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$deleteAppWidgetId$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onAppWidgetRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$onAppWidgetRemoved$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    new-instance p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;

    invoke-direct {p0, p1}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final startListening()V
    .locals 3

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$startListening$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$startListening$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stopListening()V
    .locals 3

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$stopListening$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$stopListening$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
