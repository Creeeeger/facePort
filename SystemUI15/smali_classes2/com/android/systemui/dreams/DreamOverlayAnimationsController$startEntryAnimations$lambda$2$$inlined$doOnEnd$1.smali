.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mAnimator:Landroid/animation/Animator;

    const/4 v1, 0x4

    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->logger:Lcom/android/systemui/log/core/Logger;

    const-string p1, "Dream overlay entry animations finished."

    invoke-static {p0, p1, v0, v2, v0}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

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
