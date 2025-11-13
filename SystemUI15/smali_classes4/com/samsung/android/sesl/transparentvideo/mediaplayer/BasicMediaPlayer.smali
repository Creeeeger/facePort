.class public final Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;


# instance fields
.field public hasMedia:Z

.field public hasSurface:Z

.field public isPrepared:Z

.field public isPreparing:Z

.field public isReleased:Z

.field public isSeeking:Z

.field public lastCallState:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

.field public final mediaPlayer:Landroid/media/MediaPlayer;

.field public pendingSeekPosition:Ljava/lang/Long;

.field public final taskQueue:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->taskQueue:Ljava/util/List;

    sget-object p1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;->NONE:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->lastCallState:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    return-void
.end method

.method public static final access$seekInternal(JLcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V
    .locals 3

    iget-object v0, p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->lastCallState:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;->PAUSE:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;->NONE:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;->PLAY:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$MediaCallState;

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, p1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, p1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    iget-object p0, p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isSeeking:Z

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$pause$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$pause$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->runOnPrepared(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final play()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$play$1;-><init>(Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->runOnPrepared(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final release()V
    .locals 2

    const-string v0, "BasicMediaPlayer"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasMedia:Z

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasSurface:Z

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isPrepared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isReleased:Z

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->taskQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final runOnPrepared(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isReleased:Z

    const-string v1, "BasicMediaPlayer"

    if-eqz v0, :cond_0

    const-string p0, "media player has been released. skipped media operation."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasMedia:Z

    if-nez v0, :cond_1

    const-string p0, "no media input. ignored the request."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasSurface:Z

    if-nez v0, :cond_2

    const-string v0, "no surface."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isPrepared:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->taskQueue:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isPreparing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->isPreparing:Z

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final seekTo()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$seekTo$1;-><init>(JLcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->runOnPrepared(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
