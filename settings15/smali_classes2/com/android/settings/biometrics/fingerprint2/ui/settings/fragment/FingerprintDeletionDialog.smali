.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;",
        "Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

.field public isLastFingerprint:Z

.field public onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public onNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23a

    return p0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    return-void

    :cond_0
    const-string p0, "onCancelListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.fingerprint.Fingerprint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;-><init>(JILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "IS_LAST_FINGERPRINT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->isLastFingerprint:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    const-string v0, "fingerprintViewModel"

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v2, 0x7f140f9a

    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "getString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    if-eqz v4, :cond_7

    iget-object v0, v4, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f140faf

    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->isLastFingerprint:Z

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v4, "Settings.WORK_PROFILE_FINGERPRINT_LAST_DELETE_MESSAGE"

    goto :goto_0

    :cond_0
    const-string v4, "UNDEFINED"

    :goto_0
    if-eqz v2, :cond_1

    const v2, 0x7f140fa1

    goto :goto_1

    :cond_1
    const v2, 0x7f140fa0

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$onCreateDialog$1;

    invoke-direct {v6, v3, v0, v2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$onCreateDialog$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;I)V

    invoke-virtual {v5, v4, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p1, :cond_6

    const v2, 0x7f1429ed

    invoke-virtual {v0, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog;->onNegativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_5

    const p1, 0x7f1408bf

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "onNegativeClickListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p0, "onClickListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
