.class public final Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    new-instance v0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;-><init>(IILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final isRTL()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final layoutChildrenOnRow(IIIIII)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    sub-int/2addr v0, p4

    add-int p4, v0, p6

    :cond_0
    move p6, p1

    :goto_0
    if-ge p6, p2, :cond_4

    invoke-virtual {p0, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p6, p1, :cond_1

    sub-int p4, p3, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr p4, v3

    sub-int/2addr p4, v1

    iget v3, v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int/2addr p4, v3

    :cond_1
    add-int v3, p4, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p5

    invoke-virtual {v0, p4, p5, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p2, -0x1

    if-ge p6, v0, :cond_2

    add-int/lit8 v0, p6, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v0, v1

    sub-int/2addr p4, v0

    goto :goto_2

    :cond_3
    iget v0, v2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v1, v0

    add-int/2addr v1, p4

    move p4, v1

    :goto_2
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int p1, p4, p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int p2, p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    const/4 p4, 0x0

    move v7, p2

    move v4, p4

    move v9, v4

    :goto_1
    if-ge p4, v2, :cond_6

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, v7, v0

    sub-int/2addr v0, p5

    if-gez v0, :cond_3

    goto :goto_2

    :cond_1
    add-int v0, v7, p5

    if-le v0, p1, :cond_3

    :goto_2
    move-object v3, p0

    move v5, p4

    move v6, p1

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    add-int/2addr p3, v0

    move v4, p4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int/2addr v7, p5

    iget p5, p2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    sub-int/2addr v7, p5

    goto :goto_5

    :cond_4
    add-int/2addr v7, p5

    iget p5, p2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v7, p5

    :goto_5
    iget v9, p2, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_6
    if-ge v4, v2, :cond_7

    move-object v0, p0

    move v1, v4

    move v3, p1

    move v4, v7

    move v5, p3

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->layoutChildrenOnRow(IIIIII)V

    :cond_7
    return-void
.end method

.method public final onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_0

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_0
    move v7, v5

    :goto_1
    if-ge v5, v0, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v10, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v11, v9, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    add-int/2addr v8, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v2, v10

    if-le v8, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v3, v7

    :cond_1
    iget v8, v9, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    add-int/2addr v10, v8

    add-int/2addr v10, v2

    move v2, v10

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iput v7, p0, Lcom/android/systemui/statusbar/KeyboardShortcutKeysLayout;->mLineHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_4

    add-int v1, v3, v7

    goto :goto_2

    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v6, :cond_5

    add-int/2addr v3, v7

    if-ge v3, v1, :cond_5

    move v1, v3

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
