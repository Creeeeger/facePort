.class public final Lcom/samsung/android/settings/development/DevNetworkModeController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurMode:I

.field public final mDisableNrMode:I

.field public final mEnableNrMode:I

.field public final mListSummaries:[Ljava/lang/String;

.field public final mListValues:[Ljava/lang/String;

.field public final mPreferenceKey:Ljava/lang/String;

.field public final mSlotId:I

.field public mSubId:I

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSlotId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSubId:I

    iput v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mCurMode:I

    iput-object p1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mPreferenceKey:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSlotId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0300c8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0300c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mListSummaries:[Ljava/lang/String;

    const-string/jumbo p1, "ro.telephony.default_network"

    const/16 p2, 0x1a

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x1c

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    iput p2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mEnableNrMode:I

    if-eqz v0, :cond_2

    const/16 p1, 0xc

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mDisableNrMode:I

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getTelephonyManager$1()Landroid/telephony/TelephonyManager;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTelephonyManager mSlotId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DevNetworkModeController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "tm is null because subIds is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSubId:I

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mContext:Landroid/content/Context;

    aget v4, v0, v1

    invoke-direct {v2, v3, v4}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v0, v0, v1

    iput v0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSubId:I

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/development/DevNetworkModeController;->getTelephonyManager$1()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "DevNetworkModeController"

    const-string v0, "isAvailable() tm is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v2

    if-eqz v2, :cond_5

    iget v3, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSlotId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    const-string/jumbo v2, "ril.supportSA"

    const/4 v5, -0x1

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, ""

    const-string v2, "CarrierFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-preferrednetworkmode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v4

    :cond_5
    :goto_2
    return v1
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onDeveloperOptionsEnabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/DevNetworkModeController;->isAvailable()Z

    move-result v0

    const-string v1, "DevNetworkModeController"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onDeveloperOptionsEnabled : state = TRUE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "[getNetworkMode]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/DevNetworkModeController;->getTelephonyManager$1()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mCurMode:I

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/development/DevNetworkModeController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    const-string p0, "[getNetworkMode] tm is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "onDeveloperOptionsEnabled : state = FALSE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "26"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "DevNetworkModeController"

    if-eqz p1, :cond_0

    const-string p1, "5/4/3/2G"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mEnableNrMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/DevNetworkModeController;->setNetworkMode(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string p1, "9"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "4/3/2G"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mDisableNrMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/DevNetworkModeController;->setNetworkMode(I)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setNetworkMode(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setNetworkMode] - mode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevNetworkModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/development/DevNetworkModeController;->getTelephonyManager$1()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSubId:I

    invoke-virtual {v0, v2, p1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mCurMode:I

    iget-object v0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSlotId:I

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v0, v2, v1, p1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/DevNetworkModeController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "[setNetworkMode] failed "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    check-cast p1, Landroidx/preference/ListPreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mCurMode:I

    iget v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mEnableNrMode:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mDisableNrMode:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mListValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mListSummaries:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateState: mCurMode = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/development/DevNetworkModeController;->mCurMode:I

    const-string v0, "DevNetworkModeController"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    return-void
.end method
