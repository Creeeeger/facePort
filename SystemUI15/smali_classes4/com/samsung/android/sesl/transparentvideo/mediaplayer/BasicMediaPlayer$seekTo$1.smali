.class final Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $progress:J

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;


# direct methods
.method public constructor <init>(JLcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->$progress:J

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->$progress:J

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v2, v2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->lastCallState:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "seekTo("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") lastCallState="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-boolean v2, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isSeeking:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->$progress:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->pendingSeekPosition:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->pendingSeekPosition:Ljava/lang/Long;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Already seeking! just updated pending seek position to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;->$progress:J

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->access$seekInternal(JLcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
