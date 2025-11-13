.class public Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiGalaxyWearBnrReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInstance:Landroid/os/Handler;

.field private static mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$mdoBnr(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->doBnr()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBnrFilePath(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->getBnrFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUri(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveBnrFile(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->removeBnrFile(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrevokePermission(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->revokePermission(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsendBroadCastIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->sendBroadCastIntent(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static createBnRFile(Ljava/lang/String;)V
    .locals 2

    .line 170
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBnRFile exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiGalaxyWearBnrReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private doBnr()V
    .locals 6

    const-string v0, "IOException  "

    .line 142
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 143
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->retrieveBackupData()[B

    move-result-object v1

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->getBnrFilePath()Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiGalaxyWearBnrReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->createBnRFile(Ljava/lang/String;)V

    .line 147
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, p0, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v4, 0x0

    .line 151
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    :try_start_1
    new-instance p0, Ljava/io/DataOutputStream;

    invoke-direct {p0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 154
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 155
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v4, v5

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 157
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBnr IO exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    .line 161
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v4, :cond_1

    .line 161
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    :goto_4
    throw p0
.end method

.method private getBnrFilePath()Ljava/lang/String;
    .locals 2

    .line 186
    sget-object p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 187
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "files"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "wifi_config.config"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->getBnrFilePath()Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUri path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiGalaxyWearBnrReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    sget-object p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings.files"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/settings/wifi/FileProviderSender;->getContentFileUri(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUri path Uri =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private removeBnrFile(Ljava/lang/String;)V
    .locals 0

    .line 181
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private revokePermission(Ljava/lang/String;)V
    .locals 2

    .line 103
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->getUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method private static sendBroadCastIntent(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.RESPONSE_CREATE_URI_WIFIWPACONF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/*"

    .line 95
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x20

    .line 96
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x1000000

    .line 97
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    sget-object p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendMessage(ILjava/lang/String;I)V
    .locals 0

    .line 61
    sget-object p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mInstance:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 62
    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    iput p3, p0, Landroid/os/Message;->arg1:I

    .line 64
    sget-object p1, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mInstance:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private startHandlerThread()V
    .locals 5

    .line 68
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    const-string v1, "WifiGalaxyWearBnrReceiver"

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mWorkerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    const-string v0, "startHandlerThread new Handler Thread created"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiGalaxyWearBnr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mWorkerThread:Landroid/os/HandlerThread;

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Landroid/content/Context;Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler-IA;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mInstance:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string p0, "startHandlerThread : Context is null"

    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiGalaxyWearBnrReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.intent.action.REQUEST_CREATE_URI_WIFIWPACONF"

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.sec.android.intent.action.RESPONSE_CREATE_URI_WIFIWPACONF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    :cond_0
    sput-object p1, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->startHandlerThread()V

    .line 48
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "requestPackage"

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const-string v2, "actionValue"

    .line 51
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive FILE_PROIVIDER_INTENT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->sendMessage(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method
