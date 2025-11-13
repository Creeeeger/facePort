.class public final Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

.field public final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iput p2, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public final onChecked(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$userId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternChecked(IIZZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public final onEarlyMatched()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;

    iget v1, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$userId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener;->onPatternChecked(IIZZ)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$UnlockPatternListener$1;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method
