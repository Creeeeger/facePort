.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mErrSSID:Ljava/lang/String;

.field public mImeActionType:I

.field public mIsRequestFocusPendingFlag:Z

.field public mSSID:Ljava/lang/String;

.field public mSSIDLen:I

.field public mSsidEditText:Landroid/widget/EditText;

.field public mSsidErrorTextView:Landroid/widget/TextView;

.field public mSsidTitleTextView:Landroid/widget/TextView;

.field public mTempSsid:Ljava/lang/String;

.field public mViewAttached:Z

.field public mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

.field public final ssidFocusChangeListener:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

.field public final ssidWatcher:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, -0x7dfffffa

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mImeActionType:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mTempSsid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    const-string p2, "\tUSER#DEFINED#PWD#\n"

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mErrSSID:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSIDLen:I

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mViewAttached:Z

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidFocusChangeListener:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidWatcher:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mContext:Landroid/content/Context;

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    const p2, 0x7f0d0a27

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSoftApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->updateState(I)V

    return-void
.end method


# virtual methods
.method public final isValid()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiApConfigureSSIDPreference"

    if-eqz v0, :cond_0

    const-string p0, "Network name is empty."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v4, 0x20

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mErrSSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Network name error."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v3

    :cond_3
    :goto_0
    const-string p0, "Network name length error."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onAttached()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->registerDependency()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mViewAttached:Z

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "WifiApConfigureSSIDPreference"

    const-string v1, "onBindViewHolder()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0eda

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0ed2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    const v0, 0x7f0a0ed4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidErrorTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    const v1, 0x84000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mImeActionType:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidWatcher:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$2;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->ssidFocusChangeListener:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference$1;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mViewAttached:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mIsRequestFocusPendingFlag:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mIsRequestFocusPendingFlag:Z

    :cond_0
    return-void
.end method

.method public final onDetached()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mViewAttached:Z

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final setIme(I)V
    .locals 2

    const-string/jumbo v0, "setting other action key : "

    const-string v1, "WifiApConfigureSSIDPreference"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mImeActionType:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->mSsidEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

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

.method public final updateState(I)V
    .locals 3

    const-string v0, "Updating state: securityType: "

    const-string v1, "WifiApConfigureSSIDPreference"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

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

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->checkIfSecurityTypeIsAnyOpenVariant(I)Z

    move-result p1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    const p1, -0x7ffffffa

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    goto :goto_1

    :cond_1
    const p1, -0x7ffffffb

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const p1, -0x7dfffffa

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    goto :goto_1

    :cond_3
    const p1, -0x7dfffffb

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSSIDPreference;->setIme(I)V

    :goto_1
    return-void
.end method
