.class public Landroid/graphics/Canvas;
.super Landroid/graphics/BaseCanvas;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Canvas$NoImagePreloadHolder;,
        Landroid/graphics/Canvas$VertexMode;,
        Landroid/graphics/Canvas$EdgeType;,
        Landroid/graphics/Canvas$Saveflags;
    }
.end annotation


# static fields
.field public static final whitelist ALL_SAVE_FLAG:I = 0x1f

.field public static final greylist CLIP_SAVE_FLAG:I = 0x2

.field public static final greylist CLIP_TO_LAYER_SAVE_FLAG:I = 0x10

.field public static final greylist FULL_COLOR_LAYER_SAVE_FLAG:I = 0x8

.field public static final greylist HAS_ALPHA_LAYER_SAVE_FLAG:I = 0x4

.field public static final greylist MATRIX_SAVE_FLAG:I = 0x1

.field private static final blacklist MAXIMUM_BITMAP_SIZE:I = 0x7ffe

.field private static greylist-max-o sCompatibilityRestore:Z

.field private static greylist-max-o sCompatibilitySetBitmap:Z

.field private static blacklist sCompatibilityVersion:I


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

    const/4 v0, 0x0

    sput v0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nInitRaster(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    invoke-static {}, Landroid/graphics/Bitmap;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/BaseCanvas;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nInitRaster(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    sget-object v0, Landroid/graphics/Canvas$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Immutable bitmap passed to Canvas constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkValidClipOp(Landroid/graphics/Region$Op;)V
    .locals 2

    sget v0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Region.Op - only INTERSECT and DIFFERENCE are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static greylist-max-o checkValidSaveFlags(I)V
    .locals 2

    sget v0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const/16 v0, 0x1f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Layer Save Flag - only ALL_SAVE_FLAGS is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static greylist freeCaches()V
    .locals 0

    invoke-static {}, Landroid/graphics/Canvas;->nFreeCaches()V

    return-void
.end method

.method public static greylist-max-r freeTextLayoutCaches()V
    .locals 0

    invoke-static {}, Landroid/graphics/Canvas;->nFreeTextLayoutCaches()V

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

.method private static native blacklist nClipShader(JJI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nConcat(J[F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
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

.method private static native blacklist nIsHighContrastText(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
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

    sput p0, Landroid/graphics/Canvas;->sCompatibilityVersion:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    invoke-static {p0}, Landroid/graphics/Canvas;->nSetCompatibilityVersion(I)V

    return-void
.end method


# virtual methods
.method public whitelist clipOutPath(Landroid/graphics/Path;)Z
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist clipOutRect(FFFF)Z
    .locals 7

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

.method public whitelist clipOutShader(Landroid/graphics/Shader;)V
    .locals 5

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    iget v4, v4, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->nClipShader(JJI)V

    return-void
.end method

.method public whitelist clipPath(Landroid/graphics/Path;)Z
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p5}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Landroid/graphics/Canvas;->checkValidClipOp(Landroid/graphics/Region$Op;)V

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public greylist clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clipShader(Landroid/graphics/Shader;)V
    .locals 5

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    iget v4, v4, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->nClipShader(JJI)V

    return-void
.end method

.method public whitelist concat(Landroid/graphics/Matrix44;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-object v2, p1, Landroid/graphics/Matrix44;->mBackingArray:[F

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->nConcat(J[F)V

    :cond_0
    return-void
.end method

.method public whitelist concat(Landroid/graphics/Matrix;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nConcat(JJ)V

    :cond_0
    return-void
.end method

.method public whitelist disableZ()V
    .locals 0

    return-void
.end method

.method public whitelist drawARGB(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawARGB(IIII)V

    return-void
.end method

.method public whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p8}, Landroid/graphics/BaseCanvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    return-void
.end method

.method public whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public whitelist drawColor(J)V
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-super {p0, p1, p2, v0}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawColor(JLandroid/graphics/BlendMode;)V

    return-void
.end method

.method public whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawLines([FIILandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawLines([FLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawLines([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPaint(Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/BaseCanvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

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

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPoints([FLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawRGB(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/BaseCanvas;->drawRGB(III)V

    return-void
.end method

.method public whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public blacklist drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/BaseCanvas;->drawRegion(Landroid/graphics/Region;Landroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawRenderNode(Landroid/graphics/RenderNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support drawRenderNode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/BaseCanvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/BaseCanvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p9}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 0

    invoke-super/range {p0 .. p12}, Landroid/graphics/BaseCanvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    return-void
.end method

.method public whitelist enableZ()V
    .locals 0

    return-void
.end method

.method public final whitelist getClipBounds()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    return-object v0
.end method

.method public whitelist getClipBounds(Landroid/graphics/Rect;)Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nGetClipBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getDensity()I
    .locals 1

    iget v0, p0, Landroid/graphics/Canvas;->mDensity:I

    return v0
.end method

.method public whitelist getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public final whitelist getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nGetMatrix(JJ)V

    return-void
.end method

.method public whitelist getMaximumBitmapHeight()I
    .locals 1

    const/16 v0, 0x7ffe

    return v0
.end method

.method public whitelist getMaximumBitmapWidth()I
    .locals 1

    const/16 v0, 0x7ffe

    return v0
.end method

.method public greylist getNativeCanvasWrapper()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    return-wide v0
.end method

.method public whitelist getSaveCount()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetSaveCount(J)I

    move-result v0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHighContrastTextEnabled()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsHighContrastText(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isOpaque()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nIsOpaque(J)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(FFFF)Z
    .locals 6

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nQuickReject(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist quickReject(Landroid/graphics/RectF;)Z
    .locals 6

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Canvas;->mFinalizer:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public whitelist restore()V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1}, Landroid/graphics/Canvas;->nRestore(J)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Underflow in restore - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist restoreToCount(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    sget-boolean v0, Landroid/graphics/Canvas;->sCompatibilityRestore:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Underflow in restoreToCount - more restores than saves"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRestoreToCount(JI)V

    return-void
.end method

.method public blacklist restoreUnclippedLayer(ILandroid/graphics/Paint;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/Canvas;->nRestoreUnclippedLayer(JIJ)V

    return-void
.end method

.method public whitelist rotate(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nRotate(JF)V

    return-void
.end method

.method public final whitelist rotate(FFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public whitelist save()I
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public greylist save(I)I
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Canvas;->nSave(JI)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayer(FFFFLandroid/graphics/Paint;)I
    .locals 7

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

    invoke-static {p6}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v6, v2

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

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    :cond_0
    invoke-static {p3}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

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

    invoke-static {p6}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

    const/4 v0, 0x0

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

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

    const/16 v0, 0x1f

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public whitelist saveLayerAlpha(Landroid/graphics/RectF;II)I
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v0

    :cond_0
    invoke-static {p3}, Landroid/graphics/Canvas;->checkValidSaveFlags(I)V

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

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nScale(JFF)V

    return-void
.end method

.method public final whitelist scale(FFFF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-boolean v1, Landroid/graphics/Canvas;->sCompatibilitySetBitmap:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Canvas;->nSetBitmap(JJ)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    iget-wide v1, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Canvas;->nSetBitmap(JJ)V

    iget v1, p1, Landroid/graphics/Bitmap;->mDensity:I

    iput v1, p0, Landroid/graphics/Canvas;->mDensity:I

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    iput-object p1, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t set a bitmap device on a HW accelerated canvas"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDensity(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Canvas;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_0
    iput p1, p0, Landroid/graphics/Canvas;->mDensity:I

    return-void
.end method

.method public whitelist setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/DrawFilter;->mNativeInt:J

    :cond_0
    iput-object p1, p0, Landroid/graphics/Canvas;->mDrawFilter:Landroid/graphics/DrawFilter;

    iget-wide v2, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Canvas;->nSetDrawFilter(JJ)V

    return-void
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Canvas;->nSetMatrix(JJ)V

    return-void
.end method

.method public greylist setScreenDensity(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/Canvas;->mScreenDensity:I

    return-void
.end method

.method public whitelist skew(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nSkew(JFF)V

    return-void
.end method

.method public whitelist translate(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Canvas;->mNativeCanvasWrapper:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Canvas;->nTranslate(JFF)V

    return-void
.end method
