.class public abstract Lcom/samsung/android/settings/asbase/utils/SimUtils;
.super Lcom/android/settingslib/Utils;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getLogicalSlotIdByDisplayPosition(Landroid/content/Context;I)I
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/samsung/android/settings/asbase/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const-string v4, "android.hardware.telephony.euicc.mep"

    if-nez v0, :cond_0

    const-string v5, "AudioRune"

    const-string/jumbo v6, "supportTelephonyEuiccMEP( context is null )"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_1

    :goto_1
    move v3, v2

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "SimUtils"

    const/4 v10, -0x1

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/UiccCardInfo;

    invoke-virtual {v8}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v8}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v13

    invoke-static {v0, v13}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getSubId(Landroid/content/Context;I)I

    move-result v13

    if-ne v13, v10, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "isEnabledUicc: subId "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " is invalid"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v13, v3

    goto :goto_3

    :cond_5
    const-class v14, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v14, v13}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result v13

    goto :goto_3

    :cond_6
    invoke-virtual {v12}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    move v13, v2

    :goto_3
    if-eqz v13, :cond_3

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v1, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    move v1, v3

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lcom/samsung/android/settings/asbase/utils/SimUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    if-eq v1, v10, :cond_a

    const-string v0, "isLogicalSlotOrdered, pSIM1 enabled [LogicalSlotId : "

    const-string v4, "]"

    invoke-static {v1, v0, v4, v9}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_a
    invoke-static {v0, v3}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getSubId(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getSubId(Landroid/content/Context;I)I

    move-result v0

    const-string v4, "isLogicalSlotOrdered, subId1 : "

    const-string v5, ", subId2 : "

    invoke-static {v4, v5, v1, v0, v9}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-ge v1, v0, :cond_b

    goto/16 :goto_1

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    return p1

    :cond_c
    xor-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "select_name_2"

    const v3, 0x7f142762

    const-string/jumbo v4, "select_name_1"

    const v5, 0x7f142761

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getTelephonyProperty(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getTelephonyProperty(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "READY"

    if-nez p1, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-static {p0, v0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->isRTL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string/jumbo p0, "\u200f"

    invoke-static {p0, v0, p0}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public static getSubId(Landroid/content/Context;I)I
    .locals 1

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static getTelephonyProperty(I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.ICC_TYPE0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "ril.ICC_TYPE1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "gsm.sim.state"

    const-string v1, "UNKNOWN"

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnabledSIM2Only()Z
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isMultiSimModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getFirstSlotIndex()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isMultiSimEnabled(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isMultiSimModel()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getEnabledSimCnt()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isEnabledHidingByOpportunisticEsim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SimUtils"

    const-string v5, "Hide IMEI_Info for Opportunistic subscription"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-lt v3, p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isMultiSimModel()Z
    .locals 2

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isMultiSimModel()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No feature factory configured"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    const-string v2, "android"

    const-string v3, "config_voice_capable"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const-string v0, "config_voice_capable = "

    const-string v1, "SimUtils"

    invoke-static {v0, v1, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
