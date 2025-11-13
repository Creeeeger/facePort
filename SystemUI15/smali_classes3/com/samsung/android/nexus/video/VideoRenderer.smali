.class public final Lcom/samsung/android/nexus/video/VideoRenderer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final Companion:Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

.field private static final DEFAULT_CONTRAST:F = 1.6f

.field private static final DEFAULT_SATURATION:F = 0.7f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBoundRect:Landroid/graphics/RectF;

.field private final mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

.field private mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/nexus/video/VideoRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/nexus/video/VideoRenderer;->Companion:Lcom/samsung/android/nexus/video/VideoRenderer$Companion;

    const-class v0, Lcom/samsung/android/nexus/video/VideoRenderer;

    const-string v0, "VideoRenderer"

    sput-object v0, Lcom/samsung/android/nexus/video/VideoRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/nexus/video/VideoRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    :cond_0
    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p2, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoRenderer;->generateLayer()V

    return-void
.end method

.method private final generateLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    new-instance v0, Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-direct {v0}, Lcom/samsung/android/nexus/video/VideoLayer;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    return-void
.end method

.method private final loggingError(Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lcom/samsung/android/nexus/video/VideoRenderer;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getContrast()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getContrast()F

    move-result p0

    return p0
.end method

.method public final getHdrModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHdrModeEnabled()Z

    move-result p0

    return p0
.end method

.method public final getHsvHue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvHue()F

    move-result p0

    return p0
.end method

.method public final getHsvSaturation()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvSaturation()F

    move-result p0

    return p0
.end method

.method public final getHsvValue()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->getHsvValue()F

    move-result p0

    return p0
.end method

.method public final getVideoLayer()Lcom/samsung/android/nexus/video/VideoLayer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    return-object p0
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->removeAllLayers()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->draw()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    iput p2, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    iput p3, v0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    iget-boolean v0, p1, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onCreate()V

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onSizeChanged(II)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoRenderer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public final pausePlay()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    return-void
.end method

.method public final reset()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->reset()V

    return-void
.end method

.method public final setBoundRect(Landroid/graphics/RectF;)V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mBoundRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setBoundRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setContrast(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setContrast(F)V

    return-void
.end method

.method public final setHdrModeEnabled(Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3fcccccd    # 1.6f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    return-void
.end method

.method public final setHdrModeEnabled(ZFF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/nexus/video/VideoLayer;->setHdrModeEnabled(ZFF)V

    return-void
.end method

.method public final setHsvColorFilter([F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvFilterColor([F)V

    return-void
.end method

.method public final setHsvHue(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvHue(F)V

    return-void
.end method

.method public final setHsvSaturation(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvSaturation(F)V

    return-void
.end method

.method public final setHsvValue(F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setHsvValue(F)V

    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/net/Uri;)V

    return-void
.end method

.method public final setMediaSource(Landroid/net/Uri;Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/nexus/video/VideoRenderer;->setBoundRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoRenderer;->setMediaSource(Landroid/net/Uri;)V

    return-void
.end method

.method public final setMediaSourceAfd(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public final startPlay()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->startPlayer()V

    return-void
.end method

.method public final stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mLayer:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->stopPlayer()V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoRenderer;->mContainer:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    return-void
.end method
