.class public Landroid/hardware/camera2/params/StreamConfiguration;
.super Ljava/lang/Object;
.source "StreamConfiguration.java"


# instance fields
.field protected greylist-max-o mFormat:I

.field protected greylist-max-o mHeight:I

.field protected greylist-max-o mInput:Z

.field protected greylist-max-o mWidth:I


# direct methods
.method public constructor greylist-max-o <init>(IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormatInternal(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    const-string v0, "width must be positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    const-string v0, "height must be positive"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iput-boolean p4, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return-void
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
    instance-of v2, p1, Landroid/hardware/camera2/params/StreamConfiguration;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/StreamConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public final greylist-max-o getFormat()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    return v0
.end method

.method public greylist-max-o getSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public greylist-max-o getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mHeight:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isInput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    return v0
.end method

.method public greylist-max-o isOutput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/params/StreamConfiguration;->mInput:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
