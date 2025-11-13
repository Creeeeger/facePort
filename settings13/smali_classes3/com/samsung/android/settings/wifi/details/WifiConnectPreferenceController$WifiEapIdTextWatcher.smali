.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;
.super Ljava/lang/Object;
.source "WifiConnectPreferenceController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEapIdTextWatcher"
.end annotation


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private final mErrorText:Landroid/widget/TextView;

.field private mPreviousString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    .line 3073
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3074
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 3075
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 3105
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapIdentityView(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 3106
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3080
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    if-lez p2, :cond_0

    const/16 p3, 0xc8

    if-gt p2, p3, :cond_0

    .line 3082
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 3088
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 3089
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string v2, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3090
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_0

    .line 3091
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mPreviousString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string p2, "WifiConnectPrefController"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3096
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    const-string p2, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3098
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    sget p3, Lcom/android/settings/R$string;->max_char_reached:I

    invoke-static {p1, p2, p0, p3}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mshowErrorTextUnderEditText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto :goto_1

    .line 3100
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$WifiEapIdTextWatcher;->mErrorText:Landroid/widget/TextView;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mclearErrorTextUnderEditText(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroid/widget/EditText;Landroid/widget/TextView;)V

    :goto_1
    return-void
.end method
