.class public final Lcom/android/settings/widget/MediaAnimationController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/MediaAnimationController;

.field public final synthetic val$playButton:Landroid/view/View;

.field public final synthetic val$preview:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/MediaAnimationController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iput-object p2, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object p2, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    if-nez p2, :cond_0

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object v1, v0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcom/android/settings/widget/MediaAnimationController;->mSurface:Landroid/view/Surface;

    iget-object p1, v0, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-boolean p1, p1, Lcom/android/settings/widget/MediaAnimationController;->mVideoReady:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$preview:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object p1, p1, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object p1, p1, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->this$0:Lcom/android/settings/widget/MediaAnimationController;

    iget-object p1, p1, Lcom/android/settings/widget/MediaAnimationController;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/widget/MediaAnimationController$1;->val$playButton:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
