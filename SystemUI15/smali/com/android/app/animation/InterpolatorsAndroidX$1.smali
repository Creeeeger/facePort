.class public final Lcom/android/app/animation/InterpolatorsAndroidX$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    sget-object p0, Lcom/android/app/animation/InterpolatorsAndroidX;->DECELERATE_3:Landroidx/core/animation/DecelerateInterpolator;

    sget-object v0, Lcom/android/app/animation/InterpolatorsAndroidX;->ZOOM_OUT:Lcom/android/app/animation/InterpolatorsAndroidX$2;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/android/app/animation/InterpolatorsAndroidX$2;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Landroidx/core/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
