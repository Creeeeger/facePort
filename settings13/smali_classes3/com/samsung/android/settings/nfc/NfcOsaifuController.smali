.class public Lcom/samsung/android/settings/nfc/NfcOsaifuController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NfcOsaifuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;
    }
.end annotation


# static fields
.field private static final KEY_NFC_JAPAN_SETTINGS:Ljava/lang/String; = "nfc_osaifukeitai_settings"

.field private static final TAG:Ljava/lang/String; = "NfcOsaifuController"

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

    .line 50
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsGlobal:Z

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsFaver3:Z

    .line 53
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsY2OlympicEdition:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 61
    iput-boolean p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mHasNFCSystemFeature:Z

    .line 159
    new-instance p2, Lcom/samsung/android/settings/nfc/NfcOsaifuController$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifuController$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifuController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.nfc"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mHasNFCSystemFeature:Z

    :goto_0
    return-void
.end method

.method private isBlockedByMDM()Z
    .locals 3

    const-string v0, "false"

    .line 190
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

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

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "nfc"

    .line 206
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

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "nfc"

    .line 200
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
.method public getAvailabilityStatus()I
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mHasNFCSystemFeature:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsGpFelicaSupported:Z

    .line 83
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsFaver3:Z

    .line 84
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsGlobal:Z

    if-nez v0, :cond_1

    .line 86
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsFaver3:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsGpFelicaSupported:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mIsY2OlympicEdition:Z

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nfc_osaifukeitai_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "NfcOsaifuController"

    const-string v0, "pm.KEY_NFC_JAPAN_SETTINGS UNSUPPORTED_ON_DEVICE"

    .line 88
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 93
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->isBlockedByMDM()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x5

    return p0

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    :cond_4
    return v1
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

    .line 121
    const-class p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController$NfcSliceWorker;

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

    .line 109
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "NfcOsaifuController"

    const-string v1, "Inside handlePreferenceTreeClick"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePreferenceTreeClick: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "data_usage_settings"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.sm.ACTION_DATA_USAGE"

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 186
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

.method public onPause()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.action.onsimloaded"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifuController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NfcOsaifuController"

    const-string v0, "Receiver not registered"

    .line 145
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

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
