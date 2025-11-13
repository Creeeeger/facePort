.class public final Landroid/hardware/camera2/params/RecommendedStreamConfiguration;
.super Landroid/hardware/camera2/params/StreamConfiguration;
.source "RecommendedStreamConfiguration.java"


# instance fields
.field private final blacklist mUsecaseBitmap:I


# direct methods
.method public constructor blacklist <init>(IIIZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/params/StreamConfiguration;-><init>(IIIZ)V

    iput p5, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

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
    instance-of v2, p1, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    iget v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget-boolean v4, v2, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0
.end method

.method public blacklist getUsecaseBitmap()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget v0, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mFormat:I

    iget v1, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mWidth:I

    iget v2, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mHeight:I

    iget-boolean v3, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mInput:Z

    iget v4, p0, Landroid/hardware/camera2/params/RecommendedStreamConfiguration;->mUsecaseBitmap:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method
