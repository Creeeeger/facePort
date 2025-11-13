.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v0, p2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    iget-object p1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->updateDialog()V

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;->fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    iput-object p3, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$RemovalError;->errString:Ljava/lang/CharSequence;

    check-cast p2, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    iget-object v0, p2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$Listener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;

    iget-object p2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;->mHandler:Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$4;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {p2, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$3;->updateDialog()V

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    check-cast p2, Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
