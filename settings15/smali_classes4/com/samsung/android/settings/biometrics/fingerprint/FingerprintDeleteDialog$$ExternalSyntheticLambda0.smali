.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintDeleteDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f06053c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
