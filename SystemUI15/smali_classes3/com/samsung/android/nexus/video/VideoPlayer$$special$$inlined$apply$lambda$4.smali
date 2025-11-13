.class final Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: mp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$4;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
