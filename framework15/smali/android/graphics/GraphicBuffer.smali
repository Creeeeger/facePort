.class public Landroid/graphics/GraphicBuffer;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o USAGE_HW_2D:I = 0x400

.field public static final greylist-max-o USAGE_HW_COMPOSER:I = 0x800

.field public static final greylist-max-o USAGE_HW_MASK:I = 0x71f00

.field public static final greylist-max-o USAGE_HW_RENDER:I = 0x200

.field public static final greylist-max-o USAGE_HW_TEXTURE:I = 0x100

.field public static final greylist-max-o USAGE_HW_VIDEO_ENCODER:I = 0x10000

.field public static final greylist-max-o USAGE_PROTECTED:I = 0x4000

.field public static final greylist-max-o USAGE_SOFTWARE_MASK:I = 0xff

.field public static final greylist-max-o USAGE_SW_READ_MASK:I = 0xf

.field public static final greylist-max-o USAGE_SW_READ_NEVER:I = 0x0

.field public static final greylist-max-o USAGE_SW_READ_OFTEN:I = 0x3

.field public static final greylist-max-o USAGE_SW_READ_RARELY:I = 0x2

.field public static final greylist-max-o USAGE_SW_WRITE_MASK:I = 0xf0

.field public static final greylist-max-o USAGE_SW_WRITE_NEVER:I = 0x0

.field public static final greylist-max-o USAGE_SW_WRITE_OFTEN:I = 0x30

.field public static final greylist-max-o USAGE_SW_WRITE_RARELY:I = 0x20


# instance fields
.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mDestroyed:Z

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-r mNativeObject:J

.field private greylist-max-o mSaveCount:I

.field private final greylist-max-o mUsage:I

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/GraphicBuffer$1;

    invoke-direct {v0}, Landroid/graphics/GraphicBuffer$1;-><init>()V

    sput-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(IIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    iput p2, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    iput p3, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    iput p4, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    iput-wide p5, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJLandroid/graphics/GraphicBuffer-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-void
.end method

.method public static greylist-max-o create(IIII)Landroid/graphics/GraphicBuffer;
    .locals 10

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/GraphicBuffer;->nCreateGraphicBuffer(IIII)J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    new-instance v9, Landroid/graphics/GraphicBuffer;

    move-object v0, v9

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJ)V

    return-object v9

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final blacklist createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;
    .locals 1

    invoke-static {p0}, Landroid/graphics/GraphicBuffer;->nCreateFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nCreateFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;
.end method

.method private static native greylist-max-o nCreateGraphicBuffer(IIII)J
.end method

.method private static native greylist-max-o nDestroyGraphicBuffer(J)V
.end method

.method private static native greylist-max-o nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z
.end method

.method private static native greylist-max-o nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o destroy()V
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/graphics/GraphicBuffer;->nDestroyGraphicBuffer(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/GraphicBuffer;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public greylist-max-o getFormat()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    return v0
.end method

.method public greylist-max-o getHeight()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    return v0
.end method

.method public greylist-max-o getUsage()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    return v0
.end method

.method public greylist-max-o getWidth()I
    .locals 1

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    return v0
.end method

.method public greylist-max-o isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    return v0
.end method

.method public greylist-max-o lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/GraphicBuffer;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    :cond_1
    iget-wide v2, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/graphics/GraphicBuffer;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public greylist-max-o unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 3

    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/GraphicBuffer;->mSaveCount:I

    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    iget-object v2, p0, Landroid/graphics/GraphicBuffer;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0, v1, v2}, Landroid/graphics/GraphicBuffer;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)Z

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/GraphicBuffer;->mDestroyed:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/graphics/GraphicBuffer;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/graphics/GraphicBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/graphics/GraphicBuffer;->nWriteGraphicBufferToParcel(JLandroid/os/Parcel;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GraphicBuffer has been destroyed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
