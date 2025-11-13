.class public final Lcom/android/systemui/shade/transition/SplitShadeInterpolator;
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

    const/4 v0, 0x0

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, p0, v0, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method

.method public final getNotificationContentAlpha(F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/transition/SplitShadeInterpolator;->getNotificationScrimAlpha(F)F

    move-result p0

    return p0
.end method

.method public final getNotificationScrimAlpha(F)F
    .locals 3

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3ec7ae14    # 0.39f

    const v2, 0x3f28f5c3    # 0.66f

    invoke-static {p0, v0, v1, v2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method
