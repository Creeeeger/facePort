.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private greylist-max-o mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mMaxWidths:[I

.field private greylist-max-o mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private greylist-max-o mShrinkAllColumns:Z

.field private greylist-max-o mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mStretchAllColumns:Z

.field private greylist-max-o mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtrackCollapsedColumns(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_0

    iput-boolean v4, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    :cond_1
    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    iput-boolean v4, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    :cond_3
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    return-void
.end method

.method private greylist-max-o findLargestCells(II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v1

    goto :goto_3

    :cond_0
    instance-of v5, v4, Landroid/widget/TableRow;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Landroid/widget/TableRow;

    invoke-virtual {v5}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual {v5, v7, v8}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    if-eqz v1, :cond_3

    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-eqz v12, :cond_1

    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v12, v12

    if-eq v12, v10, :cond_2

    :cond_1
    new-array v12, v10, [I

    iput-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    :cond_2
    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-static {v9, v11, v12, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v12, v12

    sub-int v13, v10, v12

    if-lez v13, :cond_4

    iget-object v14, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    new-array v15, v10, [I

    iput-object v15, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    iget-object v15, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move/from16 v16, v1

    array-length v1, v14

    invoke-static {v14, v11, v15, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v14

    iget-object v11, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v15, v14

    invoke-static {v9, v1, v11, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_4
    move/from16 v16, v1

    :goto_1
    iget-object v1, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_6

    aget v14, v1, v12

    aget v15, v9, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v1

    :cond_6
    :goto_3
    move/from16 v1, v16

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private greylist-max-o initTableLayout()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$PassThroughHierarchyChangeListener-IA;)V

    iput-object v1, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    iget-object v1, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    return-void
.end method

.method private greylist-max-o mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v2, v1

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    :goto_0
    sub-int v4, p3, p4

    div-int v5, v4, v3

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-virtual {p0, v7}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroid/widget/TableRow;

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_9

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_5

    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_4

    if-ge v8, v2, :cond_3

    aget v9, v1, v8

    add-int/2addr v9, v5

    aput v9, v1, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-lez v0, :cond_8

    if-ge v0, v3, :cond_8

    mul-int v7, v0, v5

    sub-int v8, v3, v0

    div-int v5, v7, v8

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_8

    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_7

    if-ge v8, v2, :cond_7

    aget v9, v1, v8

    if-le v5, v9, :cond_6

    const/4 v9, 0x0

    aput v9, v1, v8

    goto :goto_5

    :cond_6
    aget v9, v1, v8

    add-int/2addr v9, v5

    aput v9, v1, v8

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    return-void

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_a

    aget v8, v1, v7

    add-int/2addr v8, v5

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method

.method private static greylist-max-o parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 8

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const-string v1, "\\s*,\\s*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private greylist-max-o requestRowsLayout()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o shrinkAndStretchColumns(I)V
    .locals 5

    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    iget-boolean v2, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v3, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_1

    :cond_3
    if-ge v0, v1, :cond_5

    iget-boolean v2, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    iget-object v2, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v3, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    :cond_5
    :goto_1
    return-void
.end method

.method private greylist-max-o trackCollapsedColumns(Landroid/view/View;)V
    .locals 6

    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4, v5}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

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

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

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

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

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

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isColumnCollapsed(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isColumnShrinkable(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isColumnStretchable(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isShrinkAllColumns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public whitelist isStretchAllColumns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2

    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    return-void
.end method

.method greylist-max-o measureVertical(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableLayout;->layoutVertical(IIII)V

    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    return-void
.end method

.method public whitelist requestLayout()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setColumnCollapsed(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TableRow;

    invoke-virtual {v3, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public whitelist setColumnShrinkable(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public whitelist setColumnStretchable(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->-$$Nest$fputmOnHierarchyChangeListener(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public whitelist setShrinkAllColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return-void
.end method

.method public whitelist setStretchAllColumns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return-void
.end method
