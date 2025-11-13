.class public Lcom/android/settings/password/CredentialCheckResultTracker;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHasResult:Z

.field public mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

.field public mResultData:Landroid/content/Intent;

.field public mResultEffectiveUserId:I

.field public mResultMatched:Z

.field public mResultTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method

.method public final setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v5, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    :cond_1
    return-void
.end method

.method public final setResult(ZLandroid/content/Intent;II)V
    .locals 7

    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iput-object p2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iput p3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iput p4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    iget-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    :cond_0
    return-void
.end method
