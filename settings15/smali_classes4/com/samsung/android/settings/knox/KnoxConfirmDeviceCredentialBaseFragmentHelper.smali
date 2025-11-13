.class public final Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;


# virtual methods
.method public final needToUpdateErrorMessage(ILandroid/widget/TextView;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->needToUpdateErrorMessage(ILandroid/widget/TextView;)V

    :cond_0
    return-void
.end method
