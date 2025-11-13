.class final Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play completed."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getCompletionListener()Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_0
    return-void
.end method
