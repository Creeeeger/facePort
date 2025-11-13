.class public final Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;->$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$dismissMediaData$1;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->create(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    :cond_0
    return-void
.end method
