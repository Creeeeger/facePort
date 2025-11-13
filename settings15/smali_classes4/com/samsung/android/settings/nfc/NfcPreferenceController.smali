.class public Lcom/samsung/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.field private static final SETTINGS_SATELLITE_MODE_ENABLED:Ljava/lang/String; = "satellite_mode_enabled"

.field private static final TAG:Ljava/lang/String; = "NfcPreferenceController"

.field private static mIsGlobal:Z

.field private static mIsGpFelicaSupported:Z


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

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGlobal:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    new-instance p2, Lcom/samsung/android/settings/nfc/NfcPreferenceController$1;

    invoke-direct {p2}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.nfc"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    :goto_0
    return-void
.end method

.method private isBlockedByMDM()Z
    .locals 3

    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

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

.method private isSatelliteModeOn()Z
    .locals 3

    const-string/jumbo v0, "satellite_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v2, v0

    :cond_1
    return v2
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "nfc"

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

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "nfc"

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

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mUm:Landroid/os/UserManager;

    const-string/jumbo v0, "nfc_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    const-string/jumbo v2, "nfc_settings_gp"

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    new-instance p1, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mHasNFCSystemFeature:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "nfc_settings"

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    const-string/jumbo v0, "nfc_settings_gp"

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->isBlockedByMDM()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->isSatelliteModeOn()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mIsGpFelicaSupported:Z

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->getCLFLockState()I

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
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

    const-class p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const-string p0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "Inside handlePreferenceTreeClick"

    const-string v1, "NfcPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlePreferenceTreeClick: key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "data_usage_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.sm.ACTION_DATA_USAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

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

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NfcPreferenceController"

    const-string v0, "Receiver not registered"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
