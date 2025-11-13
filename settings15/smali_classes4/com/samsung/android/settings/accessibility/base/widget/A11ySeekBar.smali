.class public Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;
.super Landroidx/appcompat/widget/SeslSeekBar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public centerBasedBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/settings/R$styleable;->A11ySeekBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setSeamless(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;->centerBasedBar:Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :goto_2
    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
.end method


# virtual methods
.method public final drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;->centerBasedBar:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    div-int/lit8 v4, v1, 0x2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x2

    if-ltz v2, :cond_1

    div-int/lit8 v3, v2, 0x2

    :cond_1
    neg-int v2, v4

    neg-int v6, v3

    invoke-virtual {v0, v2, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p0, 0x0

    :goto_1
    if-gt p0, v5, :cond_2

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final performHapticFeedback(I)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBar;->centerBasedBar:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMin()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v2

    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p0

    return p0
.end method
