.class public final Landroid/hardware/camera2/extension/CameraOutputSurface;
.super Ljava/lang/Object;
.source "CameraOutputSurface.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/extension/OutputSurface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/Surface;Landroid/util/Size;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/camera2/extension/OutputSurface;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputSurface;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-object p1, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->colorSpace:I

    return v0
.end method

.method public whitelist getDynamicRangeProfile()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-wide v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    return-wide v0
.end method

.method public whitelist getImageFormat()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    return v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v1, v1, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iget v1, v1, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v2, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v2, v2, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iget v2, v2, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iget-object v0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist setDynamicRangeProfile(J)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/extension/CameraOutputSurface;->mOutputSurface:Landroid/hardware/camera2/extension/OutputSurface;

    iput-wide p1, v0, Landroid/hardware/camera2/extension/OutputSurface;->dynamicRangeProfile:J

    return-void
.end method
