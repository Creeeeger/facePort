.class public final Landroid/graphics/HardwareBufferRenderer$RenderRequest;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RenderRequest"
.end annotation


# instance fields
.field private blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mTransform:I

.field final synthetic blacklist this$0:Landroid/graphics/HardwareBufferRenderer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreset(Landroid/graphics/HardwareBufferRenderer$RenderRequest;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->reset()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/HardwareBufferRenderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/HardwareBufferRenderer;Landroid/graphics/HardwareBufferRenderer$RenderRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/HardwareBufferRenderer$RenderRequest;-><init>(Landroid/graphics/HardwareBufferRenderer;)V

    return-void
.end method

.method static synthetic blacklist lambda$draw$0(Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$draw$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V
    .locals 1

    new-instance v0, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/graphics/HardwareBufferRenderer$RenderResult;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist reset()V
    .locals 1

    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    return-void
.end method


# virtual methods
.method public whitelist draw(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/HardwareBufferRenderer$RenderResult;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareBufferRenderer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    move v8, v0

    move v9, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v1}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmHardwareBuffer(Landroid/graphics/HardwareBufferRenderer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    move v8, v0

    move v9, v1

    :goto_1
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->this$0:Landroid/graphics/HardwareBufferRenderer;

    invoke-static {v0}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$fgetmProxy(Landroid/graphics/HardwareBufferRenderer;)J

    move-result-wide v0

    iget v2, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    iget-object v3, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    move v3, v8

    move v4, v9

    invoke-static/range {v0 .. v7}, Landroid/graphics/HardwareBufferRenderer;->nRender(JIIIJLjava/util/function/Consumer;)I

    nop

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to draw with a HardwareBufferRenderer instance that has already been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBufferTransform(I)Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iput p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mTransform:I

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid transform provided, must be one ofthe SurfaceControl.BufferTransform values"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)Landroid/graphics/HardwareBufferRenderer$RenderRequest;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$sfgetDEFAULT_COLORSPACE()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderRequest;->mColorSpace:Landroid/graphics/ColorSpace;

    :goto_0
    return-object p0
.end method
