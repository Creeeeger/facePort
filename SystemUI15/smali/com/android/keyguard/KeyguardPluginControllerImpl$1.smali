.class public final Lcom/android/keyguard/KeyguardPluginControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

.field public final synthetic val$credential:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPluginControllerImpl;ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iput p2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$userId:I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public final onChecked(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$userId:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->-$$Nest$monPasswordChecked(Lcom/android/keyguard/KeyguardPluginControllerImpl;IZI)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public final onEarlyMatched()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPluginControllerImpl;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->this$0:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iget v1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$userId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->-$$Nest$monPasswordChecked(Lcom/android/keyguard/KeyguardPluginControllerImpl;IZI)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$1;->val$credential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method
