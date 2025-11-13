.class final Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;
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
.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;->this$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-string v0, "VideoRenderModel"

    const-string v1, "release all media objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;->this$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;->this$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;->this$0:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->PAUSED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
