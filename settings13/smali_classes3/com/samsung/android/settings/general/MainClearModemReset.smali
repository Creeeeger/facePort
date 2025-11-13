.class public Lcom/samsung/android/settings/general/MainClearModemReset;
.super Landroid/app/Service;
.source "MainClearModemReset.java"


# instance fields
.field private final RTN_RESET_PROPERTY:Ljava/lang/String;

.field private called:Z

.field private isHiddenM:Ljava/lang/String;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mFromOemUnlock:Z

.field private mHandler:Landroid/os/Handler;

.field private mOemUnlockEnabled:Z

.field private mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private requestedTimeArg:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$msendMainClearIntent(Lcom/samsung/android/settings/general/MainClearModemReset;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/general/MainClearModemReset;->sendMainClearIntent()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "dev.rtnreset.property"

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->RTN_RESET_PROPERTY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->isHiddenM:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mFromOemUnlock:Z

    .line 68
    iput-boolean v1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mOemUnlockEnabled:Z

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/samsung/android/settings/general/MainClearModemReset$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/general/MainClearModemReset$1;-><init>(Lcom/samsung/android/settings/general/MainClearModemReset;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private sendMainClearIntent()V
    .locals 5

    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->called:Z

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->called:Z

    const-string v1, "dev.rtnreset.property"

    .line 120
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_1

    const-string v1, "MainClearModemReset"

    const-string v3, "rtn reset property is 1, send WipeCustomerPartiotion"

    .line 122
    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "dev.rtnreset.property"

    const-string v3, "-1"

    .line 125
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MainClearModemReset"

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RTN_RESET_PROPERTY ,Default value is set to -1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dev.rtnreset.property"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "WipeCustomerPartiotion"

    .line 129
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.REASON"

    const-string v3, "HIDDEN_MENU"

    .line 130
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MainClearModemReset"

    const-string v3, "setting package android and sending explicit broadcast"

    .line 132
    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android"

    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "MainClearModemReset"

    const-string v2, "sent MASTER_CLEAR intent and add WipeCustomerPartiotion for wipe_carrier&wipe_data"

    .line 135
    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MainClearModemReset"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Factory reset requested time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "com.android.internal.intent.extra.FDR_REQUEST_TIME"

    .line 139
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "MainClearModemReset"

    const-string v1, "rtn reset property is not 1, don`t send WipeCustomerPartiotion"

    .line 144
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 150
    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mEraseSdCard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    .line 151
    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mEraseEsims:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "MainClearModemReset"

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Factory reset requested time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "com.android.internal.intent.extra.FDR_REQUEST_TIME"

    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendResetCommandToRIL()V
    .locals 4

    const-string v0, "ril.modem.board"

    const-string v1, ""

    .line 76
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modem name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainClearModemReset"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/sec_platform_library/PacketBuilder;-><init>(BB)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->isHiddenM:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 82
    invoke-virtual {v0, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const-string v2, "sendResetCommandToRIL() 0x02 "

    .line 83
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 85
    invoke-virtual {v0, v2}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->addData(B)Lcom/samsung/android/sec_platform_library/PacketBuilder;

    const-string v2, "sendResetCommandToRIL() 0x04 "

    .line 86
    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/PacketBuilder;->getPacket()[B

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 175
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->connectToRilService()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 186
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    .line 190
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string p2, "MainClearModemReset"

    if-eqz p1, :cond_0

    const-string v0, "hiddenmenu"

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->isHiddenM:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MasterClearModemReset, onStart isHiddenM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->isHiddenM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "FACTORY"

    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "WIPE_EXTERNAL_STORAGE"

    .line 202
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mEraseSdCard:Z

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIPE_EXTERNAL_STORAGE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mEraseSdCard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WIPE_ESIMS"

    .line 204
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mEraseEsims:Z

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIPE_ESIMS = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mEraseEsims:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 218
    :cond_2
    new-instance p1, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {p1, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 219
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 220
    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 221
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 222
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 223
    sget p1, Lcom/android/settings/R$string;->shutdown_progress:I

    invoke-virtual {p0, p1}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const-string p1, "Modem reset started..."

    .line 225
    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 229
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requested_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Factory reset requested time is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->requestedTimeArg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/settings/general/MainClearModemReset;->sendResetCommandToRIL()V

    .line 236
    new-instance p1, Lcom/samsung/android/settings/general/MainClearModemReset$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/general/MainClearModemReset$2;-><init>(Lcom/samsung/android/settings/general/MainClearModemReset;)V

    iput-object p1, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    .line 243
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/general/MainClearModemReset;->mDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x4e20

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
