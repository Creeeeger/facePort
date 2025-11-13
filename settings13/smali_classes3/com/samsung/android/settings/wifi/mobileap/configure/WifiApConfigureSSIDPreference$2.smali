.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;
.super Ljava/lang/Object;
.source "WifiApConfigureSSIDPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fputmSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSSIDLen(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    if-ge p1, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSSIDLen(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)I

    move-result v0

    if-lt v0, v1, :cond_1

    if-lt p1, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmErrSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSSID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmWifiApConfigureSettings(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->updateSaveButtonEnabling()V

    :cond_3
    const-string v0, "TETH_011"

    const-string v1, "8010"

    .line 205
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fputmSSIDLen(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-gt p2, p3, :cond_0

    .line 193
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fputmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fputmSSIDLen(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 p3, 0x20

    if-le p2, p3, :cond_6

    .line 148
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-gt p2, p3, :cond_5

    .line 149
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    if-le p2, v0, :cond_4

    .line 150
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    move p2, p4

    move v0, p2

    move v1, v0

    :goto_0
    if-gt p2, p3, :cond_0

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int v2, v0, v1

    .line 156
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr p2, v0

    move v0, v2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    add-int/lit8 p2, v0, -0x1

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v1, 0x262a

    if-eq p3, v1, :cond_2

    const/16 v1, 0x271d

    if-eq p3, v1, :cond_1

    .line 168
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 165
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p3}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 178
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->wifi_ssid_max_byte_error:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 185
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-ge p1, p3, :cond_7

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$color;->sec_wifi_ap_edit_text_background_color:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    :goto_2
    return-void
.end method
