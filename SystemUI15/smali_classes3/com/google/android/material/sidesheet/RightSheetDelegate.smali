.class public final Lcom/google/android/material/sidesheet/RightSheetDelegate;
.super Lcom/google/android/material/sidesheet/SheetDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDelegate;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-void
.end method


# virtual methods
.method public final calculateInnerMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method public final calculateSlideOffset(I)F
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, v0, p0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method public final getCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method public final getExpandedOffset()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getHiddenOffset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    return p0
.end method

.method public final getMaxViewPositionHorizontal()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    return p0
.end method

.method public final getMinViewPositionHorizontal()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result p0

    return p0
.end method

.method public final getOuterEdge(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->innerMargin:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public final getParentInnerEdge(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    return p0
.end method

.method public final getSheetEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isExpandingOutwards(F)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReleasedCloseToInnerEdge(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result p0

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSwipeSignificant(FF)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1f4

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldHide(FLandroid/view/View;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    mul-float/2addr p1, p0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateCoplanarSiblingAdjacentMargin(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method public final updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    if-gt p2, p0, :cond_0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_0
    return-void
.end method
