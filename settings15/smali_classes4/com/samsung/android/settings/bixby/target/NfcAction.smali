.class public final Lcom/samsung/android/settings/bixby/target/NfcAction;
.super Lcom/samsung/android/settings/bixby/target/actions/Action;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bixby/target/actions/Action;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static hasNfcFeature()Z
    .locals 4

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "NfcAction"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v0, v3, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Package manager query failed, assuming no NFC feature"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method


# virtual methods
.method public final doChangeAction()Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doChangeAction() :: newValue - "

    const-string v2, "NfcAction"

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const-string v2, "NfcStandardMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "already_on"

    const-string/jumbo v4, "success"

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    :goto_0
    move-object v3, v4

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    goto :goto_0

    :cond_2
    const-string v2, "NfcCardMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :cond_5
    const-string v3, "false"

    :goto_1
    const-string/jumbo p0, "result"

    invoke-static {p0, v3}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doGetAction()Landroid/os/Bundle;
    .locals 2

    const-string v0, "NfcAction"

    const-string v1, "doGetAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/bixby/target/NfcAction;->hasNfcFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "true"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "false"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "not_supported_device"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doGotoAction()Landroid/os/Bundle;
    .locals 4

    const-string v0, "NfcAction"

    const-string v1, "doGotoAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    const-string p0, "false"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getTaskId()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "doGotoAction() :: TargetTask is existed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->launchSettings(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string/jumbo p0, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p0, "not_supported_device"

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSetAction()Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doSetAction() :: newValue - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcAction"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/bixby/target/NfcAction;->hasNfcFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "not_supported_device"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string v3, "false"

    if-nez v1, :cond_1

    invoke-static {v3}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "success"

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    const-string v0, "Enter NFC Settings On"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    :cond_2
    const-string v5, "already_on"

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    const-string v0, "Enter NFC Settings Off"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :cond_4
    const-string v5, "already_off"

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSupportAction()Landroid/os/Bundle;
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/bixby/target/NfcAction;->hasNfcFeature()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "false"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
