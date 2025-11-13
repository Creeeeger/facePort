.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final greylist-max-o sFillTypeArray:[Landroid/graphics/Path$FillType;

.field private static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field public greylist-max-r isSimplePath:Z

.field private greylist-max-o mLastDirection:Landroid/graphics/Path$Direction;

.field public final greylist-max-o mNativePath:J

.field public greylist-max-r rects:Landroid/graphics/Region;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 40
    const-class v0, Landroid/graphics/Path;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Path;->nGetFinalizer()J

    move-result-wide v1

    .line 41
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 65
    invoke-static {}, Landroid/graphics/Path;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    .line 66
    sget-object v2, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;)V
    .locals 5
    .param p1, "src"    # Landroid/graphics/Path;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "valNative":J
    if-eqz p1, :cond_0

    .line 77
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    .line 78
    iget-boolean v2, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 79
    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Landroid/graphics/Region;

    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v2, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 83
    :cond_0
    invoke-static {v0, v1}, Landroid/graphics/Path;->nInit(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    .line 84
    sget-object v4, Landroid/graphics/Path;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v4, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 85
    return-void
.end method

.method private greylist-max-o detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 540
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_0

    .line 541
    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_1

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 547
    :cond_2
    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 549
    :goto_0
    return-void
.end method

.method private static native greylist-max-o nAddArc(JFFFFFF)V
.end method

.method private static native greylist-max-o nAddCircle(JFFFI)V
.end method

.method private static native greylist-max-o nAddOval(JFFFFI)V
.end method

.method private static native greylist-max-o nAddPath(JJ)V
.end method

.method private static native greylist-max-o nAddPath(JJFF)V
.end method

.method private static native greylist-max-o nAddPath(JJJ)V
.end method

.method private static native greylist-max-o nAddRect(JFFFFI)V
.end method

.method private static native greylist-max-o nAddRoundRect(JFFFFFFI)V
.end method

.method private static native greylist-max-o nAddRoundRect(JFFFF[FI)V
.end method

.method private static native greylist-max-o nApproximate(JF)[F
.end method

.method private static native greylist-max-o nArcTo(JFFFFFFZ)V
.end method

.method private static native greylist-max-o nClose(J)V
.end method

.method private static native greylist-max-o nComputeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native greylist-max-o nCubicTo(JFFFFFF)V
.end method

.method private static native greylist-max-o nGetFillType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFinalizer()J
.end method

.method private static native greylist-max-o nIncReserve(JI)V
.end method

.method private static native greylist-max-o nInit()J
.end method

.method private static native greylist-max-o nInit(J)J
.end method

.method private static native greylist-max-o nIsConvex(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nIsRect(JLandroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nLineTo(JFF)V
.end method

.method private static native greylist-max-o nMoveTo(JFF)V
.end method

.method private static native greylist-max-o nOffset(JFF)V
.end method

.method private static native greylist-max-o nOp(JJIJ)Z
.end method

.method private static native greylist-max-o nQuadTo(JFFFF)V
.end method

.method private static native greylist-max-o nRCubicTo(JFFFFFF)V
.end method

.method private static native greylist-max-o nRLineTo(JFF)V
.end method

.method private static native greylist-max-o nRMoveTo(JFF)V
.end method

.method private static native greylist-max-o nRQuadTo(JFFFF)V
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nRewind(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
.end method

.method private static native greylist-max-o nSetFillType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLastPoint(JFF)V
.end method

.method private static native greylist-max-o nTransform(JJ)V
.end method

.method private static native greylist-max-o nTransform(JJJ)V
.end method


# virtual methods
.method public whitelist addArc(FFFFFF)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 628
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nAddArc(JFFFFFF)V

    .line 629
    return-void
.end method

.method public whitelist addArc(Landroid/graphics/RectF;FF)V
    .locals 7
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 616
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 617
    return-void
.end method

.method public whitelist addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 604
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 605
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nAddCircle(JFFFI)V

    .line 606
    return-void
.end method

.method public whitelist addOval(FFFFLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 592
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget v7, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Path;->nAddOval(JFFFFI)V

    .line 593
    return-void
.end method

.method public whitelist addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 582
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 583
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 707
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nAddPath(JJ)V

    .line 708
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;FF)V
    .locals 7
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 697
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v3, p1, Landroid/graphics/Path;->mNativePath:J

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nAddPath(JJFF)V

    .line 698
    return-void
.end method

.method public whitelist addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 7
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 716
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 717
    :cond_0
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v3, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nAddPath(JJJ)V

    .line 718
    return-void
.end method

.method public whitelist addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "dir"    # Landroid/graphics/Path$Direction;

    .line 571
    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    .line 572
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nAddRect(JFFFFI)V

    .line 573
    return-void
.end method

.method public whitelist addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "dir"    # Landroid/graphics/Path$Direction;

    .line 558
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 559
    return-void
.end method

.method public whitelist addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    .line 652
    move-object v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 653
    iget-wide v2, v0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v1, p7

    iget v10, v1, Landroid/graphics/Path$Direction;->nativeInt:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->nAddRoundRect(JFFFFFFI)V

    .line 654
    return-void
.end method

.method public whitelist addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .line 682
    array-length v0, p5

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 686
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    iget v8, p6, Landroid/graphics/Path$Direction;->nativeInt:I

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nAddRoundRect(JFFFF[FI)V

    .line 687
    return-void

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "dir"    # Landroid/graphics/Path$Direction;

    .line 640
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 641
    return-void
.end method

.method public whitelist addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radii"    # [F
    .param p3, "dir"    # Landroid/graphics/Path$Direction;

    .line 666
    if-eqz p1, :cond_0

    .line 669
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 670
    return-void

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist approximate(F)[F
    .locals 2
    .param p1, "acceptableError"    # F

    .line 824
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 827
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nApproximate(JF)[F

    move-result-object v0

    return-object v0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AcceptableError must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist arcTo(FFFFFFZ)V
    .locals 11
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "forceMoveTo"    # Z

    .line 510
    move-object v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/Path;->isSimplePath:Z

    .line 511
    iget-wide v2, v0, Landroid/graphics/Path;->mNativePath:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->nArcTo(JFFFFFFZ)V

    .line 512
    return-void
.end method

.method public whitelist arcTo(Landroid/graphics/RectF;FF)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .line 493
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 494
    return-void
.end method

.method public whitelist arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 8
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "forceMoveTo"    # Z

    .line 478
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 479
    return-void
.end method

.method public whitelist close()V
    .locals 2

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 520
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nClose(J)V

    .line 521
    return-void
.end method

.method public whitelist computeBounds(Landroid/graphics/RectF;Z)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "exact"    # Z

    .line 334
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nComputeBounds(JLandroid/graphics/RectF;)V

    .line 335
    return-void
.end method

.method public whitelist cubicTo(FFFFFF)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 449
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nCubicTo(JFFFFFF)V

    .line 450
    return-void
.end method

.method public whitelist getFillType()Landroid/graphics/Path$FillType;
    .locals 3

    .line 271
    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist incReserve(I)V
    .locals 2
    .param p1, "extraPtCount"    # I

    .line 345
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIncReserve(JI)V

    .line 346
    return-void
.end method

.method public whitelist isConvex()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsConvex(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 2

    .line 308
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isInverseFillType()Z
    .locals 2

    .line 289
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 290
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isRect(Landroid/graphics/RectF;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 321
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIsRect(JLandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public whitelist lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 382
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nLineTo(JFF)V

    .line 383
    return-void
.end method

.method public whitelist moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 355
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nMoveTo(JFF)V

    .line 356
    return-void
.end method

.method final greylist-max-o mutateNI()J
    .locals 2

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 801
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public whitelist offset(FF)V
    .locals 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 744
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v1, :cond_0

    .line 746
    return-void

    .line 748
    :cond_0
    if-eqz v0, :cond_1

    float-to-double v0, p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    float-to-double v0, p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 751
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 753
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nOffset(JFF)V

    .line 754
    return-void
.end method

.method public whitelist offset(FFLandroid/graphics/Path;)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "dst"    # Landroid/graphics/Path;

    .line 729
    if-eqz p3, :cond_0

    .line 730
    invoke-virtual {p3, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    goto :goto_0

    .line 732
    :cond_0
    move-object p3, p0

    .line 734
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    .line 735
    return-void
.end method

.method public whitelist op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Landroid/graphics/Path$Op;

    .line 177
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 7
    .param p1, "path1"    # Landroid/graphics/Path;
    .param p2, "path2"    # Landroid/graphics/Path;
    .param p3, "op"    # Landroid/graphics/Path$Op;

    .line 195
    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p2, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v4

    iget-wide v5, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nOp(JJIJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    return v1
.end method

.method public whitelist quadTo(FFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 412
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nQuadTo(JFFFF)V

    .line 413
    return-void
.end method

.method public whitelist rCubicTo(FFFFFF)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 460
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Landroid/graphics/Path;->nRCubicTo(JFFFFFF)V

    .line 461
    return-void
.end method

.method public whitelist rLineTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 397
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRLineTo(JFF)V

    .line 398
    return-void
.end method

.method public whitelist rMoveTo(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 369
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRMoveTo(JFF)V

    .line 370
    return-void
.end method

.method public whitelist rQuadTo(FFFF)V
    .locals 7
    .param p1, "dx1"    # F
    .param p2, "dy1"    # F
    .param p3, "dx2"    # F
    .param p4, "dy2"    # F

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 431
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/Path;->nRQuadTo(JFFFF)V

    .line 432
    return-void
.end method

.method public final greylist-max-o readOnlyNI()J
    .locals 2

    .line 796
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public whitelist reset()V
    .locals 3

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 94
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    .line 98
    .local v0, "fillType":Landroid/graphics/Path$FillType;
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2}, Landroid/graphics/Path;->nReset(J)V

    .line 99
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 100
    return-void
.end method

.method public whitelist rewind()V
    .locals 2

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    .line 109
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 110
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nRewind(J)V

    .line 111
    return-void
.end method

.method public whitelist set(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Path;

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 120
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nSet(JJ)V

    .line 121
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_1

    .line 122
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_0

    .line 127
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v1, :cond_3

    .line 128
    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_4

    .line 130
    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    .line 132
    :cond_4
    :goto_0
    return-void
.end method

.method public whitelist setFillType(Landroid/graphics/Path$FillType;)V
    .locals 3
    .param p1, "ft"    # Landroid/graphics/Path$FillType;

    .line 280
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 281
    return-void
.end method

.method public whitelist setLastPoint(FF)V
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 764
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nSetLastPoint(JFF)V

    .line 765
    return-void
.end method

.method public whitelist toggleInverseFillType()V
    .locals 3

    .line 297
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    .line 298
    .local v0, "ft":I
    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    xor-int/2addr v0, v1

    .line 299
    iget-wide v1, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Path;->nSetFillType(JI)V

    .line 300
    return-void
.end method

.method public whitelist transform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    .line 791
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nTransform(JJ)V

    .line 792
    return-void
.end method

.method public whitelist transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 776
    const-wide/16 v0, 0x0

    .line 777
    .local v0, "dstNative":J
    if-eqz p2, :cond_0

    .line 778
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 779
    iget-wide v0, p2, Landroid/graphics/Path;->mNativePath:J

    .line 781
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v4

    move-wide v6, v0

    invoke-static/range {v2 .. v7}, Landroid/graphics/Path;->nTransform(JJJ)V

    .line 782
    return-void
.end method
