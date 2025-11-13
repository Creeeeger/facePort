.class final Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;
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
.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->lastCallState:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play() lastCallState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasicMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;->PLAY:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->lastCallState:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
