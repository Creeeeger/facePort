.class public Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore;
.super Ljava/lang/Object;
.source "IWCSamsungCloudBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeToParcelFileDescriptor(Landroid/content/Context;Ljava/io/File;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sem_wifi"

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getIWCQTables()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IWCSamsungCloudBackupRestore"

    if-eqz p1, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/misc/wifi_share_profile/qtables.json Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 162
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v2, v3

    .line 161
    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 165
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 168
    :try_start_3
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 169
    :try_start_4
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance p2, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore$2;

    invoke-direct {p2, p0, p4}, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {p3, v0, v1, p1, p2}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catchall_0
    move-exception p0

    .line 168
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p0

    .line 177
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_1

    .line 161
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p0

    .line 166
    throw p0

    :cond_2
    :goto_2
    const-string p0, "Qtable is null or empty"

    .line 157
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 7

    const-string v0, "/data/misc/wifi_share_profile/qtables.json"

    const-string v1, "IWCSamsungCloudBackupRestore"

    const-string v2, "backup"

    .line 91
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wifi/qtables.json"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const-string p0, "There is no file to write"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    .line 102
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    const-string p0, "There are no data to write"

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore;->createBnRFile(Ljava/lang/String;)V

    .line 110
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore;->writeToParcelFileDescriptor(Landroid/content/Context;Ljava/io/File;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    const-string p0, "Cloud BACK UP complete!!!!!!!!!!"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 113
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    .line 114
    invoke-interface {p3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    :goto_1
    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 120
    :cond_4
    throw p0
.end method

.method createBnRFile(Ljava/lang/String;)V
    .locals 1

    .line 183
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createBnRFile exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IWCSamsungCloudBackupRestore"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 85
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    return-object p0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 79
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    return-object p0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 3

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restore "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IWCSamsungCloudBackupRestore"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "/data/misc/wifi_share_profile/qtables_restore.json"

    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore;->createBnRFile(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/IWCSamsungCloudBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {p1, v1, v2, p2, v0}, Lcom/samsung/android/scloud/oem/lib/utils/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/utils/FileTool$PDMProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    .line 149
    invoke-interface {p3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 138
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    .line 146
    invoke-interface {p3, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void
.end method
