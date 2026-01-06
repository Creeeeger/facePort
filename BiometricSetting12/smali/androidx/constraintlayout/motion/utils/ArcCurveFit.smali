.class Landroidx/constraintlayout/motion/utils/ArcCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mTime:[D

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget v7, p1, v5

    const/4 v8, 0x2

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    move v2, v8

    move v4, v2

    goto :goto_2

    :pswitch_1
    move v2, v8

    move v4, v8

    goto :goto_2

    :pswitch_2
    move v2, v3

    move v4, v3

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x3

    :goto_2
    new-instance v21, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-wide v9, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget-wide v11, v1, v7

    aget-object v7, p3, v5

    const/4 v8, 0x0

    aget-wide v13, v7, v8

    aget-object v7, p3, v5

    aget-wide v15, v7, v3

    add-int/lit8 v7, v5, 0x1

    aget-object v7, p3, v7

    aget-wide v17, v7, v8

    add-int/lit8 v7, v5, 0x1

    aget-object v7, p3, v7

    aget-wide v19, v7, v3

    move-object/from16 v7, v21

    move v8, v2

    invoke-direct/range {v7 .. v20}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    aput-object v21, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPos(DI)D
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_3

    if-nez p3, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v1

    return-wide v1

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    return-wide v1

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v1

    return-wide v1

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    return-wide v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getPos(D[D)V
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide v4, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v4, v2

    if-ge v0, v4, :cond_4

    aget-object v2, v2, v0

    iget-wide v4, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v1

    aput-wide v1, p3, v3

    return-void

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v4

    aput-wide v4, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v1

    aput-wide v1, p3, v3

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getPos(D[F)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v3, v3, v0

    iget-wide v3, v3, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p3, v2

    return-void

    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, p3, v2

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getSlope(DI)D
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide v0, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v1, v1, v0

    iget-wide v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v1, :cond_3

    if-nez p3, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v1

    return-wide v1

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v1

    return-wide v1

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v1

    return-wide v1

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v1

    return-wide v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getSlope(D[D)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide v3, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    iget-wide p1, v0, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v3, v3, v0

    iget-wide v3, v3, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v3

    aput-wide v3, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide v3

    aput-wide v3, p3, v2

    return-void

    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide v3

    aput-wide v3, p3, v1

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mArcs:[Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide v3

    aput-wide v3, p3, v2

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ArcCurveFit;->mTime:[D

    return-object v0
.end method
