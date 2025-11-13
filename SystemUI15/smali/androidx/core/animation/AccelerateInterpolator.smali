.class public final Landroidx/core/animation/AccelerateInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# instance fields
.field public final mDoubleFactor:D

.field public final mFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/core/animation/AccelerateInterpolator;->mFactor:F

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Landroidx/core/animation/AccelerateInterpolator;->mDoubleFactor:D

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/animation/AccelerateInterpolator;->mFactor:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Landroidx/core/animation/AccelerateInterpolator;->mDoubleFactor:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Landroidx/core/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/core/animation/AndroidResources;->STYLEABLE_ACCELERATE_INTERPOLATOR:[I

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/core/animation/AccelerateInterpolator;->mFactor:F

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    float-to-double p2, p2

    iput-wide p2, p0, Landroidx/core/animation/AccelerateInterpolator;->mDoubleFactor:D

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget v0, p0, Landroidx/core/animation/AccelerateInterpolator;->mFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    mul-float/2addr p1, p1

    return p1

    :cond_0
    float-to-double v0, p1

    iget-wide p0, p0, Landroidx/core/animation/AccelerateInterpolator;->mDoubleFactor:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
