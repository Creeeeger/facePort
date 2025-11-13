.class public Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AndroidBeamPreferenceController.java"


# static fields
.field private static final ACTION_ABEAM_STATE_CHANGED:Ljava/lang/String; = "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

.field public static final KEY_TOGGLE_ABEAM:Ljava/lang/String; = "android_beam_settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.sofware.nfc.beam"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    :goto_0
    return v1
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

    .line 87
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    .line 89
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

    const-string p0, "android_beam_settings"

    return-object p0
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
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p0

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

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

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
