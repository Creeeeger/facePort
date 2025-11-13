.class public final Lcom/android/app/motiontool/DdmHandleMotionTool;
.super Landroid/ddm/DdmHandle;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CHUNK_MOTO:I

.field public static final Companion:Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;

.field public static INSTANCE:Lcom/android/app/motiontool/DdmHandleMotionTool;


# instance fields
.field public final motionToolManager:Lcom/android/app/motiontool/MotionToolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/app/motiontool/DdmHandleMotionTool;->Companion:Lcom/android/app/motiontool/DdmHandleMotionTool$Companion;

    const-string v0, "MOTO"

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    return-void
.end method

.method private constructor <init>(Lcom/android/app/motiontool/MotionToolManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/ddm/DdmHandle;-><init>()V

    iput-object p1, p0, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/app/motiontool/MotionToolManager;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool;-><init>(Lcom/android/app/motiontool/MotionToolManager;)V

    return-void
.end method

.method public static tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/app/motiontool/UnknownTraceIdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/app/motiontool/WindowNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/android/app/motiontool/WindowNotFoundException;->getWindowId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/ErrorResponse$Code;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No window found with windowId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v1, p1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/android/app/motiontool/UnknownTraceIdException;->getTraceId()I

    move-result p1

    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->UNKNOWN_TRACE_ID:Lcom/android/app/motiontool/ErrorResponse$Code;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No running Trace found with traceId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v1, p1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    invoke-static {p1}, Landroid/ddm/DdmHandle;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->parseFrom([B)Lcom/android/app/motiontool/MotionToolsRequest;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getTypeCase()Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    move-result-object p1

    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    const-string v1, "Unknown request type"

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getPollTrace()Lcom/android/app/motiontool/PollTraceRequest;

    move-result-object p1

    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool$handlePollTraceRequest$1$1;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/PollTraceRequest;)V

    invoke-static {v1, v2}, Lcom/android/app/motiontool/DdmHandleMotionTool;->tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getEndTrace()Lcom/android/app/motiontool/EndTraceRequest;

    move-result-object p1

    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool$handleEndTraceRequest$1$1;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/EndTraceRequest;)V

    invoke-static {v1, v2}, Lcom/android/app/motiontool/DdmHandleMotionTool;->tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getBeginTrace()Lcom/android/app/motiontool/BeginTraceRequest;

    move-result-object p1

    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/app/motiontool/DdmHandleMotionTool$handleBeginTraceRequest$1$1;-><init>(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lcom/android/app/motiontool/DdmHandleMotionTool;Lcom/android/app/motiontool/BeginTraceRequest;)V

    invoke-static {v1, v2}, Lcom/android/app/motiontool/DdmHandleMotionTool;->tryCatchingMotionToolManagerExceptions(Lcom/android/app/motiontool/MotionToolsResponse$Builder;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/android/app/motiontool/MotionToolsRequest;->getHandshake()Lcom/android/app/motiontool/HandshakeRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/android/app/motiontool/DdmHandleMotionTool;->motionToolManager:Lcom/android/app/motiontool/MotionToolManager;

    invoke-virtual {p1}, Lcom/android/app/motiontool/HandshakeRequest;->getWindow()Lcom/android/app/motiontool/WindowIdentifier;

    move-result-object p1

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/app/motiontool/WindowIdentifier;->getRootWindow()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/app/motiontool/MotionToolManager;->windowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerGlobal;->getRootView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    monitor-exit p0

    if-eqz v2, :cond_5

    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;

    :goto_1
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    move-result-object p1

    invoke-static {}, Lcom/android/app/motiontool/HandshakeResponse;->newBuilder()Lcom/android/app/motiontool/HandshakeResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/HandshakeResponse;

    invoke-static {v2}, Lcom/android/app/motiontool/HandshakeResponse;->access$300(Lcom/android/app/motiontool/HandshakeResponse;)V

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/HandshakeResponse;

    invoke-static {v2, p0}, Lcom/android/app/motiontool/HandshakeResponse;->access$100(Lcom/android/app/motiontool/HandshakeResponse;Lcom/android/app/motiontool/HandshakeResponse$Status;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object p0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/app/motiontool/HandshakeResponse;

    invoke-static {p0, v1}, Lcom/android/app/motiontool/MotionToolsResponse;->access$500(Lcom/android/app/motiontool/MotionToolsResponse;Lcom/android/app/motiontool/HandshakeResponse;)V

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    new-instance p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v1, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    array-length v2, p0

    invoke-direct {p1, v1, p0, v0, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    invoke-static {}, Lcom/android/app/motiontool/MotionToolsResponse;->newBuilder()Lcom/android/app/motiontool/MotionToolsResponse$Builder;

    move-result-object p0

    invoke-static {}, Lcom/android/app/motiontool/ErrorResponse;->newBuilder()Lcom/android/app/motiontool/ErrorResponse$Builder;

    move-result-object p1

    sget-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$100(Lcom/android/app/motiontool/ErrorResponse;Lcom/android/app/motiontool/ErrorResponse$Code;)V

    const-string v1, "Invalid request format (Protobuf parse exception)"

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/android/app/motiontool/ErrorResponse;

    invoke-static {v2, v1}, Lcom/android/app/motiontool/ErrorResponse;->access$300(Lcom/android/app/motiontool/ErrorResponse;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/app/motiontool/MotionToolsResponse$Builder;->setError(Lcom/android/app/motiontool/ErrorResponse$Builder;)V

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsResponse;

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    new-instance p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v1, Lcom/android/app/motiontool/DdmHandleMotionTool;->CHUNK_MOTO:I

    array-length v2, p0

    invoke-direct {p1, v1, p0, v0, v2}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object p1
.end method

.method public final onConnected()V
    .locals 0

    return-void
.end method

.method public final onDisconnected()V
    .locals 0

    return-void
.end method
