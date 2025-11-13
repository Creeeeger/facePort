.class public Lcom/samsung/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
    }
.end annotation


# static fields
.field private static final KEY_NFC_SETTINGS:Ljava/lang/String; = "nfc_settings"

.field private static final KEY_NFC_SETTINGS_GP:Ljava/lang/String; = "nfc_settings_gp"

.field private static final TAG:Ljava/lang/String; = "NfcPreferenceController"

.field private static mIsFaver3:Z

.field private static mIsGlobal:Z

.field private static mIsGpFelicaSupported:Z

.field private static final mIsY2OlympicEdition:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasNFCSystemFeature:Z

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGlobal:Z

    .line 54
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsFaver3:Z

    .line 56
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsY2OlympicEdition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    .line 226
    new-instance p2, Lcom/samsung/android/settings/nfc/NfcPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/nfc/NfcPreferenceController$1;-><init>(Lcom/samsung/android/settings/nfc/NfcPreferenceController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.nfc"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    :goto_0
    return-void
.end method

.method private isBlockedByMDM()Z
    .locals 3

    const-string v0, "false"

    .line 257
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v2, "isNFCStateChangeAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "nfc"

    .line 273
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "nfc"

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mUm:Landroid/os/UserManager;

    const-string v0, "nfc_settings"

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    const-string v2, "nfc_settings_gp"

    .line 90
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    .line 92
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsFaver3:Z

    .line 94
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGlobal:Z

    if-nez v2, :cond_2

    .line 96
    sget-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsFaver3:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsY2OlympicEdition:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle(Landroidx/preference/SecSwitchPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->build()Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto :goto_1

    .line 101
    :cond_3
    new-instance p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle(Landroidx/preference/SecSwitchPreferenceScreen;)Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->build()Lcom/samsung/android/settings/nfc/NfcEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    .line 140
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsFaver3:Z

    .line 141
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGlobal:Z

    const-string v2, "nfc_settings"

    const-string v3, "nfc_settings_gp"

    if-nez v0, :cond_3

    .line 143
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsFaver3:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsY2OlympicEdition:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    return v1

    .line 144
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    if-eqz v0, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 149
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 158
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->isBlockedByMDM()Z

    move-result p0

    const/4 v0, 0x5

    if-eqz p0, :cond_6

    return v0

    .line 162
    :cond_6
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsFaver3:Z

    if-nez p0, :cond_7

    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    if-eqz p0, :cond_8

    .line 164
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->getCLFLockState()I

    move-result p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    .line 191
    const-class p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 179
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "NfcPreferenceController"

    const-string v1, "Inside handlePreferenceTreeClick"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePreferenceTreeClick: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "data_usage_settings"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.sm.ACTION_DATA_USAGE"

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 253
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 113
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.action.onsimloaded"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NfcPreferenceController"

    const-string v0, "Receiver not registered"

    .line 214
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
