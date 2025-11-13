.class Landroid/widget/AbsSeekBar$SliderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;
    }
.end annotation


# static fields
.field private static final blacklist ANIMATION_DURATION:I = 0xfa


# instance fields
.field private final blacklist SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field blacklist mAlpha:I

.field blacklist mColor:I

.field blacklist mColorStateList:Landroid/content/res/ColorStateList;

.field private blacklist mIsStateChanged:Z

.field private blacklist mIsVertical:Z

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field blacklist mPressedAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mRadius:F

.field blacklist mReleasedAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mSliderMaxWidth:F

.field private final blacklist mSliderMinWidth:F

.field private final blacklist mState:Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;

.field final synthetic blacklist this$0:Landroid/widget/AbsSeekBar;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;)V
    .locals 6
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "color"    # Landroid/content/res/ColorStateList;

    .line 2164
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsSeekBar$SliderDrawable;-><init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V

    .line 2165
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/AbsSeekBar;FFLandroid/content/res/ColorStateList;Z)V
    .locals 4
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "color"    # Landroid/content/res/ColorStateList;
    .param p5, "isVertical"    # Z

    .line 2168
    iput-object p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2145
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    .line 2148
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    .line 2156
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mAlpha:I

    .line 2161
    new-instance v0, Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;-><init>(Landroid/widget/AbsSeekBar$SliderDrawable;Landroid/widget/AbsSeekBar$SliderDrawable$SliderState-IA;)V

    iput-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mState:Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;

    .line 2169
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2170
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2171
    iput-object p4, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2172
    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColor:I

    .line 2173
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2174
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2175
    iput p2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 2176
    iput p3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 2177
    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, p2, p1

    iput p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mRadius:F

    .line 2178
    iput-boolean p5, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mIsVertical:Z

    .line 2179
    invoke-direct {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->initAnimator()V

    .line 2180
    return-void
.end method

.method private blacklist initAnimator()V
    .locals 9

    .line 2183
    iget v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    .line 2184
    .local v0, "tempTrackMinWidth":F
    iget v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    .line 2185
    .local v1, "tempTrackMaxWidth":F
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    .line 2186
    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2187
    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget-object v8, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2188
    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/widget/AbsSeekBar$SliderDrawable$1;

    invoke-direct {v8, p0}, Landroid/widget/AbsSeekBar$SliderDrawable$1;-><init>(Landroid/widget/AbsSeekBar$SliderDrawable;)V

    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2195
    new-array v2, v2, [F

    aput v1, v2, v4

    aput v0, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    .line 2196
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2197
    iget-object v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2198
    iget-object v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/widget/AbsSeekBar$SliderDrawable$2;

    invoke-direct {v3, p0}, Landroid/widget/AbsSeekBar$SliderDrawable$2;-><init>(Landroid/widget/AbsSeekBar$SliderDrawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2205
    return-void
.end method

.method private blacklist modulateAlpha(II)I
    .locals 2
    .param p1, "paintAlpha"    # I
    .param p2, "alpha"    # I

    .line 2224
    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr v0, p2

    .line 2225
    .local v0, "scale":I
    mul-int v1, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private blacklist startPressedAnimation()V
    .locals 4

    .line 2320
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    return-void

    .line 2323
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2324
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2326
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2327
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2328
    return-void
.end method

.method private blacklist startReleasedAnimation()V
    .locals 4

    .line 2331
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    return-void

    .line 2334
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2335
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2337
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMinWidth:F

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2338
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mReleasedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2339
    return-void
.end method

.method private blacklist startSliderAnimation(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .line 2309
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    if-eq v0, p1, :cond_1

    .line 2310
    if-eqz p1, :cond_0

    .line 2311
    invoke-direct {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->startPressedAnimation()V

    goto :goto_0

    .line 2313
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->startReleasedAnimation()V

    .line 2315
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mIsStateChanged:Z

    .line 2317
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2209
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 2210
    .local v0, "prevAlpha":I
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mAlpha:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AbsSeekBar$SliderDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2212
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mIsVertical:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-nez v1, :cond_0

    .line 2213
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v3}, Landroid/widget/AbsSeekBar;->access$000(Landroid/widget/AbsSeekBar;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-static {v3}, Landroid/widget/AbsSeekBar;->access$100(Landroid/widget/AbsSeekBar;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v4, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mRadius:F

    sub-float/2addr v1, v4

    .line 2214
    .local v1, "width":F
    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v3, v2

    iget-object v8, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2215
    .end local v1    # "width":F
    goto :goto_0

    .line 2216
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v1

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mRadius:F

    sub-float/2addr v1, v3

    .line 2217
    .local v1, "height":F
    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v3}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v3, v2

    iget v8, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mRadius:F

    iget-object v9, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2219
    .end local v1    # "height":F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2220
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2221
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 2349
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mState:Landroid/widget/AbsSeekBar$SliderDrawable$SliderState;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 2300
    iget v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 2295
    iget v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mSliderMaxWidth:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 3

    .line 2247
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2248
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2249
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 2250
    .local v1, "alpha":I
    if-nez v1, :cond_0

    .line 2251
    const/4 v2, -0x2

    return v2

    .line 2253
    :cond_0
    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 2254
    const/4 v2, -0x1

    return v2

    .line 2257
    .end local v1    # "alpha":I
    :cond_1
    const/4 v1, -0x3

    return v1
.end method

.method blacklist invalidateTrack(F)V
    .locals 0
    .param p1, "value"    # F

    .line 2342
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar$SliderDrawable;->setStrokeWidth(F)V

    .line 2343
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2344
    return-void
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 2230
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 9
    .param p1, "stateSet"    # [I

    .line 2273
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 2274
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 2275
    .local v1, "color":I
    iget v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    .line 2276
    iput v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColor:I

    .line 2277
    iget-object v2, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2278
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2280
    :cond_0
    const/4 v2, 0x0

    .line 2281
    .local v2, "enabled":Z
    const/4 v3, 0x0

    .line 2282
    .local v3, "pressed":Z
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, p1, v6

    .line 2283
    .local v7, "state":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_1

    .line 2284
    const/4 v2, 0x1

    goto :goto_1

    .line 2285
    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    .line 2286
    const/4 v3, 0x1

    .line 2282
    .end local v7    # "state":I
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2289
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-direct {p0, v5}, Landroid/widget/AbsSeekBar$SliderDrawable;->startSliderAnimation(Z)V

    .line 2290
    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 2235
    iput p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mAlpha:I

    .line 2236
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2237
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 2241
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2242
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2243
    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .locals 1
    .param p1, "height"    # F

    .line 2304
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2305
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iput v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mRadius:F

    .line 2306
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 2262
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 2263
    if-eqz p1, :cond_0

    .line 2264
    iput-object p1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 2265
    iget-object v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->this$0:Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    iget v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mColor:I

    .line 2266
    iget-object v1, p0, Landroid/widget/AbsSeekBar$SliderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2267
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar$SliderDrawable;->invalidateSelf()V

    .line 2269
    :cond_0
    return-void
.end method
