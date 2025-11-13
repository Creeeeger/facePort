.class final Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $location:I

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaHost;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;->$location:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaHost$init$3;->$location:I

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaHost;->state:Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "MediaHostStatesManager#updateHostState"

    invoke-static {v3}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/controls/ui/view/MediaHost$MediaHostStateHolder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/view/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->stateCallback:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$stateCallback$1;

    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$stateCallback$1;->onHostStateChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager$Callback;

    invoke-interface {v1, p0, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager$Callback;->onHostStateChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    throw p0
.end method
