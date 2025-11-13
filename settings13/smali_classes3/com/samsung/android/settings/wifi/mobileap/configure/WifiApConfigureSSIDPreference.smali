.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;
.super Landroidx/preference/Preference;
.source "WifiApConfigureSSIDPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mErrSSID:Ljava/lang/String;

.field private mImeActionType:I

.field private mSSID:Ljava/lang/String;

.field private mSSIDLen:I

.field private mSsidEditText:Landroid/widget/EditText;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mTempSsid:Ljava/lang/String;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field private newAttached:Z

.field private ssidFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mErrSSID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSIDLen(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSIDLen:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsidEditText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSsidErrorText(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mTempSsid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApConfigureSettings(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSSID(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSSIDLen(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSIDLen:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempSsid(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mTempSsid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, -0x7dfffffa

    .line 40
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mImeActionType:I

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mTempSsid:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    const-string p2, "\tUSER#DEFINED#PWD#\n"

    .line 47
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mErrSSID:Ljava/lang/String;

    const/4 p2, 0x0

    .line 48
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSIDLen:I

    .line 123
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 145
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidWatcher:Landroid/text/TextWatcher;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mContext:Landroid/content/Context;

    .line 55
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mActivity:Landroid/app/Activity;

    .line 56
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getNetworkName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    .line 57
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_ap_edit_ssid_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->updateState(I)V

    return-void
.end method

.method private getIme()I
    .locals 0

    .line 222
    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mImeActionType:I

    return p0
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    const-string v0, "Network name is empty."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mErrSSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 117
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    const-string v0, "Network name error."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v2

    .line 113
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    const-string v0, "Network name length error."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onAttached()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->newAttached:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v0, Lcom/android/settings/R$id;->ssid_edit_oneui_3_0:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    .line 78
    sget v0, Lcom/android/settings/R$id;->ssid_error_text_oneui_3_0:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidErrorText:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    const v1, 0x84000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->getIme()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->newAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->newAttached:Z

    .line 89
    :cond_0
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle_key_ssid_value"

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    .line 260
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->getSSID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bundle_key_ssid_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public setIme(I)V
    .locals 3

    .line 211
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting other action key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mImeActionType:I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 217
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public updateState()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getSecurityType()I

    move-result v0

    .line 231
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->updateState(I)V

    return-void
.end method

.method public updateState(I)V
    .locals 3

    .line 235
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating state: securityType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 237
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsAnyOpenVariant(I)Z

    move-result p1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    const p1, -0x7ffffffa

    .line 240
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    goto :goto_1

    :cond_1
    const p1, -0x7ffffffb

    .line 242
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const p1, -0x7dfffffa

    .line 246
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    goto :goto_1

    :cond_3
    const p1, -0x7dfffffb

    .line 248
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    :goto_1
    return-void
.end method
