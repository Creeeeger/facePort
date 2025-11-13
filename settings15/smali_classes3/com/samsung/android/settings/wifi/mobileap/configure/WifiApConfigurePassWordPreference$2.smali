.class public final Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string p1, "TETH_011"

    const-string v0, "8012"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

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

    const/16 p3, 0x3f

    if-gt p2, p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x8

    if-ge p2, p3, :cond_0

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object v0, p4, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f1432f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    :cond_0
    const/16 p4, 0x3f

    if-le p2, p4, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-gt p2, p4, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p3, p3, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    if-le p2, p3, :cond_2

    move p2, v0

    move p3, p2

    move v1, p3

    :goto_0
    if-gt p2, p4, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, p3, v1

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    add-int/2addr p2, p3

    move p3, v2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    sub-int/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    const p3, 0x7f1436c3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    goto :goto_2

    :cond_5
    if-lt p2, p3, :cond_6

    if-ge p2, p4, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
