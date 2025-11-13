.class final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$pause$1;
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
.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$pause$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$pause$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->RUNNING:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    const-string v2, "VideoRenderModel"

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "media was not in running. (state="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->pause()V

    :cond_1
    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->PAUSED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    const-string p0, "pause()"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
