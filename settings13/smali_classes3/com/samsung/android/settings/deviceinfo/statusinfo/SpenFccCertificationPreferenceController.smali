.class public Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SpenFccCertificationPreferenceController.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "spen_fcc_id"

.field private static final LOG_TAG:Ljava/lang/String; = "SpenFccCertificationPreferenceController"

.field private static sSpenFccMenuTitle:Ljava/lang/String;


# instance fields
.field private final DISPLAY_SPEN_MENU_TYPE_FCC_AND_IC:I

.field private final DISPLAY_SPEN_MENU_TYPE_FCC_ONLY:I

.field private final DISPLAY_SPEN_MENU_TYPE_IC_ONLY:I

.field private final DISPLAY_SPEN_MENU_TYPE_NONE:I

.field private final SPEN_FCC_ID_WITH_IC_ID_SEMICONLON:Ljava/lang/String;

.field private final mSpenMenuType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->DISPLAY_SPEN_MENU_TYPE_NONE:I

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->DISPLAY_SPEN_MENU_TYPE_FCC_ONLY:I

    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->DISPLAY_SPEN_MENU_TYPE_IC_ONLY:I

    const/4 p1, 0x3

    .line 32
    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->DISPLAY_SPEN_MENU_TYPE_FCC_AND_IC:I

    const-string p1, ";"

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->SPEN_FCC_ID_WITH_IC_ID_SEMICONLON:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getMenuDisplayedType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->mSpenMenuType:I

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getTitleText()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->sSpenFccMenuTitle:Ljava/lang/String;

    return-void
.end method

.method private getMenuDisplayedType()I
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->supportSPenFccId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->supportSPenIcId()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->supportSPenFccId()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->supportSPenIcId()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private getSpenFccId()Ljava/lang/String;
    .locals 4

    const-string v0, "fccforspen"

    .line 173
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    .line 179
    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    const-string v0, "SpenFccCertificationPreferenceController"

    const-string v1, "SPen FCC Value is Null"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 186
    :cond_1
    :goto_0
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

.method public static getSpenFccMenuTitle()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->sSpenFccMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method private getSpenIcId()Ljava/lang/String;
    .locals 5

    const-string v0, "isedforspen"

    .line 193
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBleSPenExtraId"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ";"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    array-length v1, v0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 201
    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v0, "SpenFccCertificationPreferenceController"

    const-string v1, "SPen ISED Value is Null"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 209
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

.method private getSummaryText()Ljava/lang/String;
    .locals 2

    .line 107
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->mSpenMenuType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getSpenFccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getSpenIcId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getSpenIcId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getSpenFccId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTitleText()Ljava/lang/String;
    .locals 2

    .line 91
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->mSpenMenuType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_spen_fcc_ic_cert:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_spen_ic_cert:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_spen_fcc_cert:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private supportSPenFccId()Z
    .locals 4

    .line 122
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BLE_SPEN"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_FCC_CERTIFICATION:I

    .line 128
    sget v1, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_DONT_CARE:I

    const/4 v2, 0x1

    if-ne p0, v1, :cond_3

    .line 129
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v1, "CscFeature_Setting_SupportELabelSPenFccId"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 134
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID"

    const-string v3, ""

    .line 135
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    return v0

    .line 140
    :cond_3
    sget v1, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_NOT_SUPPORTED:I

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method private supportSPenIcId()Z
    .locals 4

    .line 149
    sget p0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->ABOUTITEM_STATUS_SPEN_ISED_CERTIFICATION:I

    .line 150
    sget v0, Lcom/samsung/android/settings/deviceinfo/SecAboutDeviceItems;->STATUS_DONT_CARE:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_2

    .line 151
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v0, "CscFeature_Setting_ConfigBleSPenExtraId"

    const-string v3, ""

    .line 152
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    .line 156
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_SPEN_FCC_ID"

    .line 157
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
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

    .line 163
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

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getMenuDisplayedType()I

    move-result p0

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
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 57
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->sSpenFccMenuTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->sSpenFccMenuTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/SpenFccCertificationPreferenceController;->getSummaryText()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
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
