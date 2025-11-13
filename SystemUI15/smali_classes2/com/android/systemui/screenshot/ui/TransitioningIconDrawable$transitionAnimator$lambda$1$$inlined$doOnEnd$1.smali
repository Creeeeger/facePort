.class public final Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable$transitionAnimator$lambda$1$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable$transitionAnimator$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable$transitionAnimator$lambda$1$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;

    iget-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/TransitioningIconDrawable;->enteringDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
