.class public final synthetic Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

.field public final synthetic f$1:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;Lcom/google/android/material/snackbar/SnackbarContentLayout;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v4, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    const/16 p0, 0x64

    invoke-virtual {v1, v4, p0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->updateContentBackground(Landroid/view/View;II)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->view:Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    invoke-direct {v5, v0, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v7, 0x43af0000    # 350.0f

    invoke-virtual {v0, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object v0, v5, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    sget p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->TRANSITION_HEIGHT:I

    int-to-float p0, p0

    const/4 v0, 0x0

    sub-float/2addr v0, p0

    invoke-virtual {v5, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    const p0, 0x3dcccccd    # 0.1f

    iput p0, v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    const/16 v5, 0x64

    const/16 v7, 0x64

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/snackbar/SnackbarContentLayout;IIII)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v9, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
