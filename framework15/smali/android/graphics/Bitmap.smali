.class public final Landroid/graphics/Bitmap;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Bitmap$Config;,
        Landroid/graphics/Bitmap$DumpData;,
        Landroid/graphics/Bitmap$CompressFormat;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DENSITY_NONE:I = 0x0

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:J = 0x20L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Bitmap"

.field private static final greylist-max-o WORKING_COMPRESS_STORAGE:I = 0x1000

.field private static blacklist dumpData:Landroid/graphics/Bitmap$DumpData;

.field private static final blacklist sAllBitmaps:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sDefaultDensity:I


# instance fields
.field private greylist-max-o mColorSpace:Landroid/graphics/ColorSpace;

.field greylist-max-o mDensity:I

.field private blacklist mGainmap:Landroid/graphics/Gainmap;

.field private blacklist mHardwareBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mHeight:I

.field private final greylist mNativePtr:J

.field private greylist-max-p mNinePatchChunk:[B

.field private greylist-max-r mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

.field private greylist-max-o mRecycled:Z

.field private greylist-max-o mRequestPremultiplied:Z

.field private blacklist mTag:Ljava/lang/Object;

.field private greylist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Landroid/graphics/Bitmap;->nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    new-instance v0, Landroid/graphics/Bitmap$1;

    invoke-direct {v0}, Landroid/graphics/Bitmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-p <init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/graphics/Bitmap;-><init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V

    return-void
.end method

.method constructor blacklist <init>(JIIIZ[BLandroid/graphics/NinePatch$InsetStruct;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, v1, Landroid/graphics/Bitmap;->mDensity:I

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/graphics/Bitmap;->mTag:Ljava/lang/Object;

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_2

    move/from16 v5, p3

    iput v5, v1, Landroid/graphics/Bitmap;->mWidth:I

    move/from16 v6, p4

    iput v6, v1, Landroid/graphics/Bitmap;->mHeight:I

    move/from16 v7, p6

    iput-boolean v7, v1, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move-object/from16 v8, p7

    iput-object v8, v1, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    move-object/from16 v9, p8

    iput-object v9, v1, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-ltz v4, :cond_0

    iput v4, v1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    iput-wide v2, v1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v10

    if-eqz p9, :cond_1

    const-class v11, Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v12

    int-to-long v14, v10

    invoke-static {v11, v12, v13, v14, v15}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v11

    goto :goto_0

    :cond_1
    const-class v11, Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {}, Landroid/graphics/Bitmap;->nativeGetNativeFinalizer()J

    move-result-wide v12

    int-to-long v14, v10

    invoke-static {v11, v12, v13, v14, v15}, Llibcore/util/NativeAllocationRegistry;->createNonmalloced(Ljava/lang/ClassLoader;JJ)Llibcore/util/NativeAllocationRegistry;

    move-result-object v11

    :goto_0
    invoke-virtual {v11, v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    const-class v12, Landroid/graphics/Bitmap;

    monitor-enter v12

    :try_start_0
    sget-object v13, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v13, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v10, "internal error: native bitmap is 0"

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkHardware(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelAccess(II)V
    .locals 2

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be < bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be < bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkPixelsAccess(IIIIII[I)V
    .locals 3

    invoke-static {p1, p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    if-ltz p3, :cond_5

    if-ltz p4, :cond_4

    add-int v0, p1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, p3, :cond_1

    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, p6

    add-int/2addr v0, p5

    array-length v1, p7

    if-ltz p5, :cond_0

    add-int v2, p5, p3

    if-gt v2, v1, :cond_0

    if-ltz v0, :cond_0

    add-int v2, v0, p3

    if-gt v2, v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "abs(stride) must be >= width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y + height must be <= bitmap.height()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x + width must be <= bitmap.width()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkWidthHeight(II)V
    .locals 2

    if-lez p0, :cond_1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkXYSign(II)V
    .locals 2

    if-ltz p0, :cond_1

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist clamp(FLandroid/graphics/ColorSpace;I)F
    .locals 2

    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v15, p5

    invoke-static/range {p1 .. p2}, Landroid/graphics/Bitmap;->checkXYSign(II)V

    invoke-static/range {p3 .. p4}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    add-int v3, v1, v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v3, v4, :cond_10

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v9, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v10, v3, :cond_1

    if-eqz v15, :cond_0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    if-ne v3, v4, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    move/from16 v19, v3

    if-eqz v19, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v3, v0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/graphics/Bitmap;->nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v3, Landroid/graphics/Rect;

    add-int v7, v1, v9

    add-int v8, v2, v10

    invoke-direct {v3, v1, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v3

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v7, v9

    int-to-float v8, v10

    const/4 v11, 0x0

    invoke-direct {v3, v11, v11, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v12, v3

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object v11, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v21, v3

    goto :goto_1

    :pswitch_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    move-object/from16 v21, v3

    goto :goto_1

    :pswitch_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v21, v3

    goto :goto_1

    :pswitch_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move-object/from16 v21, v3

    goto :goto_1

    :cond_4
    move-object/from16 v21, v3

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v16

    if-eqz v15, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v6, p6

    goto/16 :goto_4

    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v3

    xor-int/2addr v3, v6

    invoke-virtual {v15, v11, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v7, v21

    if-eqz v3, :cond_6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v7, v8, :cond_6

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-eq v7, v8, :cond_6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-nez v16, :cond_6

    sget-object v8, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v8}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v8

    move-object/from16 v16, v8

    :cond_6
    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    const/16 v26, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    move/from16 v26, v6

    :goto_3
    const/16 v22, 0x0

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v27, v16

    invoke-static/range {v22 .. v27}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 p0, v17

    move-object/from16 v14, p0

    move/from16 v6, p6

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_9
    move-object v1, v14

    move-object/from16 v3, v16

    goto :goto_5

    :cond_a
    move/from16 v6, p6

    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    move-object/from16 v6, v21

    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v1, 0x0

    move-object/from16 v3, v16

    :goto_5
    iget v6, v0, Landroid/graphics/Bitmap;->mDensity:I

    iput v6, v8, Landroid/graphics/Bitmap;->mDensity:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-boolean v6, v0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v8, v6}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v7, v11, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v14, v11, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v6, v7, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v15}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v0, v13, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v7

    if-eqz v7, :cond_b

    move-object v7, v11

    move-object v11, v0

    move-object/from16 v22, v12

    move-object/from16 v12, p5

    move-object/from16 v23, v13

    move v13, v4

    const/4 v2, 0x0

    move v14, v5

    move-object v15, v1

    move-object/from16 v16, v23

    move-object/from16 v17, v22

    move-object/from16 v18, v7

    invoke-static/range {v11 .. v18}, Landroid/graphics/Bitmap;->transformGainmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;IILandroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_c

    new-instance v12, Landroid/graphics/Gainmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v12}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    goto :goto_6

    :cond_b
    move-object v7, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    const/4 v2, 0x0

    :cond_c
    :goto_6
    if-eqz v19, :cond_d

    sget-object v11, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8, v11, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_d
    return-object v8

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot use a recycled source in createBitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "y + height must be <= bitmap.height()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "x + width must be <= bitmap.width()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/graphics/Picture;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_0

    const-string v0, "GPU readback"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Picture;->requiresHardwareAcceleration()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_3

    :cond_2
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {v0}, Landroid/graphics/Bitmap;->setImmutable()V

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "BitmapTemporary"

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_6

    :cond_5
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RecordingCanvas;->scale(FF)V

    :cond_6
    invoke-virtual {v2, p0}, Landroid/graphics/RecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->endRecording()V

    invoke-static {v0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v4, :cond_7

    invoke-virtual {v3, p3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_7
    return-object v3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Config must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width & height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 12

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p4

    if-lez p1, :cond_7

    if-lez p2, :cond_7

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_6

    if-nez p5, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t create bitmap without a color space"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    iget v8, v1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    if-nez p5, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    :goto_1
    move-wide v10, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    move v5, p1

    move v6, p1

    move v7, p2

    invoke-static/range {v3 .. v11}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v0, :cond_3

    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, v3, Landroid/graphics/Bitmap;->mDensity:I

    :cond_3
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v4, :cond_4

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v1, v4, :cond_5

    :cond_4
    if-nez v2, :cond_5

    iget-wide v4, v3, Landroid/graphics/Bitmap;->mNativePtr:J

    const/high16 v6, -0x1000000

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    :cond_5
    return-object v3

    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "can\'t create mutable bitmap with Config.HARDWARE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v10, p4

    invoke-static/range {p4 .. p5}, Landroid/graphics/Bitmap;->checkWidthHeight(II)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v10, :cond_3

    add-int/lit8 v1, p5, -0x1

    mul-int v1, v1, p3

    add-int v11, p2, v1

    move-object/from16 v12, p1

    array-length v13, v12

    if-ltz p2, :cond_2

    add-int v1, p2, v10

    if-gt v1, v13, :cond_2

    if-ltz v11, :cond_2

    add-int v1, v11, v10

    if-gt v1, v13, :cond_2

    if-lez v10, :cond_1

    if-lez p5, :cond_1

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v14

    move-object/from16 v15, p6

    iget v6, v15, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-virtual {v14}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v8

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v9}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v1

    :cond_1
    move-object/from16 v15, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "width and height must be > 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v15, p6

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    move-object/from16 v12, p1

    move-object/from16 v15, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "abs(stride) must be >= width"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v8, p1, :cond_0

    if-eq v9, p2, :cond_1

    :cond_0
    int-to-float v1, p1

    int-to-float v2, v8

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, v9

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v8

    move v5, v9

    move-object v6, v0

    move v7, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist dumpAll(Ljava/lang/String;)V
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    return-void

    :cond_0
    const-string/jumbo v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_3
    const-string v0, "Bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No bitmaps dumped: unrecognized format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    const-class v1, Landroid/graphics/Bitmap;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v3, Landroid/graphics/Bitmap;->sAllBitmaps:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_2

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v0, v3}, Landroid/graphics/Bitmap$DumpData;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    sput-object v1, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x5a

    invoke-virtual {v3, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Bitmap$DumpData;->add(J[B)V

    :cond_7
    goto :goto_3

    :cond_8
    const-string v1, "Bitmap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap;->dumpData:Landroid/graphics/Bitmap$DumpData;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$DumpData;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmaps dumped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static greylist getDefaultDensity()I
    .locals 1

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    if-ltz v0, :cond_0

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0

    :cond_0
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    sget v0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return v0
.end method

.method private static native greylist-max-o nativeCompress(JIILjava/io/OutputStream;[B)Z
.end method

.method private static native blacklist nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native greylist-max-o nativeConfig(J)I
.end method

.method private static native greylist-max-o nativeCopy(JIZ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyAshmem(J)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyAshmemConfig(JI)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native greylist-max-o nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native greylist-max-o nativeCopyPreserveInternalConfig(J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
.end method

.method private static native greylist-max-o nativeErase(JI)V
.end method

.method private static native blacklist nativeErase(JJJ)V
.end method

.method private static native greylist-max-o nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeExtractGainmap(J)Landroid/graphics/Gainmap;
.end method

.method private static native greylist-max-o nativeGenerationId(J)I
.end method

.method private static native greylist-max-o nativeGetAllocationByteCount(J)I
.end method

.method private static native blacklist nativeGetAshmemFD(J)I
.end method

.method private static native blacklist nativeGetColor(JII)J
.end method

.method private static native blacklist nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;
.end method

.method private static native greylist-max-o nativeGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nativeGetPixel(JII)I
.end method

.method private static native greylist-max-o nativeGetPixels(J[IIIIIII)V
.end method

.method private static native greylist-max-o nativeHasAlpha(J)Z
.end method

.method private static native blacklist nativeHasGainmap(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeHasMipMap(J)Z
.end method

.method private static native blacklist nativeIsBackedByAshmem(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeIsImmutable(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeIsPremultiplied(J)Z
.end method

.method private static native greylist-max-o nativeIsSRGB(J)Z
.end method

.method private static native greylist-max-o nativeIsSRGBLinear(J)Z
.end method

.method private static native greylist-max-o nativePrepareToDraw(J)V
.end method

.method private static native greylist nativeReconfigure(JIIIZ)V
.end method

.method private static native blacklist nativeRecycle(J)V
.end method

.method private static native greylist-max-o nativeRowBytes(J)I
.end method

.method private static native greylist-max-o nativeSameAs(JJ)Z
.end method

.method private static native blacklist nativeSetColorSpace(JJ)V
.end method

.method private static native blacklist nativeSetGainmap(JJ)V
.end method

.method private static native greylist-max-o nativeSetHasAlpha(JZZ)V
.end method

.method private static native greylist-max-o nativeSetHasMipMap(JZ)V
.end method

.method private static native blacklist nativeSetImmutable(J)V
.end method

.method private static native greylist-max-o nativeSetPixel(JIII)V
.end method

.method private static native greylist-max-o nativeSetPixels(J[IIIIIII)V
.end method

.method private static native greylist-max-o nativeSetPremultiplied(JZ)V
.end method

.method private static native blacklist nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;
.end method

.method private static native blacklist nativeWriteToParcel(JILandroid/os/Parcel;)Z
.end method

.method private greylist-max-o noteHardwareBitmapSlowCall()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const-string v0, "Warning: attempt to read pixels from hardware bitmap, which is very slow operation"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static greylist scaleFromDensity(III)I
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, p0, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static greylist setDefaultDensity(I)V
    .locals 0

    sput p0, Landroid/graphics/Bitmap;->sDefaultDensity:I

    return-void
.end method

.method private blacklist setImmutable()V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeSetImmutable(J)V

    :cond_0
    return-void
.end method

.method private greylist setNinePatchChunk([B)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-void
.end method

.method private static blacklist transformGainmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;IILandroid/graphics/Paint;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 21

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v5, p2

    int-to-float v6, v5

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v14, p3

    int-to-float v7, v14

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v16

    const/4 v15, 0x0

    if-eqz v6, :cond_1

    if-nez v16, :cond_0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object v0, v15

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    iget v10, v0, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v10, v10

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float/2addr v11, v4

    float-to-int v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v7

    nop

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    iget v12, v7, Landroid/graphics/Bitmap$Config;->nativeInt:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    move v9, v6

    move v10, v6

    move/from16 v11, v16

    move-object/from16 v20, v13

    move/from16 v13, v17

    move-object v0, v15

    move-wide/from16 v14, v18

    invoke-static/range {v7 .. v15}, Landroid/graphics/Bitmap;->nativeCreate([IIIIIIZJ)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget v9, v1, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v10, v1, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, v20

    invoke-virtual {v8, v2, v12, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v7

    :cond_1
    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object v0, v15

    :goto_0
    return-object v0
.end method

.method public static whitelist wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/16 v2, 0x100

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x4000

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    if-nez p1, :cond_0

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/graphics/Bitmap;->nativeWrapHardwareBufferBitmap(Landroid/hardware/HardwareBuffer;J)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bitmap is not compatible with protected buffers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "usage flags must contain USAGE_GPU_SAMPLED_IMAGE."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist asShared()Landroid/graphics/Bitmap;
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create shared Bitmap!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o checkRecycled(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    .locals 9

    const-string v0, "Can\'t compress a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    const-string v0, "Compression of a bitmap is slow"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    const-string v0, "Bitmap.compress"

    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p1, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    const/16 v0, 0x1000

    new-array v8, v0, [B

    move v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->nativeCompress(JIILjava/io/OutputStream;[B)Z

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "quality must be 0..100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hardware bitmaps are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p1, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->nativeCopy(JIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_2
    return-object v0
.end method

.method public whitelist copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    .locals 11

    const-string v0, "copyPixelsFromBuffer called on recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to copyPixelsFromBuffer, Config#HARDWARE bitmaps are immutable"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_0
    int-to-long v2, v0

    shl-long/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsFromBuffer(JLjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist copyPixelsToBuffer(Ljava/nio/Buffer;)V
    .locals 11

    const-string/jumbo v0, "unable to copyPixelsToBuffer, pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_0
    int-to-long v2, v0

    shl-long/2addr v2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-wide v6, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->nativeCopyPixelsToBuffer(JLjava/nio/Buffer;)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    int-to-long v7, v6

    shr-long v9, v4, v1

    add-long/2addr v7, v9

    long-to-int v6, v7

    invoke-virtual {p1, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Buffer not large enough for pixels"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unsupported Buffer subclass"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-r createAshmemBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "Can\'t copy a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeCopyAshmem(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, v0, Landroid/graphics/Bitmap;->mDensity:I

    :cond_0
    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist eraseColor(I)V
    .locals 2

    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeErase(JI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist eraseColor(J)V
    .locals 7

    const-string v0, "Can\'t erase a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeErase(JJJ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot erase immutable bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist extractAlpha()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Can\'t extractAlpha on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v2, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/Bitmap;->nativeExtractAlpha(JJ[I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/graphics/Bitmap;->mDensity:I

    iput v3, v2, Landroid/graphics/Bitmap;->mDensity:I

    return-object v2

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to extractAlpha on Bitmap"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final whitelist getAllocationByteCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getAllocationByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAllocationByteCount(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getByteCount()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getByteCount() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor(II)Landroid/graphics/Color;
    .locals 11

    const-string v0, "Can\'t call getColor() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getColor(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetColor(JII)J

    move-result-wide v1

    const/4 v3, 0x0

    shr-long v4, v1, v3

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    invoke-static {v4}, Landroid/util/Half;->toFloat(S)F

    move-result v4

    const/16 v5, 0x10

    shr-long v8, v1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-short v5, v5

    invoke-static {v5}, Landroid/util/Half;->toFloat(S)F

    move-result v5

    const/16 v8, 0x20

    shr-long v8, v1, v8

    and-long/2addr v8, v6

    long-to-int v8, v8

    int-to-short v8, v8

    invoke-static {v8}, Landroid/util/Half;->toFloat(S)F

    move-result v8

    const/16 v9, 0x30

    shr-long v9, v1, v9

    and-long/2addr v6, v9

    long-to-int v6, v6

    int-to-short v6, v6

    invoke-static {v6}, Landroid/util/Half;->toFloat(S)F

    move-result v6

    invoke-static {v4, v0, v3}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v3

    const/4 v7, 0x1

    invoke-static {v5, v0, v7}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v7

    const/4 v9, 0x2

    invoke-static {v8, v0, v9}, Landroid/graphics/Bitmap;->clamp(FLandroid/graphics/ColorSpace;I)F

    move-result v9

    invoke-static {v3, v7, v9, v6, v0}, Landroid/graphics/Color;->valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v3

    return-object v3

    :cond_1
    :goto_0
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 2

    const-string v0, "getColorSpace called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeComputeColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public final whitelist getConfig()Landroid/graphics/Bitmap$Config;
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getConfig() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeConfig(J)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->nativeToConfig(I)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDensity()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getDensity() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public whitelist getGainmap()Landroid/graphics/Gainmap;
    .locals 2

    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeExtractGainmap(J)Landroid/graphics/Gainmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    return-object v0
.end method

.method public whitelist getGenerationId()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getGenerationId() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGenerationId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 3

    const-string v0, "Can\'t getHardwareBuffer from a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/graphics/Bitmap;->nativeGetHardwareBuffer(J)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    :cond_2
    return-object v0
.end method

.method public final whitelist getHeight()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getHeight() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mHeight:I

    return v0
.end method

.method public greylist-max-o getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    return-wide v0
.end method

.method public whitelist getNinePatchChunk()[B
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    return-object v0
.end method

.method public greylist-max-o getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    return-object v0
.end method

.method public greylist-max-o getOpticalInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchInsets:Landroid/graphics/NinePatch$InsetStruct;

    iget-object v0, v0, Landroid/graphics/NinePatch$InsetStruct;->opticalRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public whitelist getPixel(II)I
    .locals 2

    const-string v0, "Can\'t call getPixel() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getPixel(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {p0, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Bitmap;->nativeGetPixel(JII)I

    move-result v0

    return v0
.end method

.method public whitelist getPixels([IIIIIII)V
    .locals 18

    move-object/from16 v8, p0

    const-string v0, "Can\'t call getPixels() on a recycled bitmap"

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const-string/jumbo v0, "unable to getPixels(), pixel access is not supported on Config#HARDWARE bitmaps"

    invoke-direct {v8, v0}, Landroid/graphics/Bitmap;->checkHardware(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeGetPixels(J[IIIIIII)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final whitelist getRowBytes()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getRowBytes() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRowBytes(J)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledHeight(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(Landroid/graphics/Canvas;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/graphics/Canvas;->mDensity:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public whitelist getScaledWidth(Landroid/util/DisplayMetrics;)I
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/graphics/Bitmap;->mDensity:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result v0

    return v0
.end method

.method public blacklist getSharedMemory()Landroid/os/SharedMemory;
    .locals 3

    const-string v0, "Cannot access shared memory of a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsBackedByAshmem(J)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeGetAshmemFD(J)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Bitmap"

    const-string v2, "Unable to create dup\'d file descriptor for shared bitmap memory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getWidth()I
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called getWidth() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap;->mWidth:I

    return v0
.end method

.method public final whitelist hasAlpha()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called hasAlpha() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasAlpha(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasGainmap()Z
    .locals 2

    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasGainmap(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist hasMipMap()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called hasMipMap() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeHasMipMap(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isMutable()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsImmutable(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final whitelist isPremultiplied()Z
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-eqz v0, :cond_0

    const-string v0, "Bitmap"

    const-string v1, "Called isPremultiplied() on a recycle()\'d bitmap! This is undefined behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeIsPremultiplied(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    return v0
.end method

.method public whitelist prepareToDraw()V
    .locals 2

    const-string v0, "Can\'t prepareToDraw on a recycled bitmap!"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativePrepareToDraw(J)V

    return-void
.end method

.method public whitelist reconfigure(IILandroid/graphics/Bitmap$Config;)V
    .locals 7

    const-string v0, "Can\'t call reconfigure() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v5, p3, Landroid/graphics/Bitmap$Config;->nativeInt:I

    iget-boolean v6, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/Bitmap;->nativeReconfigure(JIIIZ)V

    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "only mutable bitmaps may be reconfigured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist recycle()V
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->nativeRecycle(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mNinePatchChunk:[B

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Bitmap;->mRecycled:Z

    iput-object v0, p0, Landroid/graphics/Bitmap;->mHardwareBuffer:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method greylist-max-r reinit(IIZ)V
    .locals 1

    iput p1, p0, Landroid/graphics/Bitmap;->mWidth:I

    iput p2, p0, Landroid/graphics/Bitmap;->mHeight:I

    iput-boolean p3, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public whitelist sameAs(Landroid/graphics/Bitmap;)Z
    .locals 4

    const-string/jumbo v0, "sameAs compares pixel data, not expected to be fast"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    const-string v0, "Can\'t call sameAs on a recycled bitmap!"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSameAs(JJ)Z

    move-result v0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compare to a recycled bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semGetTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Bitmap;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist semSetTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/Bitmap;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public whitelist setColorSpace(Landroid/graphics/ColorSpace;)V
    .locals 7

    const-string/jumbo v0, "setColorSpace called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The new ColorSpace cannot decrease the maximum value for any of the components compared to the current ColorSpace/ To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The new ColorSpace cannot increase the minimum value for any of the components compared to the current ColorSpace. To perform this type of conversion create a new Bitmap in the desired ColorSpace and draw this Bitmap into it."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    nop

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The new ColorSpace must have the same component count as the current ColorSpace"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iput-object v0, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    iget-wide v3, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-object v5, p0, Landroid/graphics/Bitmap;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->nativeSetColorSpace(JJ)V

    throw v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a ColorSpace on ALPHA_8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The colorSpace cannot be set to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public whitelist setDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Bitmap;->mDensity:I

    return-void
.end method

.method public whitelist setGainmap(Landroid/graphics/Gainmap;)V
    .locals 4

    const-string v0, "Bitmap is recycled"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Landroid/graphics/Gainmap;->mNativePtr:J

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->nativeSetGainmap(JJ)V

    return-void
.end method

.method public whitelist setHasAlpha(Z)V
    .locals 3

    const-string/jumbo v0, "setHasAlpha called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget-boolean v2, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/Bitmap;->nativeSetHasAlpha(JZZ)V

    return-void
.end method

.method public final whitelist setHasMipMap(Z)V
    .locals 2

    const-string/jumbo v0, "setHasMipMap called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetHasMipMap(JZ)V

    return-void
.end method

.method public whitelist setHeight(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public whitelist setPixel(III)V
    .locals 2

    const-string v0, "Can\'t call setPixel() on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/graphics/Bitmap;->checkPixelAccess(II)V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Bitmap;->nativeSetPixel(JIII)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist setPixels([IIIIIII)V
    .locals 18

    move-object/from16 v8, p0

    const-string v0, "Can\'t call setPixels() on a recycled bitmap"

    invoke-virtual {v8, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Bitmap;->checkPixelsAccess(IIIIII[I)V

    iget-wide v9, v8, Landroid/graphics/Bitmap;->mNativePtr:J

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-static/range {v9 .. v17}, Landroid/graphics/Bitmap;->nativeSetPixels(J[IIIIIII)V

    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final whitelist setPremultiplied(Z)V
    .locals 2

    const-string/jumbo v0, "setPremultiplied called on a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    iput-boolean p1, p0, Landroid/graphics/Bitmap;->mRequestPremultiplied:Z

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->nativeSetPremultiplied(JZ)V

    return-void
.end method

.method public whitelist setWidth(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "Can\'t parcel a recycled bitmap"

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->checkRecycled(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/Bitmap;->noteHardwareBitmapSlowCall()V

    iget-wide v0, p0, Landroid/graphics/Bitmap;->mNativePtr:J

    iget v2, p0, Landroid/graphics/Bitmap;->mDensity:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->nativeWriteToParcel(JILandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasGainmap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/graphics/Bitmap;->mGainmap:Landroid/graphics/Gainmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native writeToParcel failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
