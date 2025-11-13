.class public final Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $duration:J

.field public final synthetic $rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$rootView:Landroid/view/View;

    iput-wide p2, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$duration:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$rootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$animateRemoval$2;->$duration:J

    const/4 p0, 0x2

    int-to-long v2, p0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
