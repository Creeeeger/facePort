.class public final Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field public final appWidgetId:I

.field public final context:Landroid/content/Context;

.field public final size:Ljava/lang/String;

.field public final viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->context:Landroid/content/Context;

    iput p2, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->appWidgetId:I

    iput p3, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->viewId:I

    iput-object p4, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->size:Ljava/lang/String;

    return-void
.end method

.method public static final access$startSessionIfNeededAndWaitUntilReady(Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;

    iget v1, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;

    invoke-direct {v0, p0, p1}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;-><init>(Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    if-eq v2, p0, :cond_3

    const/4 p0, 0x2

    if-eq v2, p0, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/Job;

    goto :goto_2

    :cond_3
    iget-object p0, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlinx/coroutines/Job;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget v2, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->appWidgetId:I

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.glance.appwidget.GlanceAppWidgetReceiver"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    throw v4

    :cond_6
    :goto_1
    sget-object p1, Landroidx/glance/appwidget/UnmanagedSessionReceiver;->Companion:Landroidx/glance/appwidget/UnmanagedSessionReceiver$Companion;

    iget p0, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->appWidgetId:I

    invoke-static {p0}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$Companion;->getSession(I)V

    move-object p1, v4

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    iput-object v4, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object v1, v3

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->items()Landroidx/glance/appwidget/RemoteCollectionItems;

    move-result-object p0

    iget-object p0, p0, Landroidx/glance/appwidget/RemoteCollectionItems;->ids:[J

    array-length p0, p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->items()Landroidx/glance/appwidget/RemoteCollectionItems;

    move-result-object p0

    iget-object p0, p0, Landroidx/glance/appwidget/RemoteCollectionItems;->ids:[J

    aget-wide p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public final bridge synthetic getLoadingView()Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->items()Landroidx/glance/appwidget/RemoteCollectionItems;

    move-result-object v0

    iget-object v0, v0, Landroidx/glance/appwidget/RemoteCollectionItems;->views:[Landroid/widget/RemoteViews;

    aget-object p0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p0, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0d036d

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    invoke-virtual {p0}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->items()Landroidx/glance/appwidget/RemoteCollectionItems;

    move-result-object p0

    iget p0, p0, Landroidx/glance/appwidget/RemoteCollectionItems;->_viewTypeCount:I

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->items()Landroidx/glance/appwidget/RemoteCollectionItems;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/glance/appwidget/RemoteCollectionItems;->hasStableIds:Z

    return p0
.end method

.method public final items()Landroidx/glance/appwidget/RemoteCollectionItems;
    .locals 5

    sget-object v0, Landroidx/glance/appwidget/GlanceRemoteViewsService;->InMemoryStore:Landroidx/glance/appwidget/RemoteCollectionItemsInMemoryStore;

    iget v0, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->appWidgetId:I

    iget v1, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->viewId:I

    iget-object p0, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->size:Ljava/lang/String;

    sget-object v2, Landroidx/glance/appwidget/GlanceRemoteViewsService;->InMemoryStore:Landroidx/glance/appwidget/RemoteCollectionItemsInMemoryStore;

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Landroidx/glance/appwidget/RemoteCollectionItemsInMemoryStore;->items:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/RemoteCollectionItems;

    if-nez p0, :cond_0

    sget-object p0, Landroidx/glance/appwidget/RemoteCollectionItems;->Empty:Landroidx/glance/appwidget/RemoteCollectionItems;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onCreate()V
    .locals 0

    return-void
.end method

.method public final onDataSetChanged()V
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$loadData$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory$loadData$1;-><init>(Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    sget-object v0, Landroidx/glance/appwidget/GlanceRemoteViewsService;->InMemoryStore:Landroidx/glance/appwidget/RemoteCollectionItemsInMemoryStore;

    iget v0, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->appWidgetId:I

    iget v1, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->viewId:I

    iget-object p0, p0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->size:Ljava/lang/String;

    sget-object v2, Landroidx/glance/appwidget/GlanceRemoteViewsService;->InMemoryStore:Landroidx/glance/appwidget/RemoteCollectionItemsInMemoryStore;

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Landroidx/glance/appwidget/RemoteCollectionItemsInMemoryStore;->items:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method
