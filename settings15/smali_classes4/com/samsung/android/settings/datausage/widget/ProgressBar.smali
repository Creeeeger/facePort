.class public Lcom/samsung/android/settings/datausage/widget/ProgressBar;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlphaValue:I

.field public final mAnimBarPaint:Landroid/graphics/Paint;

.field public final mAnimBarPosition:F

.field public final mAnimBarRadius:F

.field public final mAnimBarWidth:F

.field public mAnimType:I

.field public mBackgroundColor:I

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public mBackgroundStrokeColor:I

.field public final mBgPath:Landroid/graphics/Path;

.field public final mGradientColorArray:[J

.field public final mGradientTopCoat:Z

.field public final mIsRTL:Z

.field public final mIsReverse:Z

.field public final mIsVerticalProgress:Z

.field public mMaxHeight:F

.field public mMaxWidth:F

.field public final mOutlineRadius:F

.field public final mOutlineStrokePaint:Landroid/graphics/Paint;

.field public final mOutlineStrokeSize:F

.field public mProgressAnim:Landroid/animation/ValueAnimator;

.field public final mProgressBarPaint:Landroid/graphics/Paint;

.field public final mProgressColor:I

.field public mProgressSize:F

.field public final mRadiusSubPath:Landroid/graphics/Path;

.field public mScore:F

.field public final mStrokeRect:Landroid/graphics/RectF;

.field public final mTopGradientPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mStrokeRect:Landroid/graphics/RectF;

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsRTL:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientTopCoat:Z

    const-string v3, "ProgressBar"

    const-string v4, "BaseProgressBar"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ViewUtils;->isRTL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsRTL:Z

    :try_start_0
    sget-object v3, Lcom/android/settings/R$styleable;->SecBaseProgressBar:[I

    invoke-virtual {p1, p2, v3, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c83

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineRadius:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c1c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 p3, 0x4

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokeSize:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v3, 0x7f06066c

    invoke-virtual {p2, v3, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundStrokeColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v3, 0x7f06066b

    invoke-virtual {p2, v3, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v3, 0x7f06066a

    invoke-virtual {p2, v3, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressColor:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsVerticalProgress:Z

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientTopCoat:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string p2, "Error obtaining styled attributes"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "initView. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineRadius:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokeSize:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBgPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokeSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundColor:I

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mRadiusSubPath:Landroid/graphics/Path;

    iget p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressColor:I

    iget-object p3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientTopCoat:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mTopGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mTopGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06060e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06060d

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v3

    invoke-static {p2}, Landroid/graphics/Color;->pack(I)J

    move-result-wide p1

    new-array p3, v0, [J

    aput-wide v3, p3, v2

    aput-wide p1, p3, v1

    iput-object p3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientColorArray:[J

    :cond_1
    const/16 p1, 0xff

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAlphaValue:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPosition:F

    iput v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimType:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c1a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070c18

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarRadius:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float v3, p3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0605be

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f0605bd

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimType:I

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->onDraw$com$samsung$android$settings$datausage$widget$SecBaseProgressBar(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsVerticalProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    iget v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarWidth:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPosition:F

    add-float v4, v3, v2

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarRadius:F

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPosition:F

    iget v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarWidth:F

    add-float v3, v1, v2

    iget v4, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    sub-float/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarRadius:F

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimBarPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAlphaValue:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public final onDraw$com$samsung$android$settings$datausage$widget$SecBaseProgressBar(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget v10, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokeSize:F

    iget-object v8, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBgPath:Landroid/graphics/Path;

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    sub-float v11, v1, v10

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    sub-float v12, v1, v10

    iget v14, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineRadius:F

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v9, v10

    move v13, v14

    move-object v15, v1

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsVerticalProgress:Z

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    iget v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    sub-float v5, v1, v2

    iget-object v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    sub-float v3, v5, v1

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    iget-object v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressBarPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    iget v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimType:I

    if-nez v2, :cond_1

    iget v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    iget v3, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iput v3, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mRadiusSubPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsRTL:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mRadiusSubPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    sub-float v5, v4, v5

    iget v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    invoke-direct {v3, v5, v8, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mRadiusSubPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    sub-float v2, v4, v1

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    iget-object v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressBarPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientTopCoat:Z

    if-eqz v1, :cond_3

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    sub-float v2, v4, v1

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    iget-object v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mTopGradientPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mRadiusSubPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    invoke-direct {v3, v8, v8, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    invoke-virtual {v2, v3, v4, v4, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mRadiusSubPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    iget-object v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressBarPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientTopCoat:Z

    if-eqz v1, :cond_3

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    iget v5, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    iget-object v6, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mTopGradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokeSize:F

    cmpl-float v2, v1, v8

    if-eqz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mStrokeRect:Landroid/graphics/RectF;

    iget v3, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    sub-float/2addr v3, v1

    iget v4, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mStrokeRect:Landroid/graphics/RectF;

    iget v2, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineRadius:F

    iget-object v0, v0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->onMeasure$com$samsung$android$settings$datausage$widget$SecBaseProgressBar(II)V

    return-void
.end method

.method public final onMeasure$com$samsung$android$settings$datausage$widget$SecBaseProgressBar(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mScore:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->setProgress(F)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundStrokeColor:I

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundColor:I

    iput v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundStrokeColor:I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setProgress(F)V
    .locals 9

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mScore:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iput v0, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    goto :goto_1

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    iget-boolean p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mIsVerticalProgress:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxHeight:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mMaxWidth:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientTopCoat:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mTopGradientPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressSize:F

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mGradientColorArray:[J

    const/4 v0, 0x2

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[J[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
