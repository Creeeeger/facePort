.class public final Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->this$0:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCountdown(J)V
    .locals 1

    new-instance v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;-><init>(J)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onCountdownEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->this$0:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->recordingController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->recordingController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-boolean v0, v0, Lcom/android/systemui/screenrecord/RecordingController;->mIsStarting:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;->INSTANCE:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onRecordingEnd()V
    .locals 1

    sget-object v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;->INSTANCE:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onRecordingStart()V
    .locals 1

    sget-object v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Recording;->INSTANCE:Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Recording;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
