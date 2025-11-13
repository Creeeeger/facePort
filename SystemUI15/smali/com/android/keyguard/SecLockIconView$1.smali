.class public final Lcom/android/keyguard/SecLockIconView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public mIsCancelled:Z

.field public final synthetic val$animEndCallbackRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconView;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView$1;->val$animEndCallbackRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView$1;->mIsCancelled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView$1;->mIsCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/keyguard/SecLockIconView$1;->mIsCancelled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView$1;->val$animEndCallbackRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView$1;->mIsCancelled:Z

    return-void
.end method
