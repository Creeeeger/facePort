.class public final Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCornerSize:I

.field public final mInnerResizeHandleThickness:I

.field public final mLeftBottomCornerBounds:Landroid/graphics/Rect;

.field public final mLeftTopCornerBounds:Landroid/graphics/Rect;

.field public final mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

.field public final mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

.field public final mPointerResizeHandleThickness:I

.field public final mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

.field public final mPointerRightTopCornerBounds:Landroid/graphics/Rect;

.field public final mPointerTouchableRegion:Landroid/graphics/Region;

.field public final mRightBottomCornerBounds:Landroid/graphics/Rect;

.field public final mRightTopCornerBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/util/Size;III)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerTouchableRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mCornerSize:I

    div-int/lit8 p2, p2, 0x2

    new-instance v6, Landroid/graphics/Rect;

    neg-int v7, p2

    invoke-direct {v6, v7, v7, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {v6, v8, v7, v9, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {v6, v7, v8, p2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v9

    add-int/2addr v9, p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    if-eqz p2, :cond_0

    iput p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mInnerResizeHandleThickness:I

    iput p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerResizeHandleThickness:I

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    neg-int p2, p4

    invoke-virtual {v2, p2, p2, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    sub-int p3, p0, p4

    add-int/2addr p0, p4

    invoke-virtual {v3, p3, p2, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    sub-int v6, p1, p4

    add-int/2addr p1, p4

    invoke-virtual {v4, p2, v6, p4, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v5, p3, v6, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, p2, p2, p0, p1}, Landroid/graphics/Region;->set(IIII)Z

    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v3, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v4, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, v5, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final calculateCornersCtrlType(FF)I
    .locals 6

    float-to-int p1, p1

    float-to-int p2, p2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/16 v4, 0x9

    const/4 v5, 0x5

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->sIsPointerInput:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    return v5

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    return v4

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return v3

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v1
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
    instance-of v2, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;

    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mCornerSize:I

    iget v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mCornerSize:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mCornerSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskCorners of size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mCornerSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for the top left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " top right "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightTopCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bottom left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bottom right "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry$TaskCorners;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
