.class final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;
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
.field final synthetic $forceReleaseSurfaceTexture:Z

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iput-boolean p2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;->$forceReleaseSurfaceTexture:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    const-string v1, "release()"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;->$forceReleaseSurfaceTexture:Z

    iget-object v4, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v4, :cond_0

    check-cast v4, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v4}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->release()V

    :cond_0
    iput-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    iget-object v4, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v2, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    iget-object v4, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->requestRelease(Z)V

    sget-object v3, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->DESTROYED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v3, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    const-string v0, "VideoRenderModel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$release$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iput-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    const-string p0, "TransparentVideoView"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
