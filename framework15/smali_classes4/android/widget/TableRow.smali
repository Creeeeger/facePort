.class public Landroid/widget/TableRow;
.super Landroid/widget/LinearLayout;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableRow$ChildrenTracker;,
        Landroid/widget/TableRow$LayoutParams;
    }
.end annotation


# instance fields
.field private greylist-max-o mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

.field private greylist-max-o mColumnToChildIndex:Landroid/util/SparseIntArray;

.field private greylist-max-o mColumnWidths:[I

.field private greylist-max-o mConstrainedColumnWidths:[I

.field private greylist-max-o mNumColumns:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmColumnToChildIndex(Landroid/widget/TableRow;Landroid/util/SparseIntArray;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    invoke-direct {p0}, Landroid/widget/TableRow;->initTableRow()V

    return-void
.end method

.method private greylist-max-o initTableRow()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TableRow;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v1, Landroid/widget/TableRow$ChildrenTracker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableRow$ChildrenTracker;-><init>(Landroid/widget/TableRow;Landroid/widget/TableRow$ChildrenTracker-IA;)V

    iput-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v1, v0}, Landroid/widget/TableRow$ChildrenTracker;->-$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private greylist-max-o mapIndexAndColumns()V
    .locals 8

    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TableRow;->getChildCount()I

    move-result v1

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    if-lt v6, v0, :cond_0

    iget v0, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    if-ge v6, v7, :cond_1

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    move v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    :cond_3
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/TableRow$LayoutParams;

    return v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TableRow;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableRow$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableRow$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getChildrenSkipCount(Landroid/view/View;I)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    iget v1, v0, Landroid/widget/TableRow$LayoutParams;->span:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method greylist-max-o getColumnsWidths(II)[I
    .locals 8

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    :cond_1
    iget-object v1, p0, Landroid/widget/TableRow;->mColumnWidths:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow$LayoutParams;

    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->span:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget v6, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    packed-switch v6, :pswitch_data_0

    iget v4, v5, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    :pswitch_0
    nop

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    goto :goto_1

    :pswitch_1
    const/4 v6, -0x2

    invoke-static {p1, v4, v6}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v4

    nop

    :goto_1
    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    aput v6, v1, v2

    goto :goto_2

    :cond_2
    aput v4, v1, v2

    :goto_2
    goto :goto_3

    :cond_3
    aput v4, v1, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method greylist-max-o getLocationOffset(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method greylist-max-o getNextLocationOffset(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    invoke-static {v0}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getVirtualChildAt(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getVirtualChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/TableRow;->mColumnToChildIndex:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TableRow;->mapIndexAndColumns()V

    :cond_0
    iget v0, p0, Landroid/widget/TableRow;->mNumColumns:I

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    iget v4, v1, Landroid/widget/TableRow$LayoutParams;->span:I

    iget-object v5, v0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    add-int v7, p2, v6

    aget v7, v5, v7

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v6, v1, Landroid/widget/TableRow$LayoutParams;->gravity:I

    invoke-static {v6}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/high16 v2, -0x80000000

    :cond_1
    iget v8, v1, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    sub-int v8, v3, v8

    iget v9, v1, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget v10, v0, Landroid/widget/TableRow;->mPaddingTop:I

    iget v11, v0, Landroid/widget/TableRow;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    add-int v10, v10, p6

    iget v11, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    move/from16 v12, p5

    invoke-static {v12, v10, v11}, Landroid/widget/TableRow;->getChildMeasureSpec(III)I

    move-result v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v8, v10}, Landroid/view/View;->measure(II)V

    const/4 v13, 0x1

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    sub-int v16, v3, v14

    aput v16, v15, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableRow;->getLayoutDirection()I

    move-result v15

    invoke-static {v6, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v16

    and-int/lit8 v17, v16, 0x7

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v17

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v18

    aget v13, v18, v13

    aput v13, v17, v9

    goto :goto_1

    :pswitch_2
    goto :goto_1

    :pswitch_3
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v17

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v18

    aget v13, v18, v13

    div-int/lit8 v13, v13, 0x2

    aput v13, v17, v9

    :goto_1
    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v14

    invoke-static {v1}, Landroid/widget/TableRow$LayoutParams;->-$$Nest$fgetmOffset(Landroid/widget/TableRow$LayoutParams;)[I

    move-result-object v15

    aput v9, v15, v13

    aput v9, v14, v9

    :goto_2
    goto :goto_3

    :cond_3
    move-object/from16 v11, p1

    move/from16 v12, p5

    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method greylist-max-o measureNullChild(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    aget v0, v0, p1

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableRow;->layoutHorizontal(IIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TableRow;->measureHorizontal(II)V

    return-void
.end method

.method greylist-max-o setColumnCollapsed(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method greylist-max-o setColumnsWidthConstraints([I)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Landroid/widget/TableRow;->getVirtualChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Landroid/widget/TableRow;->mConstrainedColumnWidths:[I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columnWidths should be >= getVirtualChildCount()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableRow;->mChildrenTracker:Landroid/widget/TableRow$ChildrenTracker;

    invoke-static {v0, p1}, Landroid/widget/TableRow$ChildrenTracker;->-$$Nest$msetOnHierarchyChangeListener(Landroid/widget/TableRow$ChildrenTracker;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
