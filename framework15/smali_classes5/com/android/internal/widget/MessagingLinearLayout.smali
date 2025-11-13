.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# static fields
.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mMaxDisplayedLines:I

.field private blacklist mSpacing:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isGone(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v1, v1, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist trackMeasureSpecs(II)V
    .locals 7

    sget-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const-string v4, "MessagingLinearLayout#onMeasure_widthMeasureSpecSize"

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    const-string v4, "MessagingLinearLayout#onMeasure_widthMeasureSpecMode"

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    const-string v4, "MessagingLinearLayout#onMeasure_heightMeasureSpecSize"

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    const-string v4, "MessagingLinearLayout#onMeasure_heightMeasureSpecMode"

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

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

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

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

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public whitelist getBaseline()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    nop

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v4

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v3

    return v5

    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    return v1
.end method

.method public blacklist getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/IMessagingLayout;

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    sub-int v2, p4, p2

    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v3, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_5

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_3

    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-object v12, v10

    check-cast v12, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    const/4 v15, 0x1

    if-ne v4, v15, :cond_1

    sub-int v16, v3, v13

    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v15

    move/from16 v15, v16

    goto :goto_1

    :cond_1
    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v1, v15

    move/from16 v15, v16

    :goto_1
    move/from16 v16, v1

    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_3

    if-eqz v8, :cond_2

    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v1, :cond_2

    add-int v1, v15, v13

    move/from16 v17, v2

    iget v2, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v2, v6

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-interface {v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    goto :goto_2

    :cond_2
    move/from16 v17, v2

    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    iput v14, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    if-nez v7, :cond_4

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v6, v1

    :cond_4
    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v1

    add-int v1, v15, v13

    add-int v2, v6, v14

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v14

    add-int/2addr v6, v1

    const/4 v1, 0x0

    move v7, v1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 31

    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_0

    const-string v0, "MessagingLinearLayout#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/MessagingLinearLayout;->trackMeasureSpecs(II)V

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v7, v0

    goto :goto_0

    :pswitch_0
    const v0, 0x7fffffff

    move v7, v0

    :goto_0
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v8

    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_3

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iput-boolean v9, v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    invoke-static {}, Landroid/widget/flags/Flags;->messagingChildRequestLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_1
    instance-of v4, v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v4, v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    add-int/lit8 v13, v8, -0x1

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v5, v13

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    :goto_2
    if-ltz v5, :cond_11

    if-ge v11, v7, :cond_11

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    move/from16 v26, v5

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/16 v19, 0x0

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    const/16 v20, 0x0

    instance-of v0, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-eqz v14, :cond_5

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14, v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    const/16 v21, 0x0

    sub-int v22, v17, v16

    move-object/from16 v0, p0

    move v9, v1

    move-object v1, v15

    move/from16 v24, v2

    move/from16 v2, p1

    move-object/from16 v25, v3

    move/from16 v3, v21

    move-object/from16 v21, v4

    move/from16 v4, p2

    move/from16 v26, v5

    move/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v0, v16

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v1

    sub-int v1, v1, v18

    sub-int/2addr v13, v1

    move/from16 v20, v0

    goto :goto_3

    :cond_5
    move v9, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v21, v4

    move/from16 v26, v5

    :goto_3
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v1

    add-int v2, v24, v1

    move-object/from16 v19, v0

    goto :goto_4

    :cond_6
    move v9, v1

    move/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v21, v4

    move/from16 v26, v5

    :goto_4
    if-eqz v12, :cond_7

    move v1, v9

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    move/from16 v22, v1

    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v0, v11, v0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v0, v1

    add-int v5, v0, v22

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v0, v11, v24

    move-object/from16 v5, v25

    iget v1, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int v0, v0, v22

    add-int v0, v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v0, 0x0

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v0

    move v3, v0

    goto :goto_6

    :cond_8
    move v3, v0

    :goto_6
    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    if-nez v12, :cond_9

    const/4 v1, 0x1

    goto :goto_7

    :cond_9
    move v1, v9

    :goto_7
    move/from16 v25, v1

    const/4 v1, 0x1

    if-eq v3, v1, :cond_b

    if-ne v3, v0, :cond_a

    if-eqz v12, :cond_a

    goto :goto_8

    :cond_a
    move v1, v9

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v1, 0x1

    :goto_9
    move/from16 v27, v1

    if-gt v4, v7, :cond_c

    if-nez v25, :cond_c

    const/4 v1, 0x1

    goto :goto_a

    :cond_c
    move v1, v9

    :goto_a
    move/from16 v28, v1

    if-eqz v28, :cond_f

    if-eqz v19, :cond_d

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v18

    sub-int v13, v13, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v21

    move/from16 v16, v24

    move/from16 v17, v11

    :cond_d
    move v11, v4

    nop

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput-boolean v9, v5, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-nez v27, :cond_12

    if-gtz v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    move v12, v0

    :goto_b
    add-int/lit8 v5, v26, -0x1

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_f
    if-eqz v14, :cond_10

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    const/4 v9, 0x0

    sub-int v23, v17, v16

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v29, v3

    move v3, v9

    move v9, v4

    move/from16 v4, p2

    move-object/from16 v30, v5

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_c

    :cond_10
    move/from16 v29, v3

    move v9, v4

    move-object/from16 v30, v5

    goto :goto_c

    :cond_11
    move/from16 v26, v5

    :cond_12
    :goto_c
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    sget-boolean v0, Lcom/android/internal/widget/MessagingLinearLayout;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    return-void
.end method

.method public blacklist setSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method
