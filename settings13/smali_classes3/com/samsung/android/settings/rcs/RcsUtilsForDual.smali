.class public Lcom/samsung/android/settings/rcs/RcsUtilsForDual;
.super Lcom/samsung/android/settings/rcs/RcsUtils;
.source "RcsUtilsForDual.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsUtilsForDual"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    return-void
.end method

.method private getRcsUserSettingForDual()Z
    .locals 5

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 104
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsUserSetting(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->LOG_TAG:Ljava/lang/String;

    const-string v0, "both of rcs_user_setting values are -1"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method


# virtual methods
.method public getPermanentDisable()Z
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsAutoconfigVers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsConfigVers:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsAutoconfigVers(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsConfigVers:I

    if-ne p0, v2, :cond_0

    .line 39
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPermanentDisable() : Both sims are permanently disabled."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    return v1
.end method

.method protected isDisabledBySetting(Ljava/lang/String;)Z
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->isRcsProfile()Z

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->isMainSwitchVisible()Z

    move-result v1

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->getRcsUserSettingForDual()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 52
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : rcsprofile is empty or mRcsUserSetting set -1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isEnrichedCallingEnabled()Z
    .locals 4

    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 23
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->getEnrichedCallingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isMainSwitchVisible()Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 83
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lcom/samsung/android/settings/rcs/RcsUtilsForDual;->LOG_TAG:Ljava/lang/String;

    const-string v3, "isMainSwitchVisible: supportDualRcs : true"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 88
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->isMainSwitchVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v2, v1

    :cond_2
    return v2
.end method

.method public isRcsProfile()Z
    .locals 5

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 70
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
