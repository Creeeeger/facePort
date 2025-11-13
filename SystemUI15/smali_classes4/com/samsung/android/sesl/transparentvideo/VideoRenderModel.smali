.class public final Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$Companion;


# instance fields
.field public loadedMediaSource:Ljava/lang/Object;

.field public mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

.field public mediaPlayerSurface:Landroid/view/Surface;

.field public onVideoSizeListener:Ljava/util/function/Consumer;

.field public pendingState:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

.field public state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

.field public final textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->Companion:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FZLjava/lang/Float;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->INITIALIZED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    sget-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;->NONE:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->pendingState:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    new-instance v6, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$textureListener$2;-><init>(Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;)V

    :goto_0
    if-eqz v1, :cond_1

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    move-object v7, p1

    move-object v1, v0

    move v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;-><init>(ZZLjava/lang/Float;FLjava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FZLjava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;-><init>(Landroid/content/Context;FZLjava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final play()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->RUNNING:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->play()V

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->READY:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    const-string v3, "VideoRenderModel"

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->PAUSED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;->PENDING_PLAY_MEDIA:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->pendingState:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$PendingState;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "state was not ready to play. make pending play (state="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->play()V

    :cond_4
    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    const-string p0, "play()"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setMedia(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->release()V

    :cond_1
    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->onVideoSizeListener:Ljava/util/function/Consumer;

    iget-object v4, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    invoke-direct {v0, v4, v3}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;-><init>(Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayerSurface:Landroid/view/Surface;

    if-eqz v3, :cond_2

    iget-object v5, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iput-boolean v1, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->hasSurface:Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->setMedia(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->RUNNING:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->PAUSED:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    if-ne v1, v3, :cond_4

    :cond_3
    sget-object v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;->READY:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    iput-object v1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->state:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$State;

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v2, :cond_5

    iget-object v0, v4, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->renderer:Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/sesl/transparentvideo/renderer/TransparentVideoRenderer;->connectVideoSurfaceTexture()V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->setOnCompletionListener(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->loadedMediaSource:Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setMedia("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoRenderModel"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setOnCompletionListener(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->mediaPlayer:Lcom/samsung/android/sesl/transparentvideo/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;Ljava/lang/Object;I)V

    check-cast v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;

    iget-object p0, v0, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda3;

    invoke-direct {p1, v1}, Lcom/samsung/android/sesl/transparentvideo/mediaplayer/BasicMediaPlayer$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;)V

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    return-void
.end method
