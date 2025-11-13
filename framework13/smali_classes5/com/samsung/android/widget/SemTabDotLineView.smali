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

.field private blacklist mInterval:I

.field private blacklist mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTabDotLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mInterval:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1060341

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 64
    .local v1, "color":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
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

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getWidth()I

    move-result v0

    .line 80
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->getHeight()I

    move-result v1

    .line 82
    .local v1, "height":I
    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 83
    .local v2, "vCenter":F
    iget v4, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDiameter:I

    int-to-float v5, v4

    div-float/2addr v5, v3

    .line 85
    .local v5, "vOffset":F
    const/4 v7, 0x0

    sub-float v8, v2, v5

    int-to-float v9, v0

    add-float v10, v2, v5

    int-to-float v11, v4

    int-to-float v12, v4

    iget-object v13, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 87
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "vCenter":F
    .end local v5    # "vOffset":F
    :cond_1
    return-void
.end method

.method public blacklist onPressed()V
    .locals 5

    .line 102
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 103
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 107
    .local v2, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 108
    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 109
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 112
    .end local v2    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTabDotLineView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    return-void
.end method

.method public blacklist onReleased()V
    .locals 0

    .line 117
    return-void
.end method

.method public blacklist setDrawState(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    .line 72
    return-void
.end method

.method public whitelist setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->onPressed()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTabDotLineView;->onReleased()V

    .line 98
    :goto_0
    return-void
.end method
