.class public Landroid/graphics/Canvas;
.super Landroid/graphics/BaseCanvas;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$Saveflags;,
        Landroid/graphics/Canvas$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final whitelist ALL_SAVE_FLAG:I = 0x1f

.field public static final greylist CLIP_SAVE_FLAG:I = 0x2

.field public static final greylist CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final greylist FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final greylist HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final greylist MATRIX_SAVE_FLAG:I = 0x1

.field private static final greylist-max-o MAXMIMUM_BITMAP_SIZE:I = 0x7ffe

.field private static greylist-max-o sCompatibilityRestore:Z

.field private static greylist-max-o sCompatibilitySetBitmap:Z

.field private static greylist-max-o sCompatiblityVersion:I


# instance fields
.field private greylist-max-p mBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mDrawFilter:Landroid/graphics/DrawFilter;

.field private greylist-max-o mFinalizer:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/Canvas;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    sput v0, Landroid/graphics/Canvas;->sCompatiblityVersion:I

    .line 56
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    .line 57
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nInitRaster(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 96
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 101
    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 3
    .param p1, "nativeCanvas"    # J

    .line 128
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    .line 129
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 132
    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 133
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 135
    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 136
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 112
    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nInitRaster(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 118
    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 120
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 122
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkValidClipOp(Landroid/graphics/Region$Op;)V
    .locals 2
    .param p0, "op"    # Landroid/graphics/Region$Op;

    .line 819
    sget v0, Landroid/graphics/Canvas;->sCompatiblityVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Region.Op - only INTERSECT and DIFFERENCE are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_1
    :goto_0
    return-void
.end method

.method private static greylist-max-o checkValidSaveFlags(I)V
    .locals 2
    .param p0, "saveFlags"    # I

    .line 410
    sget v0, Landroid/graphics/Canvas;->sCompatiblityVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const/16 v0, 0x1f

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Layer Save Flag - only ALL_SAVE_FLAGS is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    :goto_0
    return-void
.end method

.method public static greylist freeCaches()V
    .locals 0

    .line 1371
    invoke-static {}, Landroid/graphics/Canvas;->nFreeCaches()V

    .line 1372
    return-void
.end method

.method public static greylist-max-r freeTextLayoutCaches()V
    .locals 0

    .line 1381
    invoke-static {}, Landroid/graphics/Canvas;->nFreeTextLayoutCaches()V

    .line 1382
    return-void
.end method

.method private static native greylist-max-o nClipPath(JJI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nClipRect(JFFFFI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nFreeCaches()V
.end method

.method private static native greylist-max-o nFreeTextLayoutCaches()V
.end method

.method private static native greylist-max-o nGetClipBounds(JLandroid/graphics/Rect;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetSaveCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInitRaster(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsOpaque(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nQuickReject(JFFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nQuickReject(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRestore(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRestoreToCount(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nRestoreUnclippedLayer(JIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSave(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSaveLayer(JFFFFJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSaveLayerAlpha(JFFFFI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSaveUnclippedLayer(JIIII)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetBitmap(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetCompatibilityVersion(I)V
.end method

.method private static native greylist-max-o nSetDrawFilter(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static greylist-max-o setCompatibilityVersion(I)V
    .locals 3
    .param p0, "apiLevel"    # I

    .line 1385
    sput p0, Landroid/graphics/Canvas;->sCompatiblityVersion:I

    .line 1386
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge p0, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    .line 1387
    const/16 v2, 0x1a

    if-ge p0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    .line 1388
    invoke-static {p0}, Landroid/graphics/Canvas;->nSetCompatibilityVersion(I)V

    .line 1389
    return-void
.end method


# virtual methods
.method public whitelist clipOutPath(Landroid/graphics/Path;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .line 1070
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist clipOutRect(FFFF)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 993
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipOutRect(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1026
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipOutRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 928
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipOutRect(Landroid/graphics/RectF;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 904
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipPath(Landroid/graphics/Path;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .line 1060
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Region$Op;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1049
    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 1050
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget v4, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->nClipPath(JJI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(FFFF)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 978
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v2, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "op"    # Landroid/graphics/Region$Op;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 960
    invoke-static {p5}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 961
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1011
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 916
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 868
    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 869
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(Landroid/graphics/RectF;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 892
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public whitelist clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "op"    # Landroid/graphics/Region$Op;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 844
    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

    .line 845
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o clipRectUnion(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 880
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    iget v6, v6, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Canvas;->nClipRect(JFFFFI)Z

    move-result v0

    return v0
.end method

.method public greylist clipRegion(Landroid/graphics/Region;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1109
    const/4 v0, 0x0

    return v0
.end method

.method public greylist clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist concat(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 764
    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nConcat(JJ)V

    .line 765
    :cond_0
    return-void
.end method

.method public whitelist disableZ()V
    .locals 0

    .line 240
    return-void
.end method

.method public whitelist drawARGB(IIII)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 1535
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawARGB(IIII)V

    .line 1536
    return-void
.end method

.method public whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 1522
    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 1523
    return-void
.end method

.method public whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 1493
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1494
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1556
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1557
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 1656
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1657
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1604
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1605
    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1580
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1581
    return-void
.end method

.method public whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1631
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 1632
    return-void
.end method

.method public whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1645
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 1646
    return-void
.end method

.method public whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 1686
    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 1688
    return-void
.end method

.method public whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1700
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1701
    return-void
.end method

.method public whitelist drawColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 1710
    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 1711
    return-void
.end method

.method public whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 1745
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/BlendMode;)V

    .line 1746
    return-void
.end method

.method public whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1734
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1735
    return-void
.end method

.method public whitelist drawColor(J)V
    .locals 1
    .param p1, "color"    # J

    .line 1723
    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-super {p0, p1, p2, v0}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    .line 1724
    return-void
.end method

.method public whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .locals 0
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;

    .line 1759
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    .line 1760
    return-void
.end method

.method public whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 2024
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2025
    return-void
.end method

.method public whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 2048
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    .line 2049
    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "glyphIds"    # [I
    .param p2, "glyphIdOffset"    # I
    .param p3, "positions"    # [F
    .param p4, "positionOffset"    # I
    .param p5, "glyphCount"    # I
    .param p6, "font"    # Landroid/graphics/fonts/Font;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 2084
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    .line 2086
    return-void
.end method

.method public whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 1778
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1779
    return-void
.end method

.method public whitelist drawLines([FIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1796
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 1797
    return-void
.end method

.method public whitelist drawLines([FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 1800
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 1801
    return-void
.end method

.method public whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 1818
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 1819
    return-void
.end method

.method public whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 1810
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1811
    return-void
.end method

.method public whitelist drawPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 1829
    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1830
    return-void
.end method

.method public whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 1840
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1841
    return-void
.end method

.method public whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 1851
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1852
    return-void
.end method

.method public whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 1862
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1863
    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 1305
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 1306
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1307
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1308
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1309
    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 1328
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1329
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1330
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1331
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1332
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1331
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1334
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1335
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1336
    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .line 1315
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 1316
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1317
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 1318
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1320
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 1321
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 1322
    return-void
.end method

.method public whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 1869
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1870
    return-void
.end method

.method public whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1887
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1888
    return-void
.end method

.method public whitelist drawPoints([FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 1894
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 1895
    return-void
.end method

.method public whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1929
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 1930
    return-void
.end method

.method public whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1913
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 1914
    return-void
.end method

.method public whitelist drawRGB(III)V
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 1977
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawRGB(III)V

    .line 1978
    return-void
.end method

.method public whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 1965
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1966
    return-void
.end method

.method public whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 1951
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1952
    return-void
.end method

.method public whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 1940
    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1941
    return-void
.end method

.method public whitelist drawRenderNode(Landroid/graphics/RenderNode;)V
    .locals 2
    .param p1, "renderNode"    # Landroid/graphics/RenderNode;

    .line 2316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support drawRenderNode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 2003
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 2004
    return-void
.end method

.method public whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 1990
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1991
    return-void
.end method

.method public whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 2144
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2145
    return-void
.end method

.method public whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 2112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2113
    return-void
.end method

.method public whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 2128
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2129
    return-void
.end method

.method public whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 2099
    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 2100
    return-void
.end method

.method public whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 2176
    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2177
    return-void
.end method

.method public whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 2161
    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 2162
    return-void
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 2267
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 2268
    return-void
.end method

.method public whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 2242
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 2243
    return-void
.end method

.method public whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 0
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 2203
    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 2204
    return-void
.end method

.method public whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .line 2302
    invoke-super/range {p0 .. p12}, Landroid/graphics/BaseCanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 2304
    return-void
.end method

.method public whitelist enableZ()V
    .locals 0

    .line 228
    return-void
.end method

.method public final whitelist getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1289
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1290
    return-object v0
.end method

.method public whitelist getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1279
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nGetClipBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getDensity()I
    .locals 1

    .line 282
    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public whitelist getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .line 1113
    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 2

    .line 267
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 814
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 815
    return-object v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "ctm"    # Landroid/graphics/Matrix;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nGetMatrix(JJ)V

    .line 798
    return-void
.end method

.method public whitelist getMaximumBitmapHeight()I
    .locals 1

    .line 329
    const/16 v0, 0x7ffe

    return v0
.end method

.method public whitelist getMaximumBitmapWidth()I
    .locals 1

    .line 318
    const/16 v0, 0x7ffe

    return v0
.end method

.method public greylist getNativeCanvasWrapper()J
    .locals 2

    .line 62
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public whitelist getSaveCount()I
    .locals 2

    .line 656
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetSaveCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 2

    .line 258
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist isHardwareAccelerated()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 2

    .line 249
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsOpaque(J)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(FFFF)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 1266
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "type"    # Landroid/graphics/Canvas$EdgeType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(Landroid/graphics/Path;)Z
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    .line 1217
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1201
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(Landroid/graphics/RectF;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 1179
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "type"    # Landroid/graphics/Canvas$EdgeType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1164
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nQuickReject(JFFFF)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r release()V
    .locals 2

    .line 1357
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 1358
    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1359
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1360
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    .line 1362
    :cond_0
    return-void
.end method

.method public whitelist restore()V
    .locals 2

    .line 645
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nRestore(J)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Underflow in restore - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist restoreToCount(I)V
    .locals 2
    .param p1, "saveCount"    # I

    .line 673
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 674
    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const/4 p1, 0x1

    goto :goto_0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Underflow in restoreToCount - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRestoreToCount(JI)V

    .line 683
    return-void
.end method

.method public blacklist restoreUnclippedLayer(ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "saveCount"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 538
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/Canvas;->nRestoreUnclippedLayer(JIJ)V

    .line 539
    return-void
.end method

.method public whitelist rotate(F)V
    .locals 2
    .param p1, "degrees"    # F

    .line 728
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 729
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRotate(JF)V

    .line 730
    return-void
.end method

.method public final whitelist rotate(FFF)V
    .locals 2
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 740
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 742
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 743
    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 744
    return-void
.end method

.method public whitelist save()I
    .locals 3

    .line 428
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public greylist save(I)I
    .locals 2
    .param p1, "saveFlags"    # I

    .line 450
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 561
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayer(FFFFLandroid/graphics/Paint;I)I
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "saveFlags"    # I

    .line 551
    invoke-static {p6}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 552
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 553
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v6, v2

    .line 552
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/Canvas;->nSaveLayer(JFFFFJ)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 521
    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "saveFlags"    # I

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 489
    :cond_0
    invoke-static {p3}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 490
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayerAlpha(FFFFI)I
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I

    .line 636
    const/16 v6, 0x1f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayerAlpha(FFFFII)I
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I
    .param p6, "saveFlags"    # I

    .line 626
    invoke-static {p6}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 627
    const/4 v0, 0x0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 628
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Landroid/graphics/Canvas;->nSaveLayerAlpha(JFFFFI)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayerAlpha(Landroid/graphics/RectF;I)I
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I

    .line 613
    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I
    .param p3, "saveFlags"    # I

    .line 595
    if-nez p1, :cond_0

    .line 596
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 598
    :cond_0
    invoke-static {p3}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    .line 599
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/16 v6, 0x1f

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public greylist-max-o saveUnclippedLayer(IIII)I
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 528
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Canvas;->nSaveUnclippedLayer(JIIII)I

    move-result v0

    return v0
.end method

.method public whitelist scale(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 703
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 704
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nScale(JFF)V

    .line 705
    return-void
.end method

.method public final whitelist scale(FFFF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 716
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 718
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 719
    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 720
    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 164
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "preservedMatrix":Landroid/graphics/Matrix;
    if-eqz p1, :cond_0

    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 173
    :cond_0
    if-nez p1, :cond_1

    .line 174
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Canvas;->nSetBitmap(JJ)V

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 182
    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Canvas;->nSetBitmap(JJ)V

    .line 183
    iget v1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 186
    :goto_0
    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 190
    :cond_2
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    .line 191
    return-void

    .line 178
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 165
    .end local v0    # "preservedMatrix":Landroid/graphics/Matrix;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t set a bitmap device on a HW accelerated canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .line 298
    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 301
    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    .line 302
    return-void
.end method

.method public whitelist setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    .line 1117
    const-wide/16 v0, 0x0

    .line 1118
    .local v0, "nativeFilter":J
    if-eqz p1, :cond_0

    .line 1119
    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    .line 1121
    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    .line 1122
    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nSetDrawFilter(JJ)V

    .line 1123
    return-void
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 781
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    .line 782
    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    .line 781
    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nSetMatrix(JJ)V

    .line 783
    return-void
.end method

.method public greylist setScreenDensity(I)V
    .locals 0
    .param p1, "density"    # I

    .line 307
    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    .line 308
    return-void
.end method

.method public whitelist skew(FF)V
    .locals 2
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 753
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nSkew(JFF)V

    .line 755
    return-void
.end method

.method public whitelist translate(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 692
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 693
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nTranslate(JFF)V

    .line 694
    return-void
.end method
