.class public final Lcom/android/systemui/util/ValueAnimatorUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

.field private static final RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final RELEASE_SCALE:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/util/ValueAnimatorUtil;

    invoke-direct {v0}, Lcom/android/systemui/util/ValueAnimatorUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/util/ValueAnimatorUtil;->RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/ValueAnimatorUtil;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createScaleAnimator(Landroid/view/View;FFLandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/systemui/util/ValueAnimatorUtil$createScaleAnimator$1$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/util/ValueAnimatorUtil$createScaleAnimator$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public final getRELEASE_INTERPOLATOR()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Lcom/android/systemui/util/ValueAnimatorUtil;->RELEASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final startDownScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p0

    cmpg-float p0, p0, p3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p0, p2, v0

    const/4 p0, 0x1

    aput p3, p2, p0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final startReleaseScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;FLandroid/animation/ValueAnimator;)V
    .locals 1

    const/4 p0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, p0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p4

    cmpg-float p4, p4, p3

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    const/4 p4, 0x2

    new-array p4, p4, [F

    const/4 v0, 0x0

    aput p2, p4, v0

    aput p3, p4, p0

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method
