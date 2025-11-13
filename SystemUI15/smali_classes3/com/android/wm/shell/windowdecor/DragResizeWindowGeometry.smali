.class public final Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final DEBUG:Z = true

.field static final EDGE_DEBUG_BUFFER:I = 0xf

.field public static sIsPointerInput:Z


# instance fields
.field public final mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

.field public final mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

.field public final mHandleWidth:I

.field public final mLargeTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

.field public final mResizeHandleThickness:I

.field public final mTaskCornerRadius:I

.field public final mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

.field public final mTaskSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(ILandroid/util/Size;III)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;-><init>(ILandroid/util/Size;IIIIII)V

    return-void
.end method

.method public constructor <init>(ILandroid/util/Size;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskCornerRadius:I

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    iput p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mResizeHandleThickness:I

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    invoke-direct {p1, p2, p5, p7, p8}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;-><init>(Landroid/util/Size;III)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mLargeTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    invoke-direct {p1, p2, p4, p7, p8}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;-><init>(Landroid/util/Size;III)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;-><init>(Landroid/util/Size;II)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    add-int/lit8 p3, p3, 0xf

    invoke-direct {p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;-><init>(Landroid/util/Size;II)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz p1, :cond_0

    iput p6, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mHandleWidth:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateCtrlType(FFZ)I
    .locals 2

    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->calculateCornersCtrlType(FF)I

    move-result p3

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateEdgeResizeCtrlType(FF)I

    move-result p0

    or-int/2addr p0, p3

    return p0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->calculateCornersCtrlType(FF)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateEdgeResizeCtrlType(FF)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final calculateEdgeResizeCtrlType(FF)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    if-eqz v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_1

    float-to-int v3, p1

    float-to-int v4, p2

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->sIsPointerInput:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerTouchableRegion:Landroid/graphics/Region;

    float-to-int v5, p1

    float-to-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    iget v4, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerResizeHandleThickness:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_3

    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v4, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerResizeHandleThickness:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_4

    cmpl-float p1, p2, v3

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_4

    or-int/lit8 v0, v0, 0x2

    :cond_4
    cmpg-float p1, p2, v3

    if-gez p1, :cond_5

    iget p1, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerResizeHandleThickness:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_5

    or-int/lit8 v0, v0, 0x4

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget p1, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerResizeHandleThickness:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_6

    or-int/lit8 v0, v0, 0x8

    :cond_6
    return v0

    :cond_7
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mLargeTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget v3, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mInnerResizeHandleThickness:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_8

    move v0, v1

    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v3, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mInnerResizeHandleThickness:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    or-int/lit8 v0, v0, 0x2

    :cond_9
    int-to-float p1, v3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_a

    or-int/lit8 v0, v0, 0x4

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iget p1, v2, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mInnerResizeHandleThickness:I

    sub-int/2addr p0, p1

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_b

    or-int/lit8 v0, v0, 0x8

    :cond_b
    return v0

    :cond_c
    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskCornerRadius:I

    int-to-float v4, v2

    cmpg-float v5, p1, v4

    if-gez v5, :cond_d

    goto :goto_1

    :cond_d
    move v1, v0

    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_e

    or-int/lit8 v1, v1, 0x2

    :cond_e
    cmpg-float v4, p2, v4

    if-gez v4, :cond_f

    or-int/lit8 v1, v1, 0x4

    :cond_f
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_10

    or-int/lit8 v1, v1, 0x8

    :cond_10
    and-int/lit8 v4, v1, 0x3

    if-eqz v4, :cond_16

    and-int/lit8 v4, v1, 0xc

    if-eqz v4, :cond_16

    const/4 v3, 0x5

    if-eq v1, v3, :cond_14

    const/4 v3, 0x6

    if-eq v1, v3, :cond_13

    const/16 v3, 0x9

    if-eq v1, v3, :cond_12

    const/16 v3, 0xa

    if-ne v1, v3, :cond_11

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_2

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ctrlType should be complex, but it\'s 0x"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int v4, v3, v2

    move v3, v2

    goto :goto_2

    :cond_13
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    move v4, v2

    goto :goto_2

    :cond_14
    move v3, v2

    move v4, v3

    :goto_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    float-to-double v3, p1

    iget p1, v5, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mResizeHandleThickness:I

    add-int/2addr p0, v2

    int-to-double v3, p0

    cmpg-double p0, p1, v3

    if-gez p0, :cond_15

    int-to-double v2, v2

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_15

    move v0, v1

    :cond_15
    return v0

    :cond_16
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_17

    cmpg-float v2, p2, v3

    if-ltz v2, :cond_17

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_18

    :cond_17
    move v0, v1

    :cond_18
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskCornerRadius:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskCornerRadius:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mResizeHandleThickness:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mResizeHandleThickness:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mLargeTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mLargeTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    if-eqz v2, :cond_2

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    move v0, v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskCornerRadius:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mResizeHandleThickness:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    if-eqz v0, :cond_0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    goto :goto_0

    :goto_1
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mLargeTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final shouldHandleEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    add-float/2addr v2, p2

    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    if-eqz p2, :cond_2

    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->calculateCornersCtrlType(FF)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateEdgeResizeCtrlType(FF)I

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v0, v3

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 p2, 0x1002

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_3

    invoke-virtual {v4, v1, v2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->calculateCornersCtrlType(FF)I

    move-result p0

    if-eqz p0, :cond_4

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateEdgeResizeCtrlType(FF)I

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return v0
.end method

.method public final union(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mDebugTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mTopEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mLeftEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mRightEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mBottomEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskEdges:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mTopEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mLeftEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mRightEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskEdges;->mBottomEdgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mHandleWidth:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mResizeHandleThickness:I

    neg-int v3, v3

    add-int/2addr v0, v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_1
    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mFineTaskCorners:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :cond_2
    return-void
.end method
