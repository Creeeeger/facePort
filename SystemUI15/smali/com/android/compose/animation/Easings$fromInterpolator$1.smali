.class public final Lcom/android/compose/animation/Easings$fromInterpolator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# instance fields
.field public final synthetic $source:Landroidx/core/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroidx/core/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/Easings$fromInterpolator$1;->$source:Landroidx/core/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/Easings$fromInterpolator$1;->$source:Landroidx/core/animation/Interpolator;

    invoke-interface {p0, p1}, Landroidx/core/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
