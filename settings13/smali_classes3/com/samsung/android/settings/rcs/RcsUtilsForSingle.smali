.class public Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;
.super Lcom/samsung/android/settings/rcs/RcsUtils;
.source "RcsUtilsForSingle.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsUtilsForSingle"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public getPermanentDisable()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsAutoconfigVers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mRcsConfigVers:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 43
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getPermanentDisable() : RCS Switch is permanently disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->checkMdmRcsStatus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsUserSetting()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method protected isDisabledBySetting(Ljava/lang/String;)Z
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;->isRcsProfile()Z

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;->isMainSwitchVisible()Z

    move-result v1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsUserSetting()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/rcs/RcsUtils;->supportDualRcsSettings()Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 69
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : rcsprofile is empty or rcsUserSetting set -1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isEnrichedCallingEnabled()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    .line 33
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getEnrichedCallingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMainSwitchVisible()Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    .line 93
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->isMainSwitchVisible(I)Z

    move-result p0

    .line 95
    sget-object v0, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMainSwitchVisible: result :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRcsProfile()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mPhoneId:I

    .line 84
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/rcs/RcsUtils;->getRcsProfile(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateAlertDialog()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/settings/rcs/RcsUtils;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    sget-object p0, Lcom/samsung/android/settings/rcs/RcsUtilsForSingle;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException - updateAlertDialog"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
