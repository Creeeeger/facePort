.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final producingScope:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->producingScope:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$AudioInfoChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$AudioInfoChanged;-><init>(Landroid/media/session/MediaController$PlaybackInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$ExtrasChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$ExtrasChanged;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$MetadataChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$MetadataChanged;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$PlaybackStateChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$PlaybackStateChanged;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$QueueChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$QueueChanged;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$QueueTitleChanged;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$QueueTitleChanged;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionDestroyed;->INSTANCE:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionDestroyed;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel$SessionEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V

    return-void
.end method

.method public final send(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;->producingScope:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer$send$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer$send$1;-><init>(Lcom/android/systemui/volume/panel/component/mediaoutput/domain/interactor/MediaControllerCallbackProducer;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaControllerChangeModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
