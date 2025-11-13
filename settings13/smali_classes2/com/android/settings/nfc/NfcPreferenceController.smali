.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
    }
.end annotation


# static fields
.field public static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private isBlockedByMDM()Z
    .locals 3

    const-string v0, "false"

    .line 241
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

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

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "nfc"

    .line 163
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

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "nfc"

    .line 157
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
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isBlockedByMDM()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->getCLFLockState()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    :goto_0
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

    .line 137
    const-class p0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 132
    sget p0, Lcom/android/settings/R$string;->menu_key_connected_devices:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 82
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isAllEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 83
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

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

    .line 149
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p1

    if-eq p2, p1, :cond_0

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/NfcPreferenceController;->setChecked(Z)Z

    :cond_0
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

    if-eqz p1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

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
