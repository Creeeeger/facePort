.class public Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecureNfcControllerJPN.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_SECURE_NFC_DCM:Ljava/lang/String; = "secure_nfc_settings_dcm"

.field private static final KEY_SECURE_NFC_KDI:Ljava/lang/String; = "secure_nfc_settings_kdi"

.field private static final TAG:Ljava/lang/String; = "[SecureNfcController]"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 70
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 p0, 0x5

    return p0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
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

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 99
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "secure_nfc_settings_kdi"

    goto :goto_0

    :cond_0
    const-string p0, "secure_nfc_settings_dcm"

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 87
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isControllable()Z
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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/SecureNfcControllerJPN;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
