.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field protected greylist-max-o mFromXDelta:F

.field private greylist-max-o mFromXType:I

.field protected greylist mFromXValue:F

.field protected greylist-max-o mFromYDelta:F

.field private greylist-max-o mFromYType:I

.field protected greylist mFromYValue:F

.field private blacklist mParentWidth:I

.field protected greylist-max-o mToXDelta:F

.field private greylist-max-o mToXType:I

.field protected greylist mToXValue:F

.field protected greylist-max-o mToYDelta:F

.field private greylist-max-o mToYType:I

.field protected greylist mToYValue:F

.field private blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor whitelist <init>(IFIFIFIF)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    sget-object v1, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private blacklist endsXEnclosedWithinParent()Z
    .locals 2

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isSlideInLeft()Z
    .locals 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->endsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist isSlideInRight()Z
    .locals 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->endsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist isSlideOutLeft()Z
    .locals 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->startsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist isSlideOutRight()Z
    .locals 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->startsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist startsXEnclosedWithinParent()Z
    .locals 2

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public whitelist initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    return-void
.end method

.method public blacklist isFullWidthTranslate()Z
    .locals 5

    nop

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideInLeft()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideOutRight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideInRight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideOutLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public blacklist isXAxisTransition()Z
    .locals 3

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
