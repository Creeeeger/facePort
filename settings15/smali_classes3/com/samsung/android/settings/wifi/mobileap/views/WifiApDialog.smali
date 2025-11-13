.class public final Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mEditText1:Landroid/widget/EditText;

.field public mEditText1ErrorTextView:Landroid/widget/TextView;

.field public mMessage1TextView:Landroid/widget/TextView;

.field public mNegativeButtonText:Ljava/lang/String;

.field public mPositiveButton:Landroid/widget/Button;

.field public mPositiveButtonText:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0a20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView$1(Landroid/view/View;)V

    const v1, 0x7f0a095f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mMessage1TextView:Landroid/widget/TextView;

    const v1, 0x7f0a0597

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    const v1, 0x7f0a0599

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0a0598

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1ErrorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mPositiveButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mPositiveButtonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v0, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mNegativeButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, -0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mNegativeButtonText:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v0, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, -0x3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v2, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    return-void
.end method

.method public final setEditText(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method public final setEditTextErrorText(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1ErrorTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f06074e

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1ErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1ErrorTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f060753

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mEditText1:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :goto_0
    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mMessage1TextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
