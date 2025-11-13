.class public Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;
.super Landroid/app/Service;
.source "WifiSmartSwitchBackupRestoreRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;
    }
.end annotation


# instance fields
.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$mhandleMessage(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;)V

    .line 44
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "WifiSmartSwitchBackupRestoreRemoteService"

    if-nez p1, :cond_0

    const-string p0, "handleMessage() - msg is null"

    .line 49
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "handleMessage() - bundle is null"

    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "SAVE_PATH"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION_KEY"

    .line 61
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SECURITY_LEVEL"

    .line 62
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 63
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {v5, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v0, "FAST_TRACK"

    .line 67
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage() - Unsupported cmd : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
