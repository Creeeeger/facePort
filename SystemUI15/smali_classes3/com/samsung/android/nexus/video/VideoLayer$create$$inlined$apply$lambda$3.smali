.class final Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoLayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoLayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/high16 v1, -0x80000000

    if-eq p3, v1, :cond_1

    :cond_0
    const/16 v1, -0x26

    if-ne p2, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-static {v1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->access$reset(Lcom/samsung/android/nexus/video/VideoLayer;I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoLayer$create$$inlined$apply$lambda$3;->this$0:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getErrorListener()Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
