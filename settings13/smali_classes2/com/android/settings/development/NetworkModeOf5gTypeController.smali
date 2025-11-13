.class public Lcom/android/settings/development/NetworkModeOf5gTypeController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "NetworkModeOf5gTypeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mStateMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mServiceMessenger:Landroid/os/Messenger;

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mStateMode:I

    .line 89
    iput-object p1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->network_mode_of_5g_activation_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mListValues:[Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->network_mode_of_5g_activation_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mListSummaries:[Ljava/lang/String;

    return-void
.end method

.method private getNrMode()V
    .locals 6

    const-string v0, "NetworkModeOf5gTypeController"

    const-string v1, "[getNrMode]"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    .line 174
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "semGetNrMode"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 178
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 179
    iput v1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mStateMode:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :catch_1
    iput v2, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mStateMode:I

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private isEmTokenAllowed(Landroid/content/Context;)Z
    .locals 3

    .line 213
    new-instance p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result p1

    const-string v0, "NetworkModeOf5gTypeController"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x32

    .line 216
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmTokenAllowed() emStatus = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isEmTokenAllowed() returnValue = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private setNrMode(I)V
    .locals 8

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setNrMode] - mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkModeOf5gTypeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "semSetNrMode"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iput p1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mStateMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "network_mode_of_5g_activation"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isNoSIM(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "NetworkModeOf5gTypeController"

    const-string v0, "isAvailable : menu disable because of no sim "

    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 105
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SupportStandAlone"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v2, "ril.supportSA"

    const/4 v3, -0x1

    .line 106
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupport5GConcept(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaHKTWModel()Z

    move-result p0

    if-nez p0, :cond_3

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDeveloperOptionsEnabled()V
    .locals 2

    .line 155
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->isAvailable()Z

    move-result v0

    const-string v1, "NetworkModeOf5gTypeController"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onDeveloperOptionsEnabled : state = TRUE"

    .line 158
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->getNrMode()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "onDeveloperOptionsEnabled : state = FALSE"

    .line 162
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPreferenceChange: newValue = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkModeOf5gTypeController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "[NSA mode]"

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, v1}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->setNrMode(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[SA mode]"

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->setNrMode(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BOTH"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[SA+NSA mode]"

    .line 121
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->setNrMode(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 133
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget v1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mStateMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_5

    move v2, v3

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mListValues:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mListSummaries:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticLGTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/development/NetworkModeOf5gTypeController;->isEmTokenAllowed(Landroid/content/Context;)Z

    move-result v3

    .line 149
    :cond_4
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateState: mStateMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/development/NetworkModeOf5gTypeController;->mStateMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , bEnabled = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkModeOf5gTypeController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
