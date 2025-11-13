.class public final Lcom/android/systemui/shade/transition/LargeScreenPortraitShadeInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBehindScrimAlpha(F)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    invoke-static {v1, p0, v1, v0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method

.method public final getNotificationContentAlpha(F)F
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result p0

    return p0
.end method

.method public final getNotificationScrimAlpha(F)F
    .locals 3

    const p0, 0x3e99999a    # 0.3f

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p0, v0, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method
