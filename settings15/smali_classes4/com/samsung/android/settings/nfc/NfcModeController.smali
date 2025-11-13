.class public Lcom/samsung/android/settings/nfc/NfcModeController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcModeController"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public static synthetic $r8$lambda$NnT6HN4lRo1P-VrdkKj2ZvrWsr0(Lcom/samsung/android/settings/nfc/NfcModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcModeController;->lambda$changeNfcMode$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private changeNfcMode()Z
    .locals 6

    const-string v0, "NfcModeController"

    const-string/jumbo v1, "triggered change nfc mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b67

    const/16 v3, 0xe42

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/samsung/android/settings/nfc/NfcModeController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nfc/NfcModeController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/nfc/NfcModeController;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "android_beam_state"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0, v4}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    const-wide/16 v4, 0x1

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0, v1}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    :goto_0
    return v1
.end method

.method private getReaderModeState()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$changeNfcMode$0()V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1419d6

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionSupported()Z

    move-result v0

    const-string v1, "NfcModeController"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "DISABLED_DEPENDENT_SETTING"

    goto :goto_0

    :cond_0
    const-string v0, "AVAILABLE"

    :goto_0
    const-string v3, "getAvailabilityStatus : "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcModeController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    if-ne p0, v2, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const-string p0, "getAvailabilityStatus : UNSUPPORTED_ON_DEVICE"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0xe42

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 p0, 0x0

    const v1, 0x7f141a0a

    const v2, 0x10008000

    invoke-static {v0, p0, v1, v2}, Lcom/samsung/android/settings/account/controller/SecAccountPreferenceController$$ExternalSyntheticOutline0;->m(Lcom/android/settings/core/SubSettingLauncher;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcModeController;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1419d4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isChecked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcModeController;->getReaderModeState()Z

    move-result v1

    const-string v2, "NfcModeController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcModeController;->getReaderModeState()Z

    move-result p0

    return p0
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NEED_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "currentCheckedValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcModeController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , newCheckedValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NfcModeController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcModeController;->changeNfcMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
