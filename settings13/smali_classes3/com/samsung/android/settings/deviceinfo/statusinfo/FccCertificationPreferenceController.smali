.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FccCertificationPreferenceController.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "fcc_id"

.field private static final LOG_TAG:Ljava/lang/String; = "FccCertificationPreferenceController"

.field private static sFccMenuTitle:Ljava/lang/String;


# instance fields
.field private final DISPLAY_MENU_TYPE_FCC_AND_IC_CERTIFICATION:I

.field private final DISPLAY_MENU_TYPE_FCC_CERTIFICATION_ONLY:I

.field private final DISPLAY_MENU_TYPE_IC_CERTIFICATION_ONLY:I

.field private final DISPLAY_MENU_TYPE_NONE:I

.field private final FCC_ID_SPLIT_FCC_ID_BY_COMMA:Ljava/lang/String;

.field private final FCC_ID_SPLIT_FCC_ID_BY_UNDERBAR:Ljava/lang/String;

.field private final FCC_ID_WITH_IC_ID_SEMICONLON:Ljava/lang/String;

.field private final mMenuDisplayedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->DISPLAY_MENU_TYPE_NONE:I

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->DISPLAY_MENU_TYPE_FCC_CERTIFICATION_ONLY:I

    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->DISPLAY_MENU_TYPE_IC_CERTIFICATION_ONLY:I

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->DISPLAY_MENU_TYPE_FCC_AND_IC_CERTIFICATION:I

    const-string p1, ";"

    .line 37
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->FCC_ID_WITH_IC_ID_SEMICONLON:Ljava/lang/String;

    const-string p1, ","

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->FCC_ID_SPLIT_FCC_ID_BY_COMMA:Ljava/lang/String;

    const-string p1, "_"

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->FCC_ID_SPLIT_FCC_ID_BY_UNDERBAR:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getMenuDisplayedType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->mMenuDisplayedType:I

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getTitleText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->sFccMenuTitle:Ljava/lang/String;

    return-void
.end method

.method private getFccId()Ljava/lang/String;
    .locals 5

    const-string v0, "fcc"

    .line 253
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 260
    aget-object v0, v1, v2

    .line 265
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getFccIdBasedOnHwRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->device_info_fcc_id:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFccIdBasedOnHwRev(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string p0, ","

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FccCertificationPreferenceController"

    if-nez v0, :cond_0

    const-string p0, "Not separated from HW REV"

    .line 196
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const-string v0, "ro.revision"

    const-string v2, ""

    .line 201
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "HW revision of Device is empty"

    .line 203
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 206
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 209
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    :goto_0
    if-eqz p0, :cond_6

    .line 214
    array-length v4, p0

    if-ge p1, v4, :cond_6

    .line 215
    aget-object v4, p0, p1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Format error case: ,,"

    .line 216
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    :cond_2
    aget-object v4, p0, p1

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_3

    const-string v4, "Format error case: {HwRev} only"

    .line 222
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    :cond_3
    :try_start_0
    aget-object v5, p0, p1

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_4

    goto :goto_1

    :cond_4
    cmpg-float v5, v5, v0

    if-gtz v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 239
    aget-object v2, p0, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v4

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 242
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Display fccId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static getFccMenuTitle()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->sFccMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method private getIcId()Ljava/lang/String;
    .locals 5

    const-string v0, "ised"

    .line 275
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 277
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigDeviceIcId"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, ";"

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    array-length v1, v0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 283
    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "FccCertificationPreferenceController"

    const-string v1, "ISED Value is Null"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 291
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->device_info_spen_ic_id:I

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMenuDisplayedType()I
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->supportFccId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->supportIcId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->supportFccId()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->supportIcId()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getSummaryText()Ljava/lang/String;
    .locals 2

    .line 119
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->mMenuDisplayedType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getFccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getIcId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getIcId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getFccId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTitleText()Ljava/lang/String;
    .locals 2

    .line 103
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->mMenuDisplayedType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_fcc_cert_ic_cert:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_ic_cert:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_fcc_cert:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private supportFccId()Z
    .locals 4

    .line 140
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 143
    :cond_0
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_FCC_CERTIFICATION:I

    .line 144
    sget v1, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_DONT_CARE:I

    const/4 v2, 0x1

    if-ne p0, v1, :cond_3

    .line 145
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v1, "CscFeature_Setting_SupportELabelFccId"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 150
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID"

    const-string v3, ""

    .line 151
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    return v0

    .line 156
    :cond_3
    sget v1, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_NOT_SUPPORTED:I

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method private supportIcId()Z
    .locals 4

    .line 166
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_ISED_CERTIFICATION:I

    .line 167
    sget v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_DONT_CARE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_2

    .line 168
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Setting_ConfigDeviceIcId"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    .line 173
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_FCC_ID"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 179
    :cond_2
    sget v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_NOT_SUPPORTED:I

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->mMenuDisplayedType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 68
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getFccMenuTitle()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/FccCertificationPreferenceController;->getSummaryText()Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
