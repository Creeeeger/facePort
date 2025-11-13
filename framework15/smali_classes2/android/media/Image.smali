.class public abstract Landroid/media/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Image$Plane;
    }
.end annotation


# instance fields
.field private greylist-max-o mCropRect:Landroid/graphics/Rect;

.field private blacklist mDataSpace:I

.field protected greylist-max-o mIsImageValid:Z


# direct methods
.method protected constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    iput v0, p0, Landroid/media/Image;->mDataSpace:I

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method

.method public whitelist getCropRect()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public whitelist getDataSpace()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/Image;->mDataSpace:I

    return v0
.end method

.method public whitelist getFence()Landroid/hardware/SyncFence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/SyncFence;->createEmpty()Landroid/hardware/SyncFence;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getFormat()I
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getHeight()I
.end method

.method greylist-max-o getNativeContext()J
    .locals 2

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method greylist-max-o getOwner()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPlaneCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract whitelist getPlanes()[Landroid/media/Image$Plane;
.end method

.method public abstract greylist-max-o getScalingMode()I
.end method

.method public abstract whitelist getTimestamp()J
.end method

.method public abstract greylist-max-o getTransform()I
.end method

.method public abstract whitelist getWidth()I
.end method

.method public greylist-max-o isAttachable()Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iput-object p1, p0, Landroid/media/Image;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method public whitelist setDataSpace(I)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    iput p1, p0, Landroid/media/Image;->mDataSpace:I

    return-void
.end method

.method public whitelist setFence(Landroid/hardware/SyncFence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    return-void
.end method

.method public whitelist setTimestamp(J)V
    .locals 0

    invoke-virtual {p0}, Landroid/media/Image;->throwISEIfImageIsInvalid()V

    return-void
.end method

.method protected greylist-max-o throwISEIfImageIsInvalid()V
    .locals 2

    iget-boolean v0, p0, Landroid/media/Image;->mIsImageValid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
