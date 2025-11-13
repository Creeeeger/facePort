.class public final Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final EXCEPT_LIST:[Ljava/lang/String;

.field public final mPreferenceKey:Ljava/lang/String;

.field public final mSlotId:I

.field public mStateMode:I

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    iput v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I

    const-string v9, "SM-F9160"

    const-string v10, "SM-W2021"

    const-string v1, "SM-A7160"

    const-string v2, "SM-A5160"

    const-string v3, "SM-G9880"

    const-string v4, "SM-G9860"

    const-string v5, "SM-G9810"

    const-string v6, "SM-N9860"

    const-string v7, "SM-N9810"

    const-string v8, "SM-F7070"

    const-string v11, "SM-G7810"

    const-string v12, "SM-E5260"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->EXCEPT_LIST:[Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string/jumbo v0, "sim_vonr_calls1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    if-ne v3, v2, :cond_1

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportStandAlone"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "ril.supportSA"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v0, :cond_7

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->EXCEPT_LIST:[Ljava/lang/String;

    array-length v0, p0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_6

    aget-object v4, p0, v3

    const-string/jumbo v5, "ro.product.model"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_3
    return v1
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "onPreferenceChange :: Vonr Calls set to "

    const-string v0, "SimVonrCallsPreferenceController"

    invoke-static {p2, v0, p1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->setVonrMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->setVonrMode(I)V

    :goto_0
    return p2
.end method

.method public final setVonrMode(I)V
    .locals 3

    const-string v0, "[setVonrMode] - mode : "

    const-string v1, " phoneId: "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    const-string v2, "SimVonrCallsPreferenceController"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ISemTelephony;->setVoNRMode(II)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    const-string v0, "[getVonrMode] "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getVonrMode]  phoneId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    const-string v3, "SimVonrCallsPreferenceController"

    invoke-static {v1, v2, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "isemtelephony"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    invoke-interface {v4, v2}, Lcom/android/internal/telephony/ISemTelephony;->getVoNRMode(I)I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v2, v5

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v5, :cond_1

    iput v2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iput v1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    iget p0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I

    if-nez p0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void
.end method
