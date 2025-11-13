.class public Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SimVonrCallsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSlotId:I

.field private mStateMode:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    .line 44
    iput v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string p1, "sim_vonr_calls1"

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    .line 53
    iget-object p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getVonrMode()V
    .locals 5

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getVonrMode]  phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimVonrCallsPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "isemtelephony"

    .line 119
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 123
    iget v3, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/ISemTelephony;->getVoNRMode(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 125
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVonrMode] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_1

    .line 127
    iput v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 130
    iput v2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setVonrMode(I)V
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setVonrMode] - mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimVonrCallsPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "isemtelephony"

    .line 102
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 105
    iget v2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/ISemTelephony;->setVoNRMode(II)Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_1

    .line 108
    iput p1, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 65
    iget v2, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mSlotId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 69
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_SupportStandAlone"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "ril.supportSA"

    const/4 v5, -0x1

    .line 70
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    .line 71
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange :: Vonr Calls set to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SimVonrCallsPreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->setVonrMode(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->setVonrMode(I)V

    :goto_0
    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 89
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->getVonrMode()V

    .line 91
    iget p0, p0, Lcom/samsung/android/settings/development/SimVonrCallsPreferenceController;->mStateMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 92
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 94
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
