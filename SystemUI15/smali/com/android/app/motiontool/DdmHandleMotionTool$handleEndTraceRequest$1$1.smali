.class final Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;
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
.field final synthetic $endTraceRequest:Lcom/android/app/motiontool/EndTraceRequest;

.field final synthetic $this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

.field final synthetic this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;


# direct methods
.method public constructor <init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/EndTraceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    iput-object p2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    iput-object p3, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$endTraceRequest:Lcom/android/app/motiontool/EndTraceRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    invoke-static {}, Lcom/android/app/motiontool/EndTraceResponse;->newBuilder()Lcom/android/app/motiontool/EndTraceResponse$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    iget-object v2, v2, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    iget-object p0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;->$endTraceRequest:Lcom/android/app/motiontool/EndTraceRequest;

    invoke-virtual {p0}, Lcom/android/app/motiontool/EndTraceRequest;->getTraceId()I

    move-result p0

    const-string v3, "End Trace for id: "

    monitor-enter v2

    :try_start_0
    const-string v4, "MotionToolManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lcom/android/app/motiontool/TraceMetadata;

    invoke-virtual {v2, p0}, Lcom/android/app/motiontool/MotionToolManager;->pollTrace(I)Lcom/android/app/viewcapture/data/MotionWindowData;

    move-result-object v4

    iget-object v3, v3, Lcom/android/app/motiontool/TraceMetadata;->stopTrace:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/app/motiontool/MotionToolManager;->traces:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/EndTraceResponse;

    invoke-static {p0, v4}, Lcom/android/app/motiontool/EndTraceResponse;->access$100(Lcom/android/app/motiontool/EndTraceResponse;Lcom/android/app/viewcapture/data/MotionWindowData;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/app/motiontool/EndTraceResponse;

    invoke-static {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse;->access$1100(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/EndTraceResponse;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/app/motiontool/UnknownTraceIdException;

    invoke-direct {v0, p0}, Lcom/android/app/motiontool/UnknownTraceIdException;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    throw p0
.end method
