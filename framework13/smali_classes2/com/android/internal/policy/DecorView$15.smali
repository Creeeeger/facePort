.class Lcom/android/internal/policy/DecorView$15;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->onFreeformResizeGuideViewChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 6354
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$15;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6368
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$15;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getTranslationZ()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 6369
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$15;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setTranslationZ(F)V

    .line 6371
    :cond_0
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6361
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$15;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getTranslationZ()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 6362
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$15;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DecorView;->setTranslationZ(F)V

    .line 6364
    :cond_0
    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6375
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 6357
    return-void
.end method
