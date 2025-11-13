.class public final Lcom/android/settingslib/animation/AppearAnimationUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$endRunnable:Ljava/lang/Runnable;

.field public final synthetic val$targetAlpha:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetAlpha:F

    iput-object p4, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
