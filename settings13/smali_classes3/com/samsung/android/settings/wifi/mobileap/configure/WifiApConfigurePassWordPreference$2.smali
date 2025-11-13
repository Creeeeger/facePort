.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;
.super Ljava/lang/Object;
.source "WifiApConfigurePassWordPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string p1, "TETH_011"

    const-string v0, "8012"

    .line 163
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmPasswordEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fputmPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmWifiApConfigureSettings(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x3f

    if-gt p2, p3, :cond_0

    .line 159
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fputmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x8

    if-ge p2, p3, :cond_0

    .line 126
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p4}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_ap_credentials_password_too_short:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    :cond_0
    const/16 p4, 0x3f

    if-le p2, p4, :cond_5

    .line 129
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-gt p2, p4, :cond_4

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
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

    .line 136
    invoke-virtual {p1, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, p3, v1

    .line 137
    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    add-int/2addr p2, p3

    move p3, v2

    goto :goto_0

    .line 140
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmPasswordEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/widget/EditText;

    move-result-object p2

    sub-int/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmPasswordEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmPasswordEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmPasswordEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->wifi_ssid_max_byte_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-lt p2, p3, :cond_6

    if-ge p2, p4, :cond_6

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->-$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
