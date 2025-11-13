.class public final Lcom/android/app/motiontool/MotionToolManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/app/motiontool/MotionToolManager$Companion;

.field public static INSTANCE:Lcom/android/app/motiontool/MotionToolManager;


# instance fields
.field public traceIdCounter:I

.field public final traces:Ljava/util/Map;

.field public final viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

.field public final windowManagerGlobal:Landroid/view/WindowManagerGlobal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/motiontool/MotionToolManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/app/motiontool/MotionToolManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/app/motiontool/MotionToolManager;->Companion:Lcom/android/app/motiontool/MotionToolManager$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    new-instance p1, Lcom/android/app/viewcapture/SimpleViewCapture;

    const-string v0, "MTViewCapture"

    invoke-direct {p1, v0}, Lcom/android/app/viewcapture/SimpleViewCapture;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolManager;->viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/WindowManagerGlobal;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/app/motiontool/MotionToolManager;-><init>(Landroid/view/WindowManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public final getDataFromViewCapture(Lcom/android/app/motiontool/TraceMetadata;)Lcom/android/app/viewcapture/data/MotionWindowData;
    .locals 7

    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p1, Lcom/android/app/motiontool/TraceMetadata;->windowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/app/motiontool/MotionToolManager;->viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/app/viewcapture/ViewCapture;->getWindowData(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/function/Predicate;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance v0, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/app/viewcapture/data/MotionWindowData;

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/app/viewcapture/data/MotionWindowData;->newBuilder()Lcom/android/app/viewcapture/data/MotionWindowData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/android/app/viewcapture/data/MotionWindowData;->getFrameDataList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/app/viewcapture/data/FrameData;

    invoke-virtual {v3}, Lcom/android/app/viewcapture/data/FrameData;->getTimestamp()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/app/motiontool/TraceMetadata;->lastPolledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0, p0}, Lcom/android/app/viewcapture/data/MotionWindowData;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)V

    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/app/viewcapture/data/MotionWindowData;

    invoke-static {p1}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$500(Lcom/android/app/viewcapture/data/MotionWindowData;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/app/viewcapture/data/MotionWindowData;

    invoke-static {p1, v1}, Lcom/android/app/viewcapture/data/MotionWindowData;->access$400(Lcom/android/app/viewcapture/data/MotionWindowData;Ljava/lang/Iterable;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/viewcapture/data/MotionWindowData;

    return-object p0

    :cond_4
    new-instance p0, Lcom/android/app/motiontool/WindowNotFoundException;

    invoke-direct {p0, v1}, Lcom/android/app/motiontool/WindowNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized pollTrace(I)Lcom/android/app/viewcapture/data/MotionWindowData;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/app/motiontool/TraceMetadata;

    invoke-virtual {p0, v0}, Lcom/android/app/motiontool/MotionToolManager;->getDataFromViewCapture(Lcom/android/app/motiontool/TraceMetadata;)Lcom/android/app/viewcapture/data/MotionWindowData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/app/motiontool/TraceMetadata;->updateLastPolledTime(Lcom/android/app/viewcapture/data/MotionWindowData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/app/motiontool/UnknownTraceIdException;

    invoke-direct {v0, p1}, Lcom/android/app/motiontool/UnknownTraceIdException;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/app/motiontool/TraceMetadata;

    iget-object v1, v1, Lcom/android/app/motiontool/TraceMetadata;->stopTrace:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/app/motiontool/MotionToolManager;->traceIdCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
