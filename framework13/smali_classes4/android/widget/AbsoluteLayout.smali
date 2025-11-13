.class public Landroid/widget/AbsoluteLayout;
.super Landroid/view/ViewGroup;
.source "AbsoluteLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsoluteLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 143
    instance-of v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    return v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 110
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 137
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 148
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 116
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 119
    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 122
    nop

    .line 123
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 125
    .local v3, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v5, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr v4, v5

    .line 126
    .local v4, "childLeft":I
    iget v5, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/2addr v5, v6

    .line 127
    .local v5, "childTop":I
    nop

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    .line 127
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 118
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 64
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    .line 66
    .local v0, "count":I
    const/4 v1, 0x0

    .line 67
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 70
    .local v2, "maxWidth":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->measureChildren(II)V

    .line 73
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 74
    invoke-virtual {p0, v3}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 79
    nop

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 82
    .local v5, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget v6, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 83
    .local v6, "childRight":I
    iget v7, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 85
    .local v7, "childBottom":I
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 86
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 73
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v6    # "childRight":I
    .end local v7    # "childBottom":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 92
    iget v3, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 95
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 98
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 99
    invoke-static {v1, p2, v3}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v3

    .line 98
    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsoluteLayout;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method

.method public blacklist semDispatchFindView(FFZ)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "findImage"    # Z

    .line 237
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "foundText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/AbsoluteLayout;->semSetBixbyTouchFoundText(Ljava/lang/String;)V

    .line 240
    return-object p0

    .line 242
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->semDispatchFindView(FFZ)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method
