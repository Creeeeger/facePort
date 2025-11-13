.class public final synthetic Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/TextureView;

    check-cast p1, Landroid/util/Size;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    const-string v0, "VideoRenderModel"

    const-string v1, "onConnectVideoSurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-nez v1, :cond_0

    const-string p0, "media player was not instantiated on video surface texture connection"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    sget-object v2, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->RUNNING:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;->PENDING_PLAY_MEDIA:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->pendingState:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v2, p1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasSurface:Z

    :cond_3
    const-string p1, "video surface texture connected to the current media player"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->READY:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iget-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->pendingState:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;->PENDING_PLAY_MEDIA:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->play()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
