.class public final Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mService:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$EternalHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/eternal/EternalRemoteService;

    if-eqz p0, :cond_4

    sget v0, Lcom/samsung/android/settings/eternal/EternalRemoteService;->$r8$clinit:I

    const-string v0, "EternalRemoteService"

    if-nez p1, :cond_0

    const-string p0, "handleMessage() - msg is null"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->isSettingAppSupportBnR()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1001

    if-eq v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage() - Unsupported cmd : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/File;

    const-string v0, "/efs/sec_efs/SettingsBackup.json"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "JSONManager"

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const-string v0, "deleteOldJSONFile result = "

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string p1, "deleteOldJSONFile does not exist"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;-><init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    return-void
.end method
