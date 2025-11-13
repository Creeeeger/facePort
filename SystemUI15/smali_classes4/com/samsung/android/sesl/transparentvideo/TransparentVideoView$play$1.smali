.class final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;
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

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->mediaSource:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->loadedMediaSource:Ljava/lang/Object;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    instance-of v4, v2, Landroid/content/res/AssetFileDescriptor;

    const-string v5, "VideoRenderModel"

    const-string v6, ")"

    if-eqz v4, :cond_7

    check-cast v2, Landroid/content/res/AssetFileDescriptor;

    iget-object v4, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    const/4 v7, 0x1

    if-nez v4, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v4, :cond_2

    check-cast v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v4}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->release()V

    :cond_2
    new-instance v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->onVideoSizeListener:Ljava/util/function/Consumer;

    iget-object v10, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    invoke-direct {v4, v10, v9}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V

    iget-object v9, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    if-eqz v9, :cond_3

    iget-object v11, v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v11, v9}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iput-boolean v7, v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasSurface:Z

    :cond_3
    iget-object v9, v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    iput-boolean v7, v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasMedia:Z

    iget-object v7, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->RUNNING:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-eq v7, v9, :cond_4

    sget-object v9, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->PAUSED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-ne v7, v9, :cond_5

    :cond_4
    sget-object v7, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->READY:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v7, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    :cond_5
    iput-object v4, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v8, :cond_6

    iget-object v4, v10, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {v4}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->connectVideoSurfaceTexture()V

    :cond_6
    invoke-virtual {v1, v3}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->setOnCompletionListener(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->loadedMediaSource:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setMedia("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_8

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->setMedia(Landroid/net/Uri;)V

    :cond_8
    :goto_2
    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    if-eqz v0, :cond_a

    iget-object v2, v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    iget-boolean v3, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->loop:Z

    if-eqz v2, :cond_9

    check-cast v2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v2, v2, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "setLooping("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;->completionListener:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->setOnCompletionListener(Ljava/lang/Runnable;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->play()V

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$play$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V

    iget-object p0, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->onFirstDrawFinished:Ljava/lang/Runnable;

    :cond_c
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
