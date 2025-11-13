.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$FingerprintSettingsRenameFragment$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    sget-object p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    sget-object p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method
