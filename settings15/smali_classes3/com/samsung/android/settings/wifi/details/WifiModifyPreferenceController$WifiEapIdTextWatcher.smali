.class public final Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mEditText:Landroid/widget/EditText;

.field public final mErrorText:Landroid/widget/TextView;

.field public mPreviousString:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_0

    const/16 p3, 0xc8

    if-gt p2, p3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v2, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " start: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiModifyPrefCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string p2, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const p2, 0x7f141758

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    const p3, 0x7f060753

    invoke-static {p2, p3, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f060b3f

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    :goto_1
    return-void
.end method
