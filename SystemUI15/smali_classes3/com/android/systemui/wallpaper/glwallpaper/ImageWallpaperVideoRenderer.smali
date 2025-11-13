.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDraw:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

.field public final mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

.field public mInvalidateCount:I

.field public final mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field public final mRenderUserMode:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

.field public mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

.field public final mWorker:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mDraw:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageWallpaperVideoRenderer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageWallpaperVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    new-instance p2, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    invoke-direct {p2}, Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mEglHelper:Lcom/android/systemui/wallpaper/glwallpaper/EglHelper;

    new-instance p2, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    if-eqz p3, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->createVideoLayer()V

    return-void
.end method

.method private invalidate()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mDraw:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer$$ExternalSyntheticLambda0;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mInvalidateCount:I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final createVideoLayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mLayerContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-nez v0, :cond_0

    const-string p0, "ImageWallpaperVideoRenderer"

    const-string v0, "Cannot create video layer. Layer container is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    new-instance v1, Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {v1}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperVideoRenderer;->mVideoLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    return-void
.end method
