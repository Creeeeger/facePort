.class public Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SecSimFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/connection/SecSimFeatureProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSupportESIMProfileDownload:Z

.field private mSupportESIMSlot:Z

.field private mSupportSwitingESIM:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEsim"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMProfileDownload:Z

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMSlot:Z

    const-string v0, "persist.ril.esim.slotswitch"

    const-string v1, ""

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tsds2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportSwitingESIM:Z

    return-void
.end method


# virtual methods
.method public getDeviceSimSlotCnt()I
    .locals 2

    .line 77
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simSlotCnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimFeatureProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getEnabledSimCnt()I
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 120
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string v4, "ril.ICC_TYPE0"

    const-string v5, "0"

    .line 123
    invoke-virtual {p0, v4, v1, v5}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ril.ICC_TYPE1"

    .line 125
    invoke-virtual {p0, v6, v2, v5}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 132
    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 136
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEnabledSimCnt : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecSimFeatureProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getFirstSlotIndex()I
    .locals 7

    const-string v0, "ril.ICC_TYPE0"

    const/4 v1, 0x0

    const-string v2, "0"

    .line 141
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ril.ICC_TYPE1"

    const/4 v4, 0x1

    .line 142
    invoke-virtual {p0, v3, v4, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v5, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone1_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    .line 145
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v6, "phone2_on"

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    const/4 v6, -0x1

    if-eqz v5, :cond_2

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v6

    .line 155
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFirstSlotIndex : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecSimFeatureProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getNtcRawData(I)Ljava/lang/String;
    .locals 3

    .line 466
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object p0

    const-string v0, "CarrierFeature_RIL_ConfigNetworkTypeCapability"

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const-string v0, "SecSimFeatureProvider"

    const/4 v1, 0x0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move v2, v1

    .line 189
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimIcon Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p1, :cond_0

    move v3, v2

    goto :goto_2

    :cond_0
    move v3, v1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 232
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_01:I

    goto :goto_3

    .line 229
    :pswitch_0
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_03:I

    goto :goto_3

    .line 226
    :pswitch_1
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_heart:I

    goto :goto_3

    .line 223
    :pswitch_2
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_office:I

    goto :goto_3

    .line 220
    :pswitch_3
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_home:I

    goto :goto_3

    .line 217
    :pswitch_4
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_internet:I

    goto :goto_3

    .line 214
    :pswitch_5
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_mms:I

    goto :goto_3

    .line 211
    :pswitch_6
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_sms:I

    goto :goto_3

    .line 208
    :pswitch_7
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_call:I

    goto :goto_3

    .line 205
    :pswitch_8
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_business_trip:I

    goto :goto_3

    .line 202
    :pswitch_9
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_travel:I

    goto :goto_3

    .line 199
    :pswitch_a
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_02:I

    goto :goto_3

    .line 196
    :pswitch_b
    sget v4, Lcom/android/settings/R$drawable;->sec_sim_card_01:I

    .line 237
    :goto_3
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getESimSwitchingSlotIndex()I

    move-result v5

    .line 238
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isCurrentESimSwitchingSlotStatusIsESim()Z

    move-result v6

    .line 240
    iget-boolean v7, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportSwitingESIM:Z

    if-nez v7, :cond_1

    iget-boolean v8, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMProfileDownload:Z

    if-eqz v8, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMProfileDownload:Z

    if-eqz v7, :cond_3

    add-int/lit8 v7, p1, 0x1

    if-ne v5, v7, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 286
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_01:I

    goto :goto_4

    .line 283
    :pswitch_c
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_03:I

    goto :goto_4

    .line 280
    :pswitch_d
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_heart:I

    goto :goto_4

    .line 277
    :pswitch_e
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_office:I

    goto :goto_4

    .line 274
    :pswitch_f
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_home:I

    goto :goto_4

    .line 271
    :pswitch_10
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_internet:I

    goto :goto_4

    .line 268
    :pswitch_11
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_mms:I

    goto :goto_4

    .line 265
    :pswitch_12
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_sms:I

    goto :goto_4

    .line 262
    :pswitch_13
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_call:I

    goto :goto_4

    .line 259
    :pswitch_14
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_business_trip:I

    goto :goto_4

    .line 256
    :pswitch_15
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_travel:I

    goto :goto_4

    .line 253
    :pswitch_16
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_02:I

    goto :goto_4

    .line 250
    :pswitch_17
    sget v4, Lcom/android/settings/R$drawable;->sec_esim_card_01:I

    .line 291
    :cond_3
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM 1 ICON : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SIM 2 ICON : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Sim_id = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mSupportESIMProfileDownload : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMProfileDownload:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mSupportSwitingESIM : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportSwitingESIM:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", eSimSwitchingSlotIndex : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isCurrentESimSwitchingSlotStatusIsESim : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public getSimNumeric(I)Ljava/lang/String;
    .locals 5

    .line 337
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ril.simoperator"

    const-string v2, "ETC"

    .line 338
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    .line 339
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SecSimFeatureProvider"

    if-eqz v2, :cond_0

    const-string v0, "46003"

    goto :goto_0

    :cond_0
    const-string v2, "CTCMO"

    .line 341
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "45502"

    goto :goto_0

    :cond_1
    const-string v2, "CTG"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "45431"

    goto :goto_0

    .line 345
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSupportGlobalRoamingLRA(I)Z

    move-result v1

    const-string v2, ""

    const-string v4, "gsm.apn.sim.operator.numeric"

    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {p0, v4, p1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simNumericLRA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLRASimInserted(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "311480"

    move-object v0, p0

    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSupportGlobalRoamingACG(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    invoke-virtual {p0, v4, p1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimNumeric : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 6

    .line 303
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v0, v1

    .line 309
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v3

    const-string v4, "SecSimFeatureProvider"

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    const-string v0, "20404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    const-string v0, "0"

    if-eqz p0, :cond_1

    .line 313
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x6

    if-le v3, v5, :cond_2

    .line 319
    :try_start_0
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException getIccIdBySlot"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const-string p0, "898603"

    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "898605"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "898611"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "898530"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const-string v2, "46003"

    .line 332
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSimOperator : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getSimSlotName(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "select_name_1"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "select_name_2"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 112
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotIdx :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slotName : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecSimFeatureProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "ril.ICC_TYPE0"

    .line 161
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ril.ICC_TYPE1"

    .line 162
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p3

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 171
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 172
    invoke-static {p2, p1, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTelephonyProperty : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSimFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isLRASimInserted(I)Z
    .locals 4

    const-string v0, "330120"

    const-string v1, "311480"

    .line 418
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm.apn.sim.operator.numeric"

    const-string v2, ""

    .line 423
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 426
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLRASimInserted  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSimFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isLraImsi(I)Z
    .locals 1

    .line 462
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isSupportGlobalRoamingLRA(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->isLRASimInserted(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiSimModel()Z
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMultiSimModel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMProfileDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMSlot:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportSwitingESIM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSimFeatureProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getDeviceSimSlotCnt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 85
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportSwitingESIM:Z

    if-eqz v0, :cond_0

    return v2

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMProfileDownload:Z

    if-eqz v0, :cond_1

    return v2

    .line 92
    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mSupportESIMSlot:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public isSPRSimInserted(I)Z
    .locals 9

    .line 375
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "salesCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecSimFeatureProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SPR"

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "311490"

    const-string v5, "312530"

    const-string v6, "311870"

    const-string v7, "310120"

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    move v0, v8

    goto :goto_1

    :cond_1
    const-string v3, "BST"

    .line 381
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "VMU"

    .line 383
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    const-string v3, "XAS"

    .line 385
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "310000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    .line 389
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isUsOpenModel()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 390
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move v8, v0

    .line 395
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSPRSimInserted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public isSupportGlobalRoamingACG(I)Z
    .locals 3

    .line 450
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getNtcRawData(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "-ACG-GLB"

    .line 452
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 456
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportGlobalRoamingACG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSimFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSupportGlobalRoamingLRA(I)Z
    .locals 3

    .line 438
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getNtcRawData(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "-LRA-GLB"

    .line 440
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 444
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportGlobalRoamingLRA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSimFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isUSCSimInserted(I)Z
    .locals 3

    .line 400
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 402
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x4c11c

    if-lt v0, v1, :cond_0

    const v1, 0x4c125

    if-le v0, v1, :cond_1

    :cond_0
    const v1, 0x4bfb4

    if-lt v0, v1, :cond_2

    const v1, 0x4bfbd

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 412
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUSCSimInserted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSimFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isVZWSimInserted(I)Z
    .locals 3

    .line 363
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getNtcRawData(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "VZW-"

    .line 365
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "311480"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999480"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "20404"

    .line 366
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 370
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVZWSimInserted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", slotIdx : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ntcRawData : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecSimFeatureProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method
