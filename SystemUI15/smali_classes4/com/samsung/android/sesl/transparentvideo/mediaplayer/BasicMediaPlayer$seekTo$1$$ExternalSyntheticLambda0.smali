.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isSeeking:Z

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->pendingSeekPosition:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->access$seekInternal(JLcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->pendingSeekPosition:Ljava/lang/Long;

    return-void
.end method
