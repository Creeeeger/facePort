.class public Lcom/android/internal/widget/NotificationOptimizedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationOptimizedLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist DEBUG_LAYOUT:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "NotifOptimizedLinearLayout"

.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mShouldUseOptimizedLayout:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    return-void
.end method

.method private blacklist getActiveChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private blacklist getDividerHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    return v1
.end method

.method private blacklist getSingleWeightedChild()Landroid/view/View;
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-nez v0, :cond_1

    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v10, v9, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ne v10, v9, :cond_3

    :cond_2
    const-string v1, "There is a match parent child in the related orientation."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return-object v8

    :cond_3
    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_5

    if-nez v4, :cond_4

    move-object v4, v6

    goto :goto_2

    :cond_4
    const-string v1, "There is more than one weighted child."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return-object v8

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    const-string v1, "There is no weighted child in this layout."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_9

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    move v6, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v2

    :goto_4
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v8, v7, :cond_a

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v7, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    if-eqz v0, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    if-nez v0, :cond_e

    if-nez v1, :cond_e

    :cond_d
    const-string v2, "Single weighted child should be either WRAP_CONTENT or 0 in the related orientation"

    invoke-direct {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_e
    :goto_5
    return-object v4
.end method

.method private blacklist isOptimizationPossible(II)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getWeightSum()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Has weightSum."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresMatchParentRemeasureForVerticalLinearLayout(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "Vertical LinearLayout requires children width MATCH_PARENT remeasure "

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_4

    const-string v1, "Horizontal LinearLayout\'s width should be measured EXACTLY"

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresBaselineAlignmentForHorizontalLinearLayout()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "Need to apply baseline."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->requiresNegativeMarginHandlingForHorizontalLinearLayout()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, "Need to handle negative margins."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    return v2

    :cond_6
    return v1
.end method

.method private blacklist isUseOptimizedLinearLayoutFlagEnabled()Z
    .locals 2

    invoke-static {}, Landroid/widget/flags/Flags;->notifLinearlayoutOptimized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "enableNotifLinearlayoutOptimized flag is off."

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->logSkipOptimizedOnMeasure(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private blacklist layoutVerticalOptimized(IIII)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p3, p1

    iget v4, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int v4, v3, v4

    sub-int v5, v3, v1

    iget v6, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v7

    and-int/lit8 v7, v7, 0x70

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v8

    const v9, 0x800007

    and-int/2addr v8, v9

    sparse-switch v7, :sswitch_data_0

    iget v9, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    goto :goto_0

    :sswitch_0
    iget v9, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    add-int v9, v9, p4

    sub-int v9, v9, p2

    sub-int/2addr v9, v2

    goto :goto_0

    :sswitch_1
    iget v9, v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    sub-int v10, p4, p2

    sub-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    nop

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getDividerHeight()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v6, :cond_3

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    nop

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v16, v2

    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v2, :cond_0

    move v2, v8

    :cond_0
    move/from16 v17, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getLayoutDirection()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v18

    and-int/lit8 v19, v18, 0x7

    sparse-switch v19, :sswitch_data_1

    move/from16 v20, v2

    move/from16 v19, v3

    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    goto :goto_2

    :sswitch_2
    sub-int v19, v4, v13

    move/from16 v20, v2

    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v19, v19, v2

    move/from16 v2, v19

    move/from16 v19, v3

    goto :goto_2

    :sswitch_3
    move/from16 v20, v2

    sub-int v2, v5, v13

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    move/from16 v19, v3

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    nop

    :goto_2
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/2addr v9, v10

    :cond_1
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v3

    add-int v3, v2, v13

    add-int v0, v9, v14

    invoke-virtual {v12, v2, v9, v3, v0}, Landroid/view/View;->layout(IIII)V

    iget v0, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v14

    add-int/2addr v9, v0

    goto :goto_3

    :cond_2
    move/from16 v16, v2

    move/from16 v17, v3

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_1

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method private blacklist logSkipOptimizedOnMeasure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private blacklist measureVerticalOptimized(Landroid/view/View;II)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/4 v2, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildCount()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ge v13, v0, :cond_3

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ne v14, v7, :cond_1

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_2

    if-ne v10, v1, :cond_2

    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v11

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    nop

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v11

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v0

    move v12, v1

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    iget v0, v6, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingTop:I

    iget v2, v6, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingBottom:I

    add-int/2addr v0, v2

    add-int/2addr v11, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-ne v10, v1, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    const/high16 v2, -0x80000000

    :goto_2
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, 0x0

    if-nez v3, :cond_5

    if-ne v10, v1, :cond_5

    sub-int v1, v9, v11

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_3

    :cond_5
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    add-int/2addr v1, v11

    sub-int v3, v9, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v1, v3

    :goto_3
    iget v3, v6, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingLeft:I

    iget v5, v6, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mPaddingRight:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v8, v3, v5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->measure(II)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v11

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v13

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v13

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingLeft()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12, v8, v4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v12

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSuggestedMinimumHeight()I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v14, p3

    invoke-static {v13, v14, v4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {v6, v12, v4}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method private blacklist onLayoutOptimized(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->layoutVerticalOptimized(IIII)V

    :goto_0
    return-void
.end method

.method private blacklist onMeasureOptimized(Landroid/view/View;II)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_0

    const-string v0, "NotifOptimizedLinearLayout#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v2

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    invoke-super {p0, p2, p3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->setBaselineAligned(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->measureVerticalOptimized(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->trackShouldUseOptimizedLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    throw v0
.end method

.method private blacklist requiresBaselineAlignmentForHorizontalLinearLayout()Z
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isBaselineAligned()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v7

    :cond_2
    if-ne v7, v9, :cond_3

    goto :goto_1

    :cond_3
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v8, :cond_4

    move v8, v3

    :cond_4
    and-int/lit8 v9, v8, 0x70

    const/16 v10, 0x30

    if-eq v9, v10, :cond_5

    const/16 v10, 0x50

    if-ne v9, v10, :cond_6

    :cond_5
    return v2

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method private blacklist requiresMatchParentRemeasureForVerticalLinearLayout(I)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v0, :cond_2

    iget v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private blacklist requiresNegativeMarginHandlingForHorizontalLinearLayout()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getActiveChildren()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ltz v6, :cond_2

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    return v1
.end method

.method private blacklist trackShouldUseOptimizedLayout()V
    .locals 3

    sget-boolean v0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_1

    nop

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "NotifOptimizedLinearLayout#shouldUseOptimizedLayout"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onLayoutOptimized(ZIIII)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :goto_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->getSingleWeightedChild()Landroid/view/View;

    move-result-object v0

    nop

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isUseOptimizedLinearLayoutFlagEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->isOptimizationPossible(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->mShouldUseOptimizedLayout:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/NotificationOptimizedLinearLayout;->onMeasureOptimized(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method
