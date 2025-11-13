.class public Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
.super Ljava/lang/Object;
.source "MultiResolutionStreamInfo.java"


# instance fields
.field private blacklist mPhysicalCameraId:Ljava/lang/String;

.field private blacklist mStreamHeight:I

.field private blacklist mStreamWidth:I


# direct methods
.method public constructor whitelist <init>(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    iput p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    iput p2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    iput-object p3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iget v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0

    :cond_3
    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    return v0
.end method

.method public whitelist getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mStreamHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->mPhysicalCameraId:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
