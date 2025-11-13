.class public Landroid/hardware/camera2/extension/ExtensionConfiguration;
.super Ljava/lang/Object;
.source "ExtensionConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mColorSpace:I

.field private final blacklist mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

.field private final blacklist mSessionTemplateId:I

.field private final blacklist mSessionType:I


# direct methods
.method public constructor whitelist <init>(IILjava/util/List;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionType:I

    iput p2, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionTemplateId:I

    iput-object p3, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    iput-object p4, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mColorSpace:I

    return-void
.end method


# virtual methods
.method blacklist getCameraSessionConfig()Landroid/hardware/camera2/extension/CameraSessionConfig;
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/camera2/extension/CameraSessionConfig;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/CameraSessionConfig;-><init>()V

    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionTemplateId:I

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionType:I

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionType:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->extension10Bit()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mColorSpace:I

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->colorSpace:I

    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;

    iget-object v3, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    invoke-virtual {v2}, Landroid/hardware/camera2/extension/ExtensionOutputConfiguration;->getOutputConfig()Landroid/hardware/camera2/extension/CameraOutputConfig;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mSessionParameters:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    :cond_3
    return-object v0
.end method

.method public whitelist setColorSpace(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/extension/ExtensionConfiguration;->mColorSpace:I

    return-void
.end method
