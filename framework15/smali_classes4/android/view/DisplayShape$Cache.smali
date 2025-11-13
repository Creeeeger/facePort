.class final Landroid/view/DisplayShape$Cache;
.super Ljava/lang/Object;
.source "DisplayShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field private static blacklist sCacheForPath:Landroid/view/DisplayShape;

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayShape:Landroid/view/DisplayShape;

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPath:Landroid/graphics/Path;

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedSpec:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDisplayShape(Ljava/lang/String;FII)Landroid/view/DisplayShape;
    .locals 9

    sget-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/DisplayShape$Cache;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/view/DisplayShape$Cache;->sCachedDisplayWidth:I

    if-ne v1, p2, :cond_0

    sget v1, Landroid/view/DisplayShape$Cache;->sCachedDisplayHeight:I

    if-ne v1, p3, :cond_0

    sget v1, Landroid/view/DisplayShape$Cache;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/DisplayShape$Cache;->sCachedDisplayShape:Landroid/view/DisplayShape;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Landroid/view/DisplayShape;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p2

    move v5, p3

    move v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFILandroid/view/DisplayShape-IA;)V

    move-object v1, v0

    sget-object v2, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    sput-object p0, Landroid/view/DisplayShape$Cache;->sCachedSpec:Ljava/lang/String;

    sput p2, Landroid/view/DisplayShape$Cache;->sCachedDisplayWidth:I

    sput p3, Landroid/view/DisplayShape$Cache;->sCachedDisplayHeight:I

    sput p1, Landroid/view/DisplayShape$Cache;->sCachedPhysicalPixelDisplaySizeRatio:F

    sput-object v1, Landroid/view/DisplayShape$Cache;->sCachedDisplayShape:Landroid/view/DisplayShape;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static blacklist getPath(Landroid/view/DisplayShape;)Landroid/graphics/Path;
    .locals 5

    sget-object v0, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/DisplayShape$Cache;->sCacheForPath:Landroid/view/DisplayShape;

    invoke-virtual {p0, v1}, Landroid/view/DisplayShape;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/DisplayShape$Cache;->sCachedPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I

    move-result v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmDisplayWidth(Landroid/view/DisplayShape;)I

    move-result v3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmDisplayHeight(Landroid/view/DisplayShape;)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Landroid/util/RotationUtils;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    :cond_1
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v2

    invoke-static {p0}, Landroid/view/DisplayShape;->-$$Nest$fgetmScale(Landroid/view/DisplayShape;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_5
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_6
    sget-object v2, Landroid/view/DisplayShape$Cache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    sput-object p0, Landroid/view/DisplayShape$Cache;->sCacheForPath:Landroid/view/DisplayShape;

    sput-object v1, Landroid/view/DisplayShape$Cache;->sCachedPath:Landroid/graphics/Path;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
