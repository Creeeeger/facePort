.class public final Lcom/android/systemui/util/animation/AnimationUtil$Companion;
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

    invoke-direct {p0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFrames(I)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getMsForFrames(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getMsForFrames(I)J
    .locals 0

    if-ltz p1, :cond_0

    int-to-float p0, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x42700000    # 60.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToLong(D)J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numFrames must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
