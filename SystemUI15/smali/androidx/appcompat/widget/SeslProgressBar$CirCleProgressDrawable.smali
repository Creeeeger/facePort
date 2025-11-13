.class public final Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final VISUAL_CIRCLE_PROGRESS:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;

.field public mAlpha:I

.field public final mArcRect:Landroid/graphics/RectF;

.field public mColor:I

.field public mColorStateList:Landroid/content/res/ColorStateList;

.field public final mIsBackground:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mProgress:I

.field public final mState:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$ProgressState;

.field public final synthetic this$0:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SeslProgressBar;ZLandroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mAlpha:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$ProgressState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$ProgressState;-><init>(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;Landroidx/appcompat/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mState:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$ProgressState;

    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;

    const-string/jumbo v1, "visual_progress"

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;-><init>(Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->VISUAL_CIRCLE_PROGRESS:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$1;

    iput-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mIsBackground:Z

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p3, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget v2, v2, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mAlpha:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget v4, v3, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v3, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    int-to-float v8, v7

    add-float/2addr v5, v8

    int-to-float v4, v4

    div-float/2addr v4, v6

    int-to-float v7, v7

    add-float/2addr v4, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v7, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget v8, v7, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    sub-float/2addr v3, v8

    iget v8, v7, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    int-to-float v8, v8

    sub-float/2addr v3, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget v9, v8, Landroidx/appcompat/widget/SeslProgressBar;->mRoundStrokeWidth:I

    int-to-float v9, v9

    div-float/2addr v9, v6

    sub-float/2addr v7, v9

    iget v6, v8, Landroidx/appcompat/widget/SeslProgressBar;->mCirclePadding:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    invoke-virtual {v2, v5, v4, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->this$0:Landroidx/appcompat/widget/SeslProgressBar;

    iget v3, v2, Landroidx/appcompat/widget/SeslProgressBar;->mMax:I

    iget v2, v2, Landroidx/appcompat/widget/SeslProgressBar;->mMin:I

    sub-int/2addr v3, v2

    if-lez v3, :cond_0

    iget v4, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mProgress:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mIsBackground:Z

    if-eqz v3, :cond_1

    iget-object v5, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    iget-object v9, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v11, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mArcRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v13, v2, v3

    iget-object v15, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x43870000    # 270.0f

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, v0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mState:Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable$ProgressState;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/16 v0, 0xff

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, -0x3

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStateChange([I)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColor:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColor:I

    iget-object v1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mColor:I

    iget-object v0, p0, Landroidx/appcompat/widget/SeslProgressBar$CirCleProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
