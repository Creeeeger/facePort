.class public final Lcom/samsung/android/settings/as/utils/SimUtils;
.super Lcom/android/settingslib/Utils;
.source "SimUtils.java"


# direct methods
.method public static getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 133
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p0

    .line 135
    invoke-interface {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 44
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "select_name_1"

    const-string v2, "select_name_2"

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v3, "gsm.sim.state"

    .line 45
    invoke-static {v3, v0}, Lcom/samsung/android/settings/as/utils/SimUtils;->getTelephonyProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    .line 47
    invoke-static {v3, v4}, Lcom/samsung/android/settings/as/utils/SimUtils;->getTelephonyProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "READY"

    if-nez p1, :cond_1

    .line 50
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_sim1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_sim2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_5

    .line 75
    sget p1, Lcom/android/settings/R$string;->sec_sim1:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_5
    sget p1, Lcom/android/settings/R$string;->sec_sim2:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_6
    :goto_1
    invoke-static {p0, v0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isRTL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u200f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private static getTelephonyProperty(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const-string v0, "ril.ICC_TYPE0"

    .line 87
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ril.ICC_TYPE1"

    .line 88
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "UNKNOWN"

    if-eqz v0, :cond_1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v1, v4

    :cond_0
    return-object v1

    .line 92
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v3, v4

    :cond_2
    return-object v3

    .line 95
    :cond_3
    invoke-static {p1, p0, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMultiSimEnabled(Landroid/content/Context;)Z
    .locals 7

    .line 100
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 102
    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getEnabledSimCnt()I

    move-result v1

    .line 103
    invoke-interface {v0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->getFirstSlotIndex()I

    move-result v0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    if-ne v3, v5, :cond_0

    .line 108
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSupportFeatureHideSimTab(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "SimUtils"

    const-string v6, "Hide IMEI_Info for Opportunistic subscription"

    .line 109
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-lt v4, p0, :cond_3

    return v5

    :cond_3
    return v2
.end method

.method public static isMultiSimModel(Landroid/content/Context;)Z
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p0

    .line 128
    invoke-interface {p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result p0

    return p0
.end method
