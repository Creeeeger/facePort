.class final Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;
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
.field final synthetic $beginTraceRequest:Lcom/android/app/motiontool/BeginTraceRequest;

.field final synthetic $this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

.field final synthetic this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;


# direct methods
.method public constructor <init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/BeginTraceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    iput-object p2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    iput-object p3, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;->$beginTraceRequest:Lcom/android/app/motiontool/BeginTraceRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    invoke-static {}, Lcom/android/app/motiontool/BeginTraceResponse;->newBuilder()Lcom/android/app/motiontool/BeginTraceResponse$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    iget-object v2, v2, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    iget-object p0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;->$beginTraceRequest:Lcom/android/app/motiontool/BeginTraceRequest;

    invoke-virtual {p0}, Lcom/android/app/motiontool/BeginTraceRequest;->getWindow()Lcom/android/app/motiontool/WindowIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/app/motiontool/WindowIdentifier;->getRootWindow()Ljava/lang/String;

    move-result-object p0

    const-string v3, "Begin Trace for id: "

    monitor-enter v2

    :try_start_0
    iget v4, v2, Lcom/android/app/motiontool/MotionToolManager;->traceIdCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/app/motiontool/MotionToolManager;->traceIdCounter:I

    const-string v5, "MotionToolManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v3, p0}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, v2, Lcom/android/app/motiontool/MotionToolManager;->viewCapture:Lcom/android/app/viewcapture/SimpleViewCapture;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/app/viewcapture/ViewCapture$WindowListener;

    invoke-direct {v6, v5, v3, p0}, Lcom/android/app/viewcapture/ViewCapture$WindowListener;-><init>(Lcom/android/app/viewcapture/ViewCapture;Landroid/view/View;Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/app/viewcapture/ViewCapture;->mIsEnabled:Z

    if-eqz v7, :cond_0

    new-instance v7, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;

    invoke-direct {v7, v6}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda5;-><init>(Lcom/android/app/viewcapture/ViewCapture$WindowListener;)V

    sget-object v8, Lcom/android/app/viewcapture/ViewCapture;->MAIN_EXECUTOR:Lcom/android/app/viewcapture/LooperExecutor;

    invoke-virtual {v8, v7}, Lcom/android/app/viewcapture/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v7, v5, Lcom/android/app/viewcapture/ViewCapture;->mListeners:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    new-instance v3, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda6;

    invoke-direct {v3, v5, v6}, Lcom/android/app/viewcapture/ViewCapture$$ExternalSyntheticLambda6;-><init>(Lcom/android/app/viewcapture/ViewCapture;Lcom/android/app/viewcapture/ViewCapture$WindowListener;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    new-instance v7, Lcom/android/app/motiontool/TraceMetadata;

    new-instance v8, Lcom/android/app/motiontool/MotionToolManager$beginTrace$1;

    invoke-direct {v8, v3}, Lcom/android/app/motiontool/MotionToolManager$beginTrace$1;-><init>(Ljava/lang/Object;)V

    const-wide/16 v9, 0x0

    invoke-direct {v7, p0, v9, v10, v8}, Lcom/android/app/motiontool/TraceMetadata;-><init>(Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/BeginTraceResponse;

    invoke-static {p0, v4}, Lcom/android/app/motiontool/BeginTraceResponse;->access$100(Lcom/android/app/motiontool/BeginTraceResponse;I)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/app/motiontool/BeginTraceResponse;

    invoke-static {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse;->access$800(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/BeginTraceResponse;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/app/motiontool/WindowNotFoundException;

    invoke-direct {v0, p0}, Lcom/android/app/motiontool/WindowNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    throw p0
.end method
