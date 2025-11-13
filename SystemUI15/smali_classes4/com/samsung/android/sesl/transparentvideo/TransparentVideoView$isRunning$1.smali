.class final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;
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
.field final synthetic $runningState:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;->$runningState:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "VideoRenderModel"

    const-string v1, "isRunning: no media player."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$isRunning$1;->$runningState:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
