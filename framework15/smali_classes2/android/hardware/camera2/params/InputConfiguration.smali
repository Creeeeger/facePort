.class public final Landroid/hardware/camera2/params/InputConfiguration;
.super Ljava/lang/Object;
.source "InputConfiguration.java"


# instance fields
.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final blacklist mIsMultiResolution:Z

.field private final greylist-max-o mWidth:I


# direct methods
.method public constructor whitelist <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return-void
.end method

.method public constructor blacklist <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    iput-boolean p4, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Input multi-resolution stream info"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iput p2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/hardware/camera2/params/InputConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/params/InputConfiguration;->isMultiResolution()Z

    move-result v2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public whitelist getFormat()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist isMultiResolution()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/hardware/camera2/params/InputConfiguration;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/InputConfiguration;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/InputConfiguration;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/InputConfiguration;->mIsMultiResolution:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "InputConfiguration(w:%d, h:%d, format:%d, isMultiResolution %b)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
