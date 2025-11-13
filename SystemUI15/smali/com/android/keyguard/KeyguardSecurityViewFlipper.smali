.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final getSecurityView()Lcom/android/keyguard/KeyguardInputView;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/keyguard/KeyguardInputView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const-string v3, " should be AT_MOST"

    const-string v4, "KeyguardSecurityViewFlipper"

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onMeasure: widthSpec "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq v2, v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onMeasure: heightSpec "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    move v9, v3

    move v10, v4

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_5

    invoke-virtual {v0, v8}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    iget v12, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-lez v12, :cond_3

    if-ge v12, v9, :cond_3

    move v9, v12

    :cond_3
    iget v11, v11, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-lez v11, :cond_4

    if-ge v11, v10, :cond_4

    move v10, v11

    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ViewFlipper;->getPaddingBottom()I

    move-result v12

    add-int/2addr v12, v8

    sub-int/2addr v9, v11

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v10, v12

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v1, v10, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v7

    :goto_2
    if-ne v2, v10, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v7

    :goto_3
    if-ge v7, v6, :cond_c

    invoke-virtual {v0, v7}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    iget v15, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    const/4 v10, -0x2

    if-eq v15, v10, :cond_9

    if-eq v15, v5, :cond_8

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_4
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_5

    :cond_8
    move v15, v8

    goto :goto_4

    :cond_9
    move v15, v8

    const/high16 v5, -0x80000000

    :goto_5
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v14, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v14, v10, :cond_b

    const/4 v10, -0x1

    if-eq v14, v10, :cond_a

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_6
    const/high16 v14, 0x40000000    # 2.0f

    goto :goto_7

    :cond_a
    move v10, v9

    goto :goto_6

    :cond_b
    move v10, v9

    const/high16 v14, -0x80000000

    :goto_7
    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v13, v5, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v10, v3, v11

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v10, v4, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    const/high16 v5, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_3

    :cond_c
    add-int/2addr v1, v11

    add-int/2addr v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
