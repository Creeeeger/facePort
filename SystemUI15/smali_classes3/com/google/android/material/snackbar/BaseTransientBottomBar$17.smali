.class public final Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field public final synthetic val$actionView:Landroid/widget/Button;

.field public final synthetic val$content:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final synthetic val$messageView:Landroid/widget/TextView;

.field public final synthetic val$startHeight:I

.field public final synthetic val$startWidth:I

.field public final synthetic val$targetHeight:I

.field public final synthetic val$targetWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/snackbar/SnackbarContentLayout;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$messageView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$actionView:Landroid/widget/Button;

    iput-object p4, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$content:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iput p5, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$startWidth:I

    iput p6, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$targetWidth:I

    iput p7, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$startHeight:I

    iput p8, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$targetHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$messageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    const v6, 0x7f0c002f

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$actionView:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$actionView:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v5, v5, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->val$content:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;

    const-string/jumbo v5, "size"

    invoke-direct {v4, p0, v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$1;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const v4, 0x3f3851ec    # 0.72f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v3, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v3, v3, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    invoke-direct {v2, v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v3, v2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method
