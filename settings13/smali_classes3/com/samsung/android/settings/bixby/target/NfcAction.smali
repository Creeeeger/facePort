.class public Lcom/samsung/android/settings/bixby/target/NfcAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "NfcAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bixby/target/NfcAction;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 27
    const-class v0, Lcom/samsung/android/settings/bixby/target/NfcAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mTaskId:Ljava/lang/Integer;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mTaskId:Ljava/lang/Integer;

    return-void
.end method

.method private hasNfcFeature()Z
    .locals 3

    .line 188
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const-string v0, "Cannot get package manager, assuming no NFC feature"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    const-string v2, "android.hardware.nfc"

    .line 194
    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const-string v2, "Package manager query failed, assuming no NFC feature"

    invoke-static {p0, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doChangeAction() :: newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string v1, "already_on"

    const-string v2, "success"

    if-eqz v0, :cond_6

    .line 144
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const-string v3, "NfcStandardMode"

    .line 146
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v5, :cond_0

    .line 148
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 149
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    :cond_0
    if-eq v0, v4, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 157
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_2
    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_3
    const-string v3, "NfcCardMode"

    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-ne v0, v4, :cond_4

    goto :goto_1

    :cond_4
    if-ne v0, v5, :cond_5

    .line 165
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 167
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0

    :cond_6
    const-string v1, "false"

    .line 174
    :goto_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "result"

    .line 175
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/NfcAction;->hasNfcFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    .line 53
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "not_supported_device"

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p1, :cond_0

    const-string p1, "false"

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NfcSettingsActivity"

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mTaskId:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const-string v2, "doGotoAction() :: TargetTask is existed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/BixbyUtils;->getDeXDisplay(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string p1, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "not_supported_device"

    .line 129
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAction() :: newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/NfcAction;->hasNfcFeature()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "not_supported_device"

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string v1, "false"

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const-string v2, "true"

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "success"

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const-string v0, "enter NFC settings On"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 75
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0

    :cond_2
    const-string v3, "already_on"

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    .line 84
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const-string v0, "enter NFC settings Off from standard mode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    if-ne v0, p1, :cond_6

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->TAG:Ljava/lang/String;

    const-string v0, "enter NFC settings Off from card mode"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/NfcAction;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :cond_6
    const-string v3, "already_off"

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 99
    :cond_8
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSupportAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/NfcAction;->hasNfcFeature()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "false"

    .line 184
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
