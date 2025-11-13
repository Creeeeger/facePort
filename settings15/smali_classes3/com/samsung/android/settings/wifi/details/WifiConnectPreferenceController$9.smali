.class public final Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

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

    const/16 p3, 0x20

    if-gt p2, p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-le p2, p3, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    const-string p4, "inputType=PredictionOff;disableEmoticonInput=true;disableGifKeyboard=true;disableSticker=true;disableLiveMessage=true;defaultInputmode=english"

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-gt p2, p3, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p4, p4, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    sub-int/2addr p2, p4

    const/4 p4, 0x1

    if-le p2, p4, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x0

    if-le p2, p4, :cond_3

    move p2, v0

    move p4, p2

    move v1, p4

    :goto_0
    if-gt p2, p3, :cond_1

    invoke-virtual {p1, p4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, p4, v1

    invoke-virtual {p1, p4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    array-length p4, p4

    add-int/2addr p2, p4

    move p4, v2

    goto :goto_0

    :cond_1
    sub-int/2addr p4, v1

    add-int/lit8 p2, p4, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x262a

    if-eq p3, v1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTempSsid:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidErrorText:Landroid/widget/TextView;

    const p4, 0x7f141758

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$9;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidView:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSsidErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->clearErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    :goto_2
    return-void
.end method
