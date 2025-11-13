.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "KeyguardEditModeAnimatorController"

    const-string v0, "onAnimationCancel "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result p1

    const-string v0, "onAnimationEnd EM="

    const-string v1, "KeyguardEditModeAnimatorController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1$onAnimationEnd$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STARTED_LOCK_EDIT_MODE_FINISHED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    const-string p1, "KeyguardTouchAnimator"

    const-string v0, "LOCKUI_EDIT_MODE is finished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isKeyguardAnimatorStarted:Z

    :goto_0
    return-void
.end method
