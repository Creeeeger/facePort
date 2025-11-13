.class abstract Landroid/widget/Chronometer$ChronometerProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "Chronometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ChronometerProgressDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState;
    }
.end annotation


# instance fields
.field private final blacklist VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/widget/Chronometer$ChronometerProgressDrawable;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAlpha:I

.field blacklist mAnimator:Landroid/animation/ObjectAnimator;

.field blacklist mColor:I

.field blacklist mColorStateList:Landroid/content/res/ColorStateList;

.field blacklist mIsBackground:Z

.field blacklist mIsWarningMode:Z

.field final blacklist mPaint:Landroid/graphics/Paint;

.field public blacklist mProgress:I

.field final blacklist mState:Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState;

.field blacklist mWarningColorStateList:Landroid/content/res/ColorStateList;

.field final synthetic blacklist this$0:Landroid/widget/Chronometer;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Chronometer;ZLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 1
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

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAlpha:I

    new-instance p1, Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState;-><init>(Landroid/widget/Chronometer$ChronometerProgressDrawable;Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState-IA;)V

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mState:Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState;

    new-instance p1, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;

    const-string/jumbo v0, "visual_progress"

    invoke-direct {p1, p0, v0}, Landroid/widget/Chronometer$ChronometerProgressDrawable$1;-><init>(Landroid/widget/Chronometer$ChronometerProgressDrawable;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;

    iput-boolean p2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mIsBackground:Z

    iget-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-object p3, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mWarningColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    iget-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mProgress:I

    return-void
.end method


# virtual methods
.method blacklist cancelAnimator()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mState:Landroid/widget/Chronometer$ChronometerProgressDrawable$ProgressState;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 3

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

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

.method public whitelist isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method blacklist modulateAlpha(II)I
    .locals 2

    ushr-int/lit8 v0, p2, 0x7

    add-int/2addr v0, p2

    mul-int v1, p1, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method protected whitelist onStateChange([I)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-boolean v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mIsWarningMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mWarningColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    :goto_0
    iget v2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    iget-object v2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->invalidateSelf()V

    :cond_1
    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method blacklist setProgress(IZ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;

    filled-new-array {p1}, [I

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->overrideDurationScale(F)V

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$fgetmProgressAnimationDuration(Landroid/widget/Chronometer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {}, Landroid/widget/Chronometer;->-$$Nest$sfgetPROGRESS_ANIM_INTERPOLATOR()Landroid/view/animation/LinearInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    iget v2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mProgress:I

    int-to-float v2, v2

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$fgetmProgressDrawable(Landroid/widget/Chronometer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->invalidateSelf()V

    goto :goto_0

    :cond_2
    iput p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mProgress:I

    :goto_0
    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->invalidate()V

    :goto_1
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method blacklist setWarningColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mWarningColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method blacklist setWarningMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mWarningColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mIsWarningMode:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mWarningColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/widget/Chronometer$ChronometerProgressDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist updateColor(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mWarningColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    iget-object v0, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/Chronometer$ChronometerProgressDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
