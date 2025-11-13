.class public final synthetic Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
