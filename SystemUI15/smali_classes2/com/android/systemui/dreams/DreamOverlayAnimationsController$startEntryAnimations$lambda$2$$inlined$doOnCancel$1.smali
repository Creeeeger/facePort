.class public final Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnCancel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayAnimationsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnCancel$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController$startEntryAnimations$lambda$2$$inlined$doOnCancel$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->logger:Lcom/android/systemui/log/core/Logger;

    const-string p1, "Dream overlay entry animations canceled."

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

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
