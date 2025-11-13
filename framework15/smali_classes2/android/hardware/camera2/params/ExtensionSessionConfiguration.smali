.class public final Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
.super Ljava/lang/Object;
.source "ExtensionSessionConfiguration.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ExtensionSessionConfiguration"


# instance fields
.field private blacklist mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private blacklist mColorSpace:I

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mExtensionType:I

.field private blacklist mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;


# direct methods
.method public constructor whitelist <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    iput p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    iput-object p2, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-void
.end method


# virtual methods
.method public whitelist clearColorSpace()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->clearColorSpace()V

    :cond_1
    return-void
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    iget v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public whitelist getExtension()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    return v0
.end method

.method public whitelist getOutputConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPostviewOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public whitelist getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object v0
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace$Named;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mColorSpace:I

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/params/OutputConfiguration;->setColorSpace(Landroid/graphics/ColorSpace$Named;)V

    :cond_1
    return-void
.end method

.method public whitelist setPostviewOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mPostviewOutput:Landroid/hardware/camera2/params/OutputConfiguration;

    return-void
.end method
