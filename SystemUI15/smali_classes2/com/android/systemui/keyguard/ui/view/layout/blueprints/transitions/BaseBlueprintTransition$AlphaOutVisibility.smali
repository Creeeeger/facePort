.class public final Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/BaseBlueprintTransition$AlphaOutVisibility;
.super Landroid/transition/Visibility;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x1

    new-array p0, p0, [F

    const/4 p1, 0x0

    const/4 p3, 0x0

    aput p1, p0, p3

    const-string p1, "alpha"

    invoke-static {p2, p1, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/BaseBlueprintTransition$AlphaOutVisibility$onDisappear$1$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/BaseBlueprintTransition$AlphaOutVisibility$onDisappear$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-object p0
.end method
