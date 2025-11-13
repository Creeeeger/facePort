.class public Lcom/samsung/android/widget/SemTabDotLineView;
.super Landroid/view/View;
.source "SemTabDotLineView.java"


# static fields
.field private static final blacklist CIRCLE_INTERVAL:F = 2.5f

.field private static final blacklist DIAMETER_SIZE:F = 2.5f

.field private static final blacklist SEM_TAB_ANIM_PRESS_DURATION:I


# instance fields
.field private blacklist mDiameter:I

.field public blacklist mDrawDot:Z

.field private blacklist mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTabDotLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10603bf

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getHeight()I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float v7, v2, v4

    int-to-float v8, v0

    add-float v9, v2, v4

    iget v3, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    int-to-float v10, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    int-to-float v11, v3

    iget-object v12, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public blacklist onPressed()V
    .locals 5

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTabDotLineView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public blacklist onReleased()V
    .locals 0

    return-void
.end method

.method public blacklist setDrawState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    return-void
.end method

.method public whitelist setPressed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->onPressed()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->onReleased()V

    :goto_0
    return-void
.end method
