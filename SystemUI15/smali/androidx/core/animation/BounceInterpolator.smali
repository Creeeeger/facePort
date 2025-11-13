.class public final Landroidx/core/animation/BounceInterpolator;
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
    .locals 1

    const p0, 0x3f8fb15b    # 1.1226f

    mul-float/2addr p1, p0

    const p0, 0x3eb4fdf4    # 0.3535f

    cmpg-float p0, p1, p0

    const/high16 v0, 0x41000000    # 8.0f

    if-gez p0, :cond_0

    mul-float/2addr p1, p1

    mul-float/2addr p1, v0

    return p1

    :cond_0
    const p0, 0x3f3da512    # 0.7408f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const p0, 0x3f0c14a5

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    mul-float/2addr p1, v0

    const p0, 0x3f333333    # 0.7f

    :goto_0
    add-float/2addr p1, p0

    return p1

    :cond_1
    const p0, 0x3f76e2eb    # 0.9644f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    const p0, 0x3f5a43fe    # 0.8526f

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    mul-float/2addr p1, v0

    const p0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_2
    const p0, 0x3f859168    # 1.0435f

    sub-float/2addr p1, p0

    mul-float/2addr p1, p1

    mul-float/2addr p1, v0

    const p0, 0x3f733333    # 0.95f

    goto :goto_0
.end method
