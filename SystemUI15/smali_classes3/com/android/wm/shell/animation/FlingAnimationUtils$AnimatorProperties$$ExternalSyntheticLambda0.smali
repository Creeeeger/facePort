.class public final synthetic Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Interpolator;


# instance fields
.field public final synthetic f$0:Landroid/view/animation/Interpolator;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties$$ExternalSyntheticLambda0;->f$0:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/animation/FlingAnimationUtils$AnimatorProperties$$ExternalSyntheticLambda0;->f$0:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
