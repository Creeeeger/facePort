.class final Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;
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
.field final synthetic $cfg:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

.field final synthetic $mediaProvider:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;",
            "Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$cfg:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    iput-object p2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iput-object p3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$mediaProvider:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$cfg:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    iget-object v3, v2, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget-object v4, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;->INSTANCE:Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;->thumbnails:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$cfg:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    sget-object v4, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->DefaultConfig:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->id:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v6, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;->INSTANCE:Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;->thumbnails:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    sget-object v4, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->Companion:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$Companion;

    invoke-virtual {v2}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->autoRelease:Z

    xor-int/2addr v8, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iget v9, v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->reinforcedEdgeAmount:F

    iget-object v10, v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->hintFps:Ljava/lang/Float;

    invoke-direct {v4, v7, v9, v8, v10}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;-><init>(Landroid/content/Context;FZLjava/lang/Float;)V

    iget-object v7, v4, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->textureListener:Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;

    invoke-virtual {v2, v7}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {v2}, Landroid/view/TextureView;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/TextureView;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    iget-boolean v3, v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;->updateLayoutByMedia:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v3, v4, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;->onVideoSizeListener:Ljava/util/function/Consumer;

    :cond_3
    new-instance v3, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;

    invoke-direct {v3, v4, v6, v0}, Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;Ljava/lang/Object;I)V

    iput-object v3, v7, Lcom/samsung/android/sesl/transparentvideo/renderer/VideoTextureListener;->captureOnFirstDraw:Ljava/lang/Runnable;

    iput-object v4, v2, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->model:Lcom/samsung/android/sesl/transparentvideo/VideoRenderModel;

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v0, v0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    const-string v2, "TransparentVideoView"

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$mediaProvider:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->this$0:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    instance-of v4, v0, Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    new-instance v4, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$cfg:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-direct {v4, v0, v1, v5, p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;-><init>(Ljava/lang/Object;ZLjava/lang/Runnable;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;)V

    :goto_1
    move-object v5, v4

    goto :goto_2

    :cond_4
    instance-of v4, v0, Landroid/net/Uri;

    if-eqz v4, :cond_5

    new-instance v4, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    iget-object p0, p0, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$loadProcess$1;->$cfg:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    invoke-direct {v4, v0, v1, v5, p0}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;-><init>(Ljava/lang/Object;ZLjava/lang/Runnable;Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "invalid media source! "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v5, v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->videoContext:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$VideoContext;

    const-string p0, "initial loading done."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "reloaded from videoContext="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
