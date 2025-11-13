.class Landroid/widget/AbsSeekBar$ThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbDrawable"
.end annotation


# static fields
.field private static final blacklist PRESSED_DURATION:I = 0x64

.field private static final blacklist RELEASED_DURATION:I = 0x12c


# instance fields
.field private final blacklist SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

.field private blacklist mAlpha:I

.field blacklist mColor:I

.field private blacklist mColorStateList:Landroid/content/res/ColorStateList;

.field private blacklist mIsStateChanged:Z

.field private blacklist mIsVertical:Z

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field private final blacklist mPaintFill:Landroid/graphics/Paint;

.field private final blacklist mRadius:I

.field private blacklist mRadiusForAni:I

.field private blacklist mThumbPressed:Landroid/animation/ValueAnimator;

.field private blacklist mThumbReleased:Landroid/animation/ValueAnimator;

.field final synthetic blacklist this$0:Landroid/widget/AbsSeekBar;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetRadius(Landroid/widget/AbsSeekBar$ThumbDrawable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar$ThumbDrawable;->setRadius(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/AbsSeekBar;ILandroid/content/res/ColorStateList;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    const/16 v1, 0xff

    iput v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mAlpha:I

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mIsVertical:Z

    iput p2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    iput p2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadius:I

    iput-object p3, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/widget/AbsSeekBar;->access$200(Landroid/widget/AbsSeekBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105050f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/widget/AbsSeekBar;->access$300(Landroid/widget/AbsSeekBar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1060500

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput-boolean p4, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mIsVertical:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->initAnimation()V

    return-void
.end method

.method private blacklist modulateAlpha(II)I
    .locals 2

    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr v0, p2

    mul-int v1, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private blacklist setRadius(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    return-void
.end method

.method private blacklist startPressedAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist startReleasedAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private blacklist startThumbAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->startPressedAnimation()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->startReleasedAnimation()V

    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mIsStateChanged:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AbsSeekBar$ThumbDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AbsSeekBar$ThumbDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v1}, Landroid/widget/AbsSeekBar;->-$$Nest$fgetmThumbPosX(Landroid/widget/AbsSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v1}, Landroid/widget/AbsSeekBar;->-$$Nest$fgetmThumbPosX(Landroid/widget/AbsSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v2, v2

    iget-object v4, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v3}, Landroid/widget/AbsSeekBar;->-$$Nest$fgetmThumbPosX(Landroid/widget/AbsSeekBar;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v2}, Landroid/widget/AbsSeekBar;->-$$Nest$fgetmThumbPosX(Landroid/widget/AbsSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadiusForAni:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, -0x2

    return v2

    :cond_0
    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method blacklist initAnimation()V
    .locals 7

    iget v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadius:I

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbPressed:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/widget/AbsSeekBar$ThumbDrawable$1;

    invoke-direct {v5, p0}, Landroid/widget/AbsSeekBar$ThumbDrawable$1;-><init>(Landroid/widget/AbsSeekBar$ThumbDrawable;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mRadius:I

    int-to-float v2, v2

    new-array v1, v1, [F

    aput v4, v1, v3

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->SINE_IN_OUT_90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mThumbReleased:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsSeekBar$ThumbDrawable$2;

    invoke-direct {v1, p0}, Landroid/widget/AbsSeekBar$ThumbDrawable$2;-><init>(Landroid/widget/AbsSeekBar$ThumbDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public whitelist isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, p1, v6

    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar$ThumbDrawable;->startThumbAnimation(Z)V

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    iget v2, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    iget-object v0, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/AbsSeekBar$ThumbDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$ThumbDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
