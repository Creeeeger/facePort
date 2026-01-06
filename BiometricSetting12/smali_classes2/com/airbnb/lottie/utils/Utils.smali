.class public final Lcom/airbnb/lottie/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INV_SQRT_2:F

.field public static final SECOND_IN_NANOS:I = 0x3b9aca00

.field private static dpScale:F

.field private static final threadLocalPathMeasure:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/PathMeasure;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalPoints:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field

.field private static final threadLocalTempPath:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalTempPath2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$1;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$2;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$2;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$3;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$3;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath2:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/airbnb/lottie/utils/Utils$4;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/Utils$4;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Ljava/lang/ThreadLocal;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V
    .locals 14

    move-object v0, p0

    const-string v1, "applyTrimPathIfNeeded"

    invoke-static {v1}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    sget-object v2, Lcom/airbnb/lottie/utils/Utils;->threadLocalPathMeasure:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PathMeasure;

    sget-object v3, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    sget-object v4, Lcom/airbnb/lottie/utils/Utils;->threadLocalTempPath2:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v6

    const/4 v8, 0x0

    if-nez v7, :cond_0

    cmpl-float v7, p2, v8

    if-nez v7, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    cmpg-float v7, v5, v6

    if-ltz v7, :cond_9

    sub-float v7, p2, p1

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v9

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    mul-float v6, v5, p1

    mul-float v7, v5, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v10

    mul-float v11, p3, v5

    add-float/2addr v9, v11

    add-float/2addr v10, v11

    cmpl-float v12, v9, v5

    if-ltz v12, :cond_2

    cmpl-float v12, v10, v5

    if-ltz v12, :cond_2

    invoke-static {v9, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v12

    int-to-float v9, v12

    invoke-static {v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v12

    int-to-float v10, v12

    :cond_2
    cmpg-float v12, v9, v8

    if-gez v12, :cond_3

    invoke-static {v9, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v12

    int-to-float v9, v12

    :cond_3
    cmpg-float v12, v10, v8

    if-gez v12, :cond_4

    invoke-static {v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(FF)I

    move-result v12

    int-to-float v10, v12

    :cond_4
    cmpl-float v12, v9, v10

    if-nez v12, :cond_5

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_5
    cmpl-float v12, v9, v10

    if-ltz v12, :cond_6

    sub-float/2addr v9, v5

    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v12, 0x1

    invoke-virtual {v2, v9, v10, v3, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    cmpl-float v13, v10, v5

    if-lez v13, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    rem-float v13, v10, v5

    invoke-virtual {v2, v8, v13, v4, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    :cond_7
    cmpg-float v8, v9, v8

    if-gez v8, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    add-float v8, v5, v9

    invoke-virtual {v2, v8, v5, v4, v12}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_8
    :goto_0
    invoke-virtual {p0, v3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_9
    :goto_1
    invoke-static {v1}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method

.method public static applyTrimPathIfNeeded(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/TrimPathContent;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v1

    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v0, v3

    div-float v3, v1, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float v5, v2, v5

    invoke-static {p0, v4, v3, v5}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/PointF;->length()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    return-object v0
.end method

.method public static dpScale()F
    .locals 2

    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    :cond_0
    sget v0, Lcom/airbnb/lottie/utils/Utils;->dpScale:F

    return v0
.end method

.method public static getAnimationScale(Landroid/content/Context;)F
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "animator_duration_scale"

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getScale(Landroid/graphics/Matrix;)F
    .locals 7

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    sget v2, Lcom/airbnb/lottie/utils/Utils;->INV_SQRT_2:F

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v5, 0x3

    aput v2, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v0, v4

    aget v1, v0, v1

    sub-float/2addr v2, v1

    aget v1, v0, v5

    aget v3, v0, v3

    sub-float/2addr v1, v3

    float-to-double v3, v2

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static hasZeroScaleAxis(Landroid/graphics/Matrix;)Z
    .locals 6

    sget-object v0, Lcom/airbnb/lottie/utils/Utils;->threadLocalPoints:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const v2, 0x471212bb

    const/4 v4, 0x2

    aput v2, v0, v4

    const v2, 0x471a973c

    const/4 v5, 0x3

    aput v2, v0, v5

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v0, v1

    aget v4, v0, v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    aget v2, v0, v3

    aget v4, v0, v5

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public static hashFor(FFFF)I
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int v0, v2

    :cond_0
    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    :cond_1
    cmpl-float v2, p2, v1

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    :cond_2
    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v0, v1

    :cond_3
    return v0
.end method

.method public static isAtLeastVersion(IIIIII)Z
    .locals 2

    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-le p0, p3, :cond_1

    return v1

    :cond_1
    if-ge p1, p4, :cond_2

    return v0

    :cond_2
    if-le p1, p4, :cond_3

    return v1

    :cond_3
    if-lt p2, p5, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public static isNetworkException(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static renderPath(Landroid/graphics/Path;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/airbnb/lottie/animation/LPaint;

    invoke-direct {v3}, Lcom/airbnb/lottie/animation/LPaint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static resizeBitmapIfNeeded(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    const/16 v0, 0x1f

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/lottie/utils/Utils;->saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public static saveLayerCompat(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V
    .locals 3

    const-string v0, "Utils#saveLayer"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    :goto_0
    invoke-static {v0}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void
.end method
