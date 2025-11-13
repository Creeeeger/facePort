.class public Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBiometricsModality:I

.field public mDestroyActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 1

    iget p0, p0, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;->mBiometricsModality:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 p0, 0x7ec

    return p0

    :cond_0
    const/16 p0, 0x7ed

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "biometrics_modality"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;->mBiometricsModality:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "destroy_activity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;->mDestroyActivity:Z

    iget p1, p0, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;->mBiometricsModality:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const p1, 0x7f14064c

    const v0, 0x7f14064b

    goto :goto_0

    :cond_0
    const p1, 0x7f14064a

    const v0, 0x7f140649

    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    iget-object p1, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    new-instance p1, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;)V

    const p0, 0x7f140648

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
