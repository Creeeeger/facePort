.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$19;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$19;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$19;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->resetDismissAnimator()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$19;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->resetDismissAnimator()V

    return-void
.end method
