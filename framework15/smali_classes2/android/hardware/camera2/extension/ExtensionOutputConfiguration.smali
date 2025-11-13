.class public Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;
.super Ljava/lang/Object;
.source "ExtensionOutputConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mOutputConfigId:I

.field private final blacklist mPhysicalCameraId:Ljava/lang/String;

.field private final blacklist mSurfaceGroupId:I

.field private final blacklist mSurfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CameraOutputSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/util/List;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CameraOutputSurface;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mOutputConfigId:I

    iput p4, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaceGroupId:I

    return-void
.end method

.method private blacklist initializeOutputConfig(Landroid/hardware/camera2/extension/CameraOutputConfig;Landroid/hardware/camera2/extension/CameraOutputSurface;)V
    .locals 2

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getImageFormat()I

    move-result v0

    iput v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    iget-object v0, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mPhysicalCameraId:Ljava/lang/String;

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    new-instance v0, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mOutputConfigId:I

    iput v1, v0, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    iget v0, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaceGroupId:I

    iput v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/hardware/camera2/extension/CameraOutputSurface;->getDynamicRangeProfile()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    iput-wide v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->dynamicRangeProfile:J

    :goto_0
    return-void
.end method


# virtual methods
.method blacklist getOutputConfig()Landroid/hardware/camera2/extension/CameraOutputConfig;
    .locals 4

    iget-object v0, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraOutputConfig;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->initializeOutputConfig(Landroid/hardware/camera2/extension/CameraOutputConfig;Landroid/hardware/camera2/extension/CameraOutputSurface;)V

    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/hardware/camera2/extension/CameraOutputConfig;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/CameraOutputConfig;-><init>()V

    iget-object v3, p0, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->mSurfaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/CameraOutputSurface;

    invoke-direct {p0, v2, v3}, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->initializeOutputConfig(Landroid/hardware/camera2/extension/CameraOutputConfig;Landroid/hardware/camera2/extension/CameraOutputSurface;)V

    iget-object v3, v0, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
