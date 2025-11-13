.class public final Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final handleOnBackPressed()V
    .locals 1

    sget p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->$r8$clinit:I

    const-string p0, "ConfirmDeviceCredentialBaseFragment"

    const-string v0, "handleOnBackPressed: Back key is pressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
