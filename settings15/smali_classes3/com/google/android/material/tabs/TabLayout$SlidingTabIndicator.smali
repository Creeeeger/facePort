.class public final Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/16 v3, 0xb

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_b

    const/16 v7, 0xc

    if-eq v2, v7, :cond_b

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-eq v1, v6, :cond_1

    if-eq v2, v4, :cond_1

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mFirstTabGravity:I

    if-ne v0, v6, :cond_16

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v1, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mFirstTabGravity:I

    if-ne v1, v6, :cond_2

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v7, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-gtz v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v7, 0x10

    invoke-static {v1, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    mul-int v7, v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    mul-int/2addr v1, v4

    sub-int/2addr v8, v1

    if-gt v7, v8, :cond_a

    move v1, v5

    :goto_2
    if-ge v5, v0, :cond_8

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v7, v2, :cond_6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_7

    :cond_6
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v1, v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-nez v2, :cond_9

    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mFirstTabGravity:I

    if-ne v2, v6, :cond_9

    iput v6, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    :cond_9
    move v6, v1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iput v5, v0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    :goto_3
    if-eqz v6, :cond_16

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_b

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->checkOverScreen()V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v2, v0, Lcom/google/android/material/tabs/TabLayout;->mIsOverScreen:Z

    if-eqz v2, :cond_c

    iget p1, v0, Lcom/google/android/material/tabs/TabLayout;->mOverScreenMaxWidth:I

    goto :goto_4

    :cond_c
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-array v2, v0, [I

    move v7, v5

    move v8, v7

    :goto_5
    if-ge v7, v0, :cond_e

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v9, v10, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v10, v10, Lcom/google/android/material/tabs/TabLayout;->mTabMinSideSpace:I

    mul-int/2addr v10, v4

    add-int/2addr v10, v9

    aput v10, v2, v7

    add-int/2addr v8, v10

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    div-int v4, p1, v0

    if-le v8, p1, :cond_f

    :goto_6
    if-ge v5, v0, :cond_14

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    aget v4, v2, v5

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v7, v7, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-ne v7, v3, :cond_12

    move v3, v5

    :goto_7
    if-ge v3, v0, :cond_11

    aget v7, v2, v3

    if-le v7, v4, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    move v6, v5

    :cond_12
    :goto_8
    if-eqz v6, :cond_13

    sub-int v3, p1, v8

    div-int/2addr v3, v0

    :goto_9
    if-ge v5, v0, :cond_14

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    aget v6, v2, v5

    add-int/2addr v6, v3

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    if-ge v5, v0, :cond_14

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_14
    if-le v8, p1, :cond_15

    move p1, v8

    :cond_15
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_16
    :goto_b
    return-void
.end method
