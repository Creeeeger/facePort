.class public Lcom/samsung/android/settings/eternal/EternalRemoteService;
.super Landroid/app/Service;
.source "EternalRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

.field private final mMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$mhandleMessage(Lcom/samsung/android/settings/eternal/EternalRemoteService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/EternalRemoteService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mHandler:Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

    .line 27
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mHandler:Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "EternalRemoteService"

    if-nez p1, :cond_0

    const-string p0, "handleMessage() - msg is null"

    .line 32
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->isSettingAppSupportBnR()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1001

    if-eq v1, v2, :cond_1

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage() - Unsupported cmd : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/eternal/EternalRemoteService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$2;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 40
    :cond_2
    new-instance p1, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;

    invoke-direct {p1}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/settings/eternal/defaultvalue/JSONManager;->deleteOldJSONFile()V

    .line 43
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method
