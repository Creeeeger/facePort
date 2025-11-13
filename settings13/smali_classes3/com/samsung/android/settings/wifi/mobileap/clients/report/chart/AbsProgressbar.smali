.class public abstract Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;
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
.method public static synthetic $r8$lambda$9Opaq3pGNLKWNiFpaDNInM0dBtQ(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->lambda$setAnimator$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgress:F

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->initProgressBar()V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->setAnimator()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 56
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgress:F

    return-void
.end method

.method private synthetic lambda$setAnimator$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 90
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgress:F

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected initProgressBar()V
    .locals 3

    const/high16 v0, 0x41d00000    # 26.0f

    .line 64
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphHeight:F

    const/high16 v0, 0x41400000    # 12.0f

    .line 65
    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphRadius:F

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphOutlinePath:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    .line 69
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mGraphOutlineStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    .line 75
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mBarBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->onProgress()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mMaxGraphWidth:F

    return-void
.end method

.method protected abstract onProgress()I
.end method

.method setAnimator()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 87
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 88
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
