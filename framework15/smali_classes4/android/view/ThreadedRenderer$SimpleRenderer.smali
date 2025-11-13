.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Landroid/graphics/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final blacklist mLightRadius:F

.field private final greylist-max-o mLightY:F

.field private final greylist-max-o mLightZ:F


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setOpaque(Z)V

    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setSurface(Landroid/view/Surface;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0, v2}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceAlpha(FF)V

    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer$SimpleRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    return-void
.end method

.method public blacklist getRootNode()Landroid/graphics/RenderNode;
    .locals 1

    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method public greylist-max-o setLightCenter(Landroid/view/Display;II)V
    .locals 7

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, p2

    sub-float/2addr v1, v3

    iget v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float v4, p3

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43e10000    # 450.0f

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v2, v5

    iget v5, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    mul-float/2addr v5, v2

    iget v6, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v3, v5, v6}, Landroid/view/ThreadedRenderer$SimpleRenderer;->setLightSourceGeometry(FFFF)V

    return-void
.end method
