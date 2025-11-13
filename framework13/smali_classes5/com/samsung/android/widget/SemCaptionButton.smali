.class public Lcom/samsung/android/widget/SemCaptionButton;
.super Landroid/widget/ImageButton;
.source "SemCaptionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;
    }
.end annotation


# instance fields
.field private blacklist mExtraPaddingEnd:I

.field private blacklist mExtraPaddingStart:I

.field private blacklist mHeight:I

.field private blacklist mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

.field private blacklist mPaddings:Landroid/graphics/Rect;

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemCaptionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemCaptionButton;->setForceDarkAllowed(Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemCaptionButton;->setFitsSystemWindows(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist getExtraPaddingEnd()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    return v0
.end method

.method public blacklist getExtraPaddingStart()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemCaptionButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mWidth:I

    iget v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemCaptionButton;->setMeasuredDimension(II)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/widget/SemCaptionButton;->setMeasuredDimension(II)V

    .line 79
    :goto_0
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 94
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0}, Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;->onAccessibilityActionClick(Landroid/view/View;)V

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemCaptionButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public blacklist setExtraPaddingEnd(I)V
    .locals 4
    .param p1, "extraPaddingEnd"    # I

    .line 60
    iput p1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    .line 61
    iget-object v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemCaptionButton;->setPaddingRelative(IIII)V

    .line 63
    return-void
.end method

.method public blacklist setExtraPaddingStart(I)V
    .locals 4
    .param p1, "extraPaddingStart"    # I

    .line 50
    iput p1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemCaptionButton;->setPaddingRelative(IIII)V

    .line 53
    return-void
.end method

.method public blacklist setOnAccessibilityActionClickListener(Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mOnAccessibilityActionClickListener:Lcom/samsung/android/widget/SemCaptionButton$OnAccessibilityActionClickListener;

    .line 104
    return-void
.end method

.method public whitelist setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnHoverListener;

    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemCaptionButton;->semSetHoverPopupType(I)V

    .line 90
    return-void
.end method

.method public blacklist setProperties(IILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "paddings"    # Landroid/graphics/Rect;

    .line 32
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;II)V

    .line 33
    return-void
.end method

.method public blacklist setProperties(IILandroid/graphics/Rect;II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "paddings"    # Landroid/graphics/Rect;
    .param p4, "extraPaddingStart"    # I
    .param p5, "extraPaddingEnd"    # I

    .line 40
    iput p1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mWidth:I

    .line 41
    iput p2, p0, Lcom/samsung/android/widget/SemCaptionButton;->mHeight:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    .line 43
    iput p4, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    .line 44
    iput p5, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    .line 45
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingStart:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/samsung/android/widget/SemCaptionButton;->mExtraPaddingEnd:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemCaptionButton;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemCaptionButton;->setPaddingRelative(IIII)V

    .line 47
    return-void
.end method

.method public blacklist setProperties(ILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "paddings"    # Landroid/graphics/Rect;

    .line 28
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;II)V

    .line 29
    return-void
.end method

.method public blacklist setProperties(ILandroid/graphics/Rect;II)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "paddings"    # Landroid/graphics/Rect;
    .param p3, "extraPaddingStart"    # I
    .param p4, "extraPaddingEnd"    # I

    .line 36
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/widget/SemCaptionButton;->setProperties(IILandroid/graphics/Rect;II)V

    .line 37
    return-void
.end method
