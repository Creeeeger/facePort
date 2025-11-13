.class public final Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$expanded:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    iput-object p3, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$expanded:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior$1;->val$child:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
