.class public abstract Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;
.super Landroid/view/View;
.source "AbsProgressbar.java"


# instance fields
.field mBarBgPaint:Landroid/graphics/Paint;

.field mBarPaint:Landroid/graphics/Paint;

.field mGraphHeight:F

.field mGraphOutlinePath:Landroid/graphics/Path;

.field mGraphOutlineStrokePaint:Landroid/graphics/Paint;

.field mGraphRadius:F

.field mMaxGraphWidth:F

.field mProgress:F

.field mProgressAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$2yWgbjIQPzxvk2qcJ6LfbYiOPRc(Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->lambda$setAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->initProgressBar()V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->setAnimator()V

    .line 42
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    goto :goto_0

    .line 45
    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    :goto_0
    return-void
.end method

.method private synthetic lambda$setAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected initProgressBar()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->home_screen_time_graph_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphHeight:F

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->home_screen_time_graph_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphRadius:F

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    .line 55
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->home_screen_time_graph_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    .line 61
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    .line 66
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->onProgress()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mMaxGraphWidth:F

    return-void
.end method

.method protected abstract onProgress()I
.end method

.method setAnimator()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 73
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 74
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/views/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
