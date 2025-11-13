.class public final synthetic Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Lcom/android/internal/widget/LockscreenCredential;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;ILandroid/content/Intent;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iput p2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/widget/LockscreenCredential;

    iput p5, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/widget/LockscreenCredential;

    iget p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4$$ExternalSyntheticLambda0;->f$4:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "ConfirmLockPatternFragment"

    const-string v5, "OnVerifyCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-boolean v5, v5, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-eqz v5, :cond_1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "gk_pw_handle"

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    move-result-wide v5

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "hw_auth_token"

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_0
    const-string p1, "password"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object p1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->this$0:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {p1, v4, v2, p2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method
