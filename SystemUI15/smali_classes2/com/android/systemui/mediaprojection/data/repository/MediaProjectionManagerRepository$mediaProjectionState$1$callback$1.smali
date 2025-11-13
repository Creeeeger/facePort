.class public final Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;->this$0:Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaProjectionManager.Callback#onSessionStarted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProjectionMngrRepo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1$onRecordingSessionSet$1;

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;->this$0:Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1$onRecordingSessionSet$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    const-string p1, "MediaProjectionManager.Callback#onStart"

    const-string v0, "MediaProjectionMngrRepo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;->INSTANCE:Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;

    invoke-static {p1, p0, v1, v0}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    const-string p1, "MediaProjectionManager.Callback#onStop"

    const-string v0, "MediaProjectionMngrRepo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository$mediaProjectionState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object v1, Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;->INSTANCE:Lcom/android/systemui/mediaprojection/data/model/MediaProjectionState$NotProjecting;

    invoke-static {p1, p0, v1, v0}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
