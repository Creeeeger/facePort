.class public final Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallbackForDualDarDo;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

.field public final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iput p2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public final onChecked(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verifyPasswordAndUnlock - onChecked - matched : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardSecAbsKeyInputViewController.DDAR"

    invoke-static {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$300(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$400(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    iget v2, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$userId:I

    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$userId:I

    invoke-virtual {p1, p0, v0, v1, v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onPasswordChecked(IIZZ)V

    :goto_0
    return-void
.end method

.method public final onInnerLayerUnlockFailed()V
    .locals 1

    const-string p0, "KeyguardSecAbsKeyInputViewController.DDAR"

    const-string/jumbo v0, "verifyPasswordAndUnlock - onInnerLayerUnlockFailed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onInnerLayerUnlocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    const-string v0, "KeyguardSecAbsKeyInputViewController.DDAR"

    const-string/jumbo v1, "verifyPasswordAndUnlock - onInnerLayerUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$500(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryInputEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$600(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->enableTouch()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method
