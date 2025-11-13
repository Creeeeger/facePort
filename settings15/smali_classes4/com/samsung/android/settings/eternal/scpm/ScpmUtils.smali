.class public final Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sScpmUtils:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mScpm:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

.field public mToken:Ljava/lang/String;


# direct methods
.method public static copyPFDToSettingsBixby(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    const-string v0, "ScpmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "copyPFDToSettingsBixby() : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "copyPFDToSettingsBixby() "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->sScpmUtils:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/lib/platform/api/Scpm;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mScpm:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    sput-object v0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->sScpmUtils:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->sScpmUtils:Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;

    return-object p0
.end method


# virtual methods
.method public final jsonToString()Ljava/lang/String;
    .locals 3

    const-string v0, "eternalPolicy.json"

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "ScpmUtils"

    const-string v2, "jsonToString() : Fail json convert to String. buffer is empty. - eternalPolicy.json"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    :goto_1
    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method public final registerScpm()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mScpm:Lcom/samsung/android/scloud/lib/platform/api/Scpm;

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/platform/api/Scpm;->configuration:Lcom/samsung/android/scloud/lib/platform/api/Configuration;

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.scpm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const-string v1, "ScpmUtils"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scpmInfo"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "token"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/scpm/ScpmUtils$1;-><init>(Lcom/samsung/android/settings/eternal/scpm/ScpmUtils;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    const-string/jumbo p0, "startSetup() : Already registered with ScpmAgent"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo p0, "startSetup() : ScpmAgent is not installed"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/eternal/log/EternalFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
