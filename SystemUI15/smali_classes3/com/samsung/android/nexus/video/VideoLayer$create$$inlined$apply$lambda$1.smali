.class final Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoLayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnPlaybackCompleteListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->isAutoPlayNextMediaSource()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-static {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->access$setDataSource(Lcom/samsung/android/nexus/video/VideoLayer;)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_1
    return-void
.end method
