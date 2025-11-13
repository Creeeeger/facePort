.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iput p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public final onChecked(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPatternDetected - onChecked - matched : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardSecPatternViewController.DDAR"

    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v2, p1, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IIZZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->val$userId:I

    invoke-virtual {p1, p0, v0, v1, v1}, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->onPatternChecked(IIZZ)V

    :goto_0
    return-void
.end method

.method public final onInnerLayerUnlockFailed()V
    .locals 2

    const-string v0, "KeyguardSecPatternViewController.DDAR"

    const-string v1, "onPatternDetected - onInnerLayerUnlockFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method public final onInnerLayerUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-string v0, "KeyguardSecPatternViewController.DDAR"

    const-string v1, "onPatternDetected - onInnerLayerUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$SecUnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
