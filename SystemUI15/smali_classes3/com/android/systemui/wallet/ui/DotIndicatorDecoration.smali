.class public final Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field public final mDotMargin:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mSelectedColor:I

.field public final mSelectedRadius:I

.field public final mUnselectedColor:I

.field public final mUnselectedRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mDotMargin:I

    const v0, 0x7f0603c5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedColor:I

    const v0, 0x7f0603bf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedColor:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    const/4 p3, 0x1

    if-le p0, p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0701aa

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-super/range {p0 .. p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iput-object v3, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    iget-object v6, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v6, v6, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    add-int/lit8 v6, v3, -0x1

    iget v7, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mDotMargin:I

    mul-int/2addr v6, v7

    iget v8, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedRadius:I

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v10, v3, -0x2

    mul-int/2addr v10, v9

    add-int/2addr v10, v6

    iget v6, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedRadius:I

    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v10

    int-to-float v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v11, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_a

    iget-object v11, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v11

    if-nez v11, :cond_2

    :goto_1
    move v11, v2

    goto :goto_2

    :cond_2
    sub-int v11, v3, v2

    sub-int/2addr v11, v4

    :goto_2
    iget-object v12, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v13, v12, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    iget v15, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mSelectedColor:I

    iget v4, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mUnselectedColor:I

    const/4 v14, 0x0

    if-ne v13, v11, :cond_3

    iget-object v11, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    div-float v12, v5, v10

    invoke-static {v12, v15, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    move-result v4

    const/16 v13, 0xff

    invoke-static {v4, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6, v8, v12}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v4

    iget-object v11, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v14, v4, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float/2addr v4, v10

    invoke-virtual {v1, v4, v14}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_7

    :cond_3
    if-nez v12, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v12

    if-nez v12, :cond_8

    :goto_3
    iget-object v12, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v13, v12, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    add-int/lit8 v10, v13, 0x1

    if-ne v10, v11, :cond_5

    iget v10, v12, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    cmpl-float v10, v10, v14

    if-gez v10, :cond_6

    :cond_5
    add-int/lit8 v13, v13, -0x1

    if-ne v13, v11, :cond_7

    iget v10, v12, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    cmpg-float v10, v10, v14

    if-gez v10, :cond_7

    :cond_6
    :goto_4
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_5

    :cond_7
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_6

    :cond_8
    iget-object v10, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget v12, v10, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCenteredAdapterPosition:I

    add-int/lit8 v13, v12, -0x1

    if-ne v13, v11, :cond_9

    iget v13, v10, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    cmpl-float v13, v13, v14

    if-gez v13, :cond_6

    :cond_9
    add-int/lit8 v12, v12, 0x1

    if-ne v12, v11, :cond_7

    iget v10, v10, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mEdgeToCenterDistance:F

    cmpg-float v10, v10, v14

    if-gez v10, :cond_7

    goto :goto_4

    :goto_5
    div-float v11, v5, v10

    invoke-static {v11, v4, v15}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    move-result v4

    iget-object v12, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    const/16 v13, 0xff

    invoke-static {v4, v13}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v8, v15, v11}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v4

    iget-object v11, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v14, v4, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    mul-float/2addr v4, v10

    invoke-virtual {v1, v4, v14}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :goto_6
    iget-object v11, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v4, v8

    iget-object v11, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v14, v4, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    int-to-float v4, v9

    invoke-virtual {v1, v4, v14}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    int-to-float v4, v7

    invoke-virtual {v1, v4, v14}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/wallet/ui/DotIndicatorDecoration;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    return-void
.end method
