.class Landroid/widget/ProgressBar$CirCleProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CirCleProgressDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;
    }
.end annotation


# instance fields
.field private final blacklist VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Landroid/widget/ProgressBar$CirCleProgressDrawable;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAlpha:I

.field private blacklist mArcRect:Landroid/graphics/RectF;

.field blacklist mColor:I

.field blacklist mColorStateList:Landroid/content/res/ColorStateList;

.field private blacklist mIsBackground:Z

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field public blacklist mProgress:I

.field private final blacklist mState:Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

.field final synthetic blacklist this$0:Landroid/widget/ProgressBar;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ProgressBar;ZLandroid/content/res/ColorStateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mAlpha:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;-><init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState-IA;)V

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mState:Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

    new-instance p1, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;

    const-string/jumbo v0, "visual_progress"

    invoke-direct {p1, p0, v0}, Landroid/widget/ProgressBar$CirCleProgressDrawable$1;-><init>(Landroid/widget/ProgressBar$CirCleProgressDrawable;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;

    iput-boolean p2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mIsBackground:Z

    iget-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p3, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    iget-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

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


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v2}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mAlpha:I

    invoke-direct {v0, v1, v3}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->modulateAlpha(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v5}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    iget-object v6, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v7}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v8}, Landroid/widget/ProgressBar;->-$$Nest$fgetmRoundStrokeWidth(Landroid/widget/ProgressBar;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    sub-float/2addr v7, v8

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v2}, Landroid/widget/ProgressBar;->-$$Nest$fgetmMax(Landroid/widget/ProgressBar;)I

    move-result v2

    iget-object v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v3}, Landroid/widget/ProgressBar;->-$$Nest$fgetmMin(Landroid/widget/ProgressBar;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget v3, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    iget-object v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v4}, Landroid/widget/ProgressBar;->-$$Nest$fgetmMin(Landroid/widget/ProgressBar;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mIsBackground:Z

    if-eqz v4, :cond_1

    iget-object v6, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/4 v9, 0x0

    iget-object v10, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v12, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v14, v3, v4

    const/4 v15, 0x0

    iget-object v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x43870000    # 270.0f

    move-object/from16 v11, p1

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v4, v0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mState:Landroid/widget/ProgressBar$CirCleProgressDrawable$ProgressState;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 3

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

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

.method protected whitelist onStateChange([I)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    iget-object v2, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    :cond_0
    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public blacklist setProgress(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroid/util/IntProperty;

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    nop

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-static {}, Landroid/widget/ProgressBar;->-$$Nest$sfgetPROGRESS_ANIM_INTERPOLATOR()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mProgress:I

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->this$0:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    :goto_0
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    iget-object v0, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/ProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar$CirCleProgressDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
