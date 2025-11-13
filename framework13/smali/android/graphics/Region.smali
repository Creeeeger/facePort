.class public Landroid/graphics/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Region$Op;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-r mNativeRegion:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)J
    .locals 2

    invoke-static {p0}, Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 349
    new-instance v0, Landroid/graphics/Region$1;

    invoke-direct {v0}, Landroid/graphics/Region$1;-><init>()V

    sput-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 62
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 63
    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 83
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 84
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .locals 2
    .param p1, "ni"    # J

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 410
    iput-wide p1, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 411
    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-r <init>(JI)V
    .locals 0
    .param p1, "ni"    # J
    .param p3, "unused"    # I

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/graphics/Region;-><init>(J)V

    .line 418
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 76
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 77
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 68
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 69
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    .line 70
    return-void
.end method

.method private static native greylist-max-o nativeConstructor()J
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeEquals(JJ)Z
.end method

.method private static native greylist-max-o nativeGetBoundaryPath(JJ)Z
.end method

.method private static native greylist-max-o nativeGetBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeOp(JIIIII)Z
.end method

.method private static native greylist-max-o nativeOp(JJJI)Z
.end method

.method private static native greylist-max-o nativeOp(JLandroid/graphics/Rect;JI)Z
.end method

.method private static native greylist-max-o nativeSetPath(JJJ)Z
.end method

.method private static native greylist-max-o nativeSetRect(JIIII)Z
.end method

.method private static native greylist-max-o nativeSetRegion(JJ)V
.end method

.method private static native greylist-max-o nativeToString(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)Z
.end method

.method public static greylist-max-o obtain()Landroid/graphics/Region;
    .locals 2

    .line 318
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 319
    .local v0, "region":Landroid/graphics/Region;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    :goto_0
    return-object v1
.end method

.method public static greylist-max-o obtain(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 1
    .param p0, "other"    # Landroid/graphics/Region;

    .line 331
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 332
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 333
    return-object v0
.end method


# virtual methods
.method public native whitelist contains(II)Z
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 389
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/graphics/Region;

    if-nez v0, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/Region;

    .line 393
    .local v0, "peer":Landroid/graphics/Region;
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Region;->nativeEquals(JJ)Z

    move-result v1

    return v1

    .line 390
    .end local v0    # "peer":Landroid/graphics/Region;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 399
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeDestructor(J)V

    .line 400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 403
    nop

    .line 404
    return-void

    .line 402
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 403
    throw v0
.end method

.method public whitelist getBoundaryPath()Landroid/graphics/Path;
    .locals 5

    .line 164
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 165
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {v0}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    .line 166
    return-object v0
.end method

.method public whitelist getBoundaryPath(Landroid/graphics/Path;)Z
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    .line 174
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .local v0, "r":Landroid/graphics/Rect;
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    .line 144
    return-object v0
.end method

.method public whitelist getBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 152
    if-eqz p1, :cond_0

    .line 155
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public native whitelist isComplex()Z
.end method

.method public native whitelist isEmpty()Z
.end method

.method public native whitelist isRect()Z
.end method

.method final greylist-max-o ni()J
    .locals 2

    .line 421
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    return-wide v0
.end method

.method public whitelist op(IIIILandroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .line 276
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 267
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .line 293
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v3, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v5, p3, Landroid/graphics/Region$Op;->nativeInt:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(JLandroid/graphics/Rect;JI)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 285
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "region1"    # Landroid/graphics/Region;
    .param p2, "region2"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .line 302
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p3, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JJJI)Z

    move-result v0

    return v0
.end method

.method public native whitelist quickContains(IIII)Z
.end method

.method public whitelist quickContains(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 189
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result v0

    return v0
.end method

.method public native whitelist quickReject(IIII)Z
.end method

.method public whitelist quickReject(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 207
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickReject(IIII)Z

    move-result v0

    return v0
.end method

.method public native whitelist quickReject(Landroid/graphics/Region;)Z
.end method

.method public greylist-max-r recycle()V
    .locals 1

    .line 343
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 344
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public greylist scale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->scale(FLandroid/graphics/Region;)V

    .line 249
    return-void
.end method

.method public native greylist-max-o scale(FLandroid/graphics/Region;)V
.end method

.method public whitelist set(IIII)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 108
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 102
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 95
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setEmpty()V
    .locals 6

    .line 89
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 90
    return-void
.end method

.method public whitelist setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "clip"    # Landroid/graphics/Region;

    .line 118
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 308
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist translate(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    .line 229
    return-void
.end method

.method public native whitelist translate(IILandroid/graphics/Region;)V
.end method

.method public final whitelist union(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 259
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 382
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeWriteToParcel(JLandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
