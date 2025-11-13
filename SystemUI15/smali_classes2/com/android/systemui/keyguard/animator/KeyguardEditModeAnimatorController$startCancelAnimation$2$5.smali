.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    return-void
.end method
