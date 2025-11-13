.class final Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;
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
.field final synthetic $pollTraceRequest:Lcom/android/app/motiontool/PollTraceRequest;

.field final synthetic $this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

.field final synthetic this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;


# direct methods
.method public constructor <init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/PollTraceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    iput-object p2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    iput-object p3, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;->$pollTraceRequest:Lcom/android/app/motiontool/PollTraceRequest;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;->$this_apply:Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    invoke-static {}, Lcom/android/app/motiontool/PollTraceResponse;->newBuilder()Lcom/android/app/motiontool/PollTraceResponse$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;->this$0:Lcom/android/app/motiontool/DdmHandleMotionTool;

    iget-object v2, v2, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    iget-object p0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;->$pollTraceRequest:Lcom/android/app/motiontool/PollTraceRequest;

    invoke-virtual {p0}, Lcom/android/app/motiontool/PollTraceRequest;->getTraceId()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/app/motiontool/MotionToolManager;->pollTrace(I)Lcom/android/app/viewcapture/data/MotionWindowData;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/PollTraceResponse;

    invoke-static {v2, p0}, Lcom/android/app/motiontool/PollTraceResponse;->access$100(Lcom/android/app/motiontool/PollTraceResponse;Lcom/android/app/viewcapture/data/MotionWindowData;)V

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/app/motiontool/PollTraceResponse;

    invoke-static {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse;->access$1400(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/PollTraceResponse;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
