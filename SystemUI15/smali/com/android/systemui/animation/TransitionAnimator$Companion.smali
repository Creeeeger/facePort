.class public final Lcom/android/systemui/animation/TransitionAnimator$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/TransitionAnimator$Companion;-><init>()V

    return-void
.end method

.method public static getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    long-to-float p0, v0

    mul-float/2addr p1, p0

    long-to-float p0, p2

    sub-float/2addr p1, p0

    long-to-float p0, p4

    div-float/2addr p1, p0

    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p0, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method
