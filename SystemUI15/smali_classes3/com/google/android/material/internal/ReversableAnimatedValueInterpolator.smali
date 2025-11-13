.class public final Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final sourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->sourceInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;-><init>(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->sourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method
