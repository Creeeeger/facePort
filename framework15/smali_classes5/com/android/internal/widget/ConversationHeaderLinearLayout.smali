.class public Lcom/android/internal/widget/ConversationHeaderLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ConversationHeaderLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private blacklist calculateTotalChildLength()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    nop

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private blacklist remeasureChangedChildren(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    iget v2, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    iget v3, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mStartWidth:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method blacklist balanceViewWidths(Ljava/util/List;FI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;",
            ">;FI)V"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    if-lez p3, :cond_5

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    iget v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    iget v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    int-to-float v6, v6

    int-to-float v7, p3

    iget v8, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    div-float/2addr v8, p2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    if-gez v6, :cond_2

    const/4 v6, 0x0

    const/4 v0, 0x1

    :cond_2
    iget v7, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    sub-int/2addr v7, v6

    add-int/2addr v2, v7

    iput v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    iget v7, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    if-lez v7, :cond_3

    iget v7, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    add-float/2addr v3, v7

    :cond_3
    goto :goto_1

    :cond_4
    sub-int/2addr p3, v2

    move p2, v3

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 11

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->calculateTotalChildLength()I

    move-result v1

    sub-int v2, v1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v10

    :cond_4
    new-instance v10, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    invoke-direct {v10, v7}, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;-><init>(Landroid/view/View;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v4, v9

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v5, v4, v2}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->balanceViewWidths(Ljava/util/List;FI)V

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->remeasureChangedChildren(Ljava/util/List;)V

    return-void

    :cond_8
    :goto_2
    return-void
.end method
