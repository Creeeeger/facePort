.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;
.super Landroidx/preference/Preference;
.source "WifiApConfigurePassWordPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mErrPassWord:Ljava/lang/String;

.field private mImeActionType:I

.field private mPassWord:Ljava/lang/String;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mTempPassWord:Ljava/lang/String;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field private passwordWatcher:Landroid/text/TextWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPasswordEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApConfigureSettings(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempPassWord(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$msetErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->setErrorText(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, -0x7dfffffa

    .line 39
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mImeActionType:I

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mTempPassWord:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-string p2, "\tUSER#DEFINED#PWD#\n"

    .line 46
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mErrPassWord:Ljava/lang/String;

    .line 122
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->passwordWatcher:Landroid/text/TextWatcher;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getPassPhrase(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    .line 53
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_edit_password_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->updateState(I)V

    return-void
.end method

.method private getIme()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mImeActionType:I

    return p0
.end method

.method private setErrorText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 181
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_wifi_ap_edit_text_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x3f

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mErrPassWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 88
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 90
    sget v0, Lcom/android/settings/R$id;->password_edit_oneui_3_0:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    .line 91
    sget v0, Lcom/android/settings/R$id;->password_error_text_oneui_3_0:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordErrorText:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->getIme()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 103
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle_key_password_value"

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    .line 223
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mPassWord:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->getPassword()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bundle_key_password_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public setIme(I)V
    .locals 3

    .line 170
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting other action key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mImeActionType:I

    .line 172
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getSecurityType()I

    move-result v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->updateState(I)V

    return-void
.end method

.method public updateState(I)V
    .locals 3

    .line 201
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating state: securityType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 203
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsAnyOpenVariant(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    if-eqz v0, :cond_2

    const p1, -0x7ffffffa

    .line 210
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->setIme(I)V

    goto :goto_2

    :cond_2
    const p1, -0x7dfffffa

    .line 212
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePassWordPreference;->setIme(I)V

    :goto_2
    return-void
.end method
