.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$touchDownAnimatorListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$touchDownAnimatorListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$touchDownAnimatorListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;->onTouchDownCanceled()V

    goto :goto_0

    :cond_0
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

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$touchDownAnimatorListener$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;

    invoke-interface {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;->onTouchDownStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method
