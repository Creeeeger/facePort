.class public Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;
.super Landroid/widget/ImageButton;
.source "MultiSplitMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiSplitMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuButton"
.end annotation


# instance fields
.field private blacklist mSideWidth:I

.field private blacklist mSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetProperties(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setProperties(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetProperties(Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setProperties(IIIIII)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 756
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSideWidth:I

    .line 757
    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setFitsSystemWindows(Z)V

    .line 758
    return-void
.end method

.method private blacklist setProperties(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "padding"    # I

    .line 761
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSize:I

    .line 762
    invoke-virtual {p0, p2, p2, p2, p2}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setPadding(IIII)V

    .line 763
    return-void
.end method

.method private blacklist setProperties(IIIIII)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "sideWidth"    # I
    .param p3, "leftPadding"    # I
    .param p4, "topPadding"    # I
    .param p5, "rightPadding"    # I
    .param p6, "bottomPadding"    # I

    .line 767
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSize:I

    .line 768
    iput p2, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSideWidth:I

    .line 769
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setPaddingRelative(IIII)V

    .line 770
    return-void
.end method


# virtual methods
.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 774
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSize:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 775
    .local v0, "size":I
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSideWidth:I

    add-int/2addr v1, v0

    invoke-super {p0, v1, v0}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 776
    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 806
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 807
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 808
    return-void
.end method

.method protected whitelist setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .line 780
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v0

    .line 782
    .local v0, "changed":Z
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSideWidth:I

    if-lez v1, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 785
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 787
    .local v2, "rippleSize":I
    iget v3, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSize:I

    .line 788
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getHeight()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .line 789
    .local v4, "top":I
    add-int v5, v4, v2

    .line 790
    .local v5, "bottom":I
    const/4 v6, 0x0

    .line 791
    .local v6, "left":I
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->getPaddingRight()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 792
    iget v7, p0, Lcom/samsung/android/multiwindow/MultiSplitMenuPopup$MenuButton;->mSideWidth:I

    sub-int v8, v2, v3

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    .end local v6    # "left":I
    .local v7, "left":I
    goto :goto_0

    .line 794
    .end local v7    # "left":I
    .restart local v6    # "left":I
    :cond_0
    sub-int v7, v3, v2

    div-int/lit8 v7, v7, 0x2

    .line 796
    .end local v6    # "left":I
    .restart local v7    # "left":I
    :goto_0
    add-int v6, v7, v2

    .line 797
    .local v6, "right":I
    invoke-virtual {v1, v7, v4, v6, v5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 801
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "rippleSize":I
    .end local v3    # "width":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "right":I
    .end local v7    # "left":I
    :cond_1
    return v0
.end method
