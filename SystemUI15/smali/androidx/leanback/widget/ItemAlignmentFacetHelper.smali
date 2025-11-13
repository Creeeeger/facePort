.class public final Landroidx/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget v1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, p0

    :cond_1
    iget p1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, -0x40800000    # -1.0f

    if-nez p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 v5, 0x1

    if-ne p2, v5, :cond_5

    if-ne v1, p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr p2, v2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p2, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_0
    cmpl-float v2, p1, v4

    if-eqz v2, :cond_4

    if-ne v1, p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int p1, v2

    sub-int/2addr p2, p1

    :cond_4
    if-eq p0, v1, :cond_c

    sget-object p1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    add-int p2, p0, p1

    goto :goto_4

    :cond_5
    cmpl-float p2, p1, v4

    if-eqz p2, :cond_7

    if-ne v1, p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int/2addr p2, v2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p2, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_2
    int-to-float p2, p2

    mul-float/2addr p2, p1

    div-float/2addr p2, v3

    float-to-int v2, p2

    :cond_7
    if-eq p0, v1, :cond_8

    sget-object p1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->left:I

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    sub-int p2, p0, p1

    goto :goto_4

    :cond_8
    move p2, v2

    goto :goto_4

    :cond_9
    cmpl-float p2, p1, v4

    if-eqz p2, :cond_b

    if-ne v1, p0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr p2, v2

    iget v2, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p2, v2

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_3
    int-to-float p2, p2

    mul-float/2addr p2, p1

    div-float/2addr p2, v3

    float-to-int v2, p2

    :cond_b
    if-eq p0, v1, :cond_8

    sget-object p1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->top:I

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    sub-int/2addr p0, p1

    move p2, p0

    :cond_c
    :goto_4
    return p2
.end method
