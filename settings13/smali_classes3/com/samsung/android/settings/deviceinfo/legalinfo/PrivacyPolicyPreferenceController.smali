.class public Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrivacyPolicyPreferenceController.java"


# static fields
.field private static final PRIVACY_POLICY_LINK_CN:Ljava/lang/String; = "https://terms.samsungconsent.com/chndevicpp/PDP/1.0/CHN/CHN_zho.html"

.field private static final PRIVACY_POLICY_LINK_DEFAULT:Ljava/lang/String; = "com.samsung.android.mobileservice.action.ACTION_SHOW_PRIVACY_POLICY"

.field private static final PRIVACY_POLICY_LINK_KR:Ljava/lang/String; = "https://legal.samsungdm.com/kor/%s/pp.html"

.field private static final PRIVACY_POLICY_LINK_TYPE_CN:I = 0x2

.field private static final PRIVACY_POLICY_LINK_TYPE_DEFAULT:I = 0x0

.field private static final PRIVACY_POLICY_LINK_TYPE_KR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PrivacyPolicyPreferenceController"


# direct methods
.method public static synthetic $r8$lambda$5ZoDLU38Z9lp8v5Mm3NhFu2tOh4(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getLanguageCode()Ljava/lang/String;
    .locals 1

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPrivacyPolicyLinkType()I
    .locals 1

    .line 122
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isChinaModel()Z
    .locals 2

    const-string p0, "ro.csc.countryiso_code"

    .line 131
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "ro.csc.country_code"

    .line 135
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "china"

    .line 136
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSAPPIntentAvailable()Z
    .locals 2

    .line 118
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_SHOW_PRIVACY_POLICY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$displayPreference$0(Landroidx/preference/Preference;)Z
    .locals 1

    const/16 p0, 0xe1

    const/16 v0, 0x254e

    .line 76
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 p0, 0x0

    return p0
.end method

.method private setPrivacyPolicyIntent(Landroidx/preference/Preference;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;->getPrivacyPolicyLinkType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "android.intent.action.VIEW"

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    .line 104
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mobileservice.action.ACTION_SHOW_PRIVACY_POLICY"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "https://terms.samsungconsent.com/chndevicpp/PDP/1.0/CHN/CHN_zho.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;->getLanguageCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://legal.samsungdm.com/kor/%s/pp.html"

    const-string v1, "%s"

    .line 94
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    new-instance p0, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 64
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;->isSAPPIntentAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "PrivacyPolicyPreferenceController"

    const-string v0, "SA PP intent is not available"

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legalinfo/PrivacyPolicyPreferenceController;->setPrivacyPolicyIntent(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
