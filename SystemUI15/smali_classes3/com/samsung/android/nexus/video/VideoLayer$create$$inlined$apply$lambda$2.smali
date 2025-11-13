.class final Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoLayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnSeekCompleteListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$2;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getSeekCompleteListener()Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_0
    return-void
.end method
