.class Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiSmartSwitchBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    .line 199
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string p1, "wifi"

    .line 200
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "sem_wifi"

    .line 201
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private backupIWC(Ljava/lang/String;)V
    .locals 9

    .line 915
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getIWCQTables()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    if-nez v0, :cond_0

    const-string p0, "Qtable is null"

    .line 917
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 920
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/wifi_share_profile/qtables.json Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/data/misc/wifi_share_profile/qtables.json"

    .line 921
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 922
    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    .line 923
    :try_start_0
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/nio/file/OpenOption;

    sget-object v8, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v7, v3

    sget-object v8, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v7, v5

    invoke-static {v4, v6, v7}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 923
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 928
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup file IO exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "qtables.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v2, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string p1, "encrypt new file fail"

    .line 932
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p0, v3, v5, v5, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    .line 936
    :cond_2
    :try_start_5
    invoke-static {v4}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 938
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private backupSemWifiConfiguration(Ljava/lang/String;)V
    .locals 9

    .line 943
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    if-nez v0, :cond_0

    const-string p0, "SemWifiConfiguration is null"

    .line 945
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 948
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/wifi_share_profile/semconfigurations.json Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/data/misc/wifi_share_profile/semconfigurations.json"

    .line 949
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 950
    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    .line 952
    :try_start_0
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/nio/file/OpenOption;

    sget-object v8, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v7, v3

    sget-object v8, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v8, v7, v5

    invoke-static {v4, v6, v7}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 952
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 957
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backup file IO exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "semconfigurations.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v2, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string p1, "encrypt new file fail"

    .line 962
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {p0, v3, v5, v5, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    .line 966
    :cond_2
    :try_start_5
    invoke-static {v4}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 968
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .locals 4

    .line 599
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 602
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    .line 603
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAMSUNG-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private readSemConfFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 1032
    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p0

    const-string p1, ""

    .line 1035
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 1032
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
.end method

.method private restoreIWC(Ljava/lang/String;)V
    .locals 5

    .line 973
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    if-eqz v0, :cond_0

    const-string p0, "xmlQtableJson is empty"

    .line 974
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "/data/misc/wifi_share_profile/qtables_restore.json"

    .line 979
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    const-string p1, "decrypt fail"

    .line 981
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-virtual {p0, v0, v0, v0, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    .line 987
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readQtableFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 988
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setIWCQTables(Ljava/lang/String;)V

    new-array p0, v4, [Ljava/lang/String;

    .line 989
    invoke-static {v2, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 991
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private restoreSemConf(Ljava/lang/String;)V
    .locals 5

    .line 996
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    if-eqz v0, :cond_0

    const-string p0, "xmlSemConfJson is empty"

    .line 997
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1001
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "/data/misc/wifi_share_profile/semconfigurations_restore.json"

    .line 1002
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    const-string p1, "decrypt fail"

    .line 1004
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {p0, v0, v0, v0, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    .line 1010
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readSemConfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1011
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiManager;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    new-array p0, v4, [Ljava/lang/String;

    .line 1012
    invoke-static {v2, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1014
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method backup()V
    .locals 13

    const-string v0, "/"

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v2, "SAVE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v3, "ACTION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 215
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SESSION_KEY"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 216
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SOURCE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "EXPORT_SESSION_TIME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "SECURITY_LEVEL"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    .line 219
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v6, "FAST_TRACK"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BACKUP] path: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WifiSmartSwitchBackupRestore"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         action: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mSource: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  mSecurityLevel: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->isPermissionNotGranted()Z

    move-result v3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    .line 226
    invoke-virtual {p0, v4, v7, v6, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->retrieveBackupData()[B

    move-result-object v3

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wifiFullConfigData.length  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-nez v2, :cond_13

    .line 235
    array-length v2, v3

    if-nez v2, :cond_1

    const-string v0, "There is no networks to backup"

    .line 236
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0, v4, v7, v9, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    .line 244
    :cond_1
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v9, v9

    .line 256
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v11, v2

    mul-long/2addr v9, v11

    .line 258
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getWifiConfigSize([B)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v9, v11

    if-gez v2, :cond_2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freeSpaceInBytes : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", wifiFullConfigData.length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    array-length v0, v3

    invoke-virtual {p0, v4, v7, v8, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_2
    const-string v2, "/data/misc/wifi_share_profile/backup.conf"

    .line 265
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string v8, "/data/misc/wifi_share_profile/backup_old.conf"

    .line 266
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    .line 269
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v9, v7, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 273
    :try_start_1
    new-instance v11, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 274
    :try_start_2
    invoke-virtual {v11, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 275
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "wpa_supplicant.conf"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v8, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_5

    const-string v0, "encrypt old file fail"

    .line 279
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, v4, v7, v7, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    :try_start_3
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 309
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 310
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 311
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 312
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    .line 283
    :cond_5
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WifiConfigStore.xml"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_8

    const-string v0, "encrypt new file fail"

    .line 285
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0, v4, v7, v7, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    :try_start_5
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 309
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 310
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 311
    :cond_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 312
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_7
    return-void

    .line 291
    :cond_8
    :try_start_6
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backupIWC(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 294
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backupSemWifiConfiguration(Ljava/lang/String;)V

    .line 297
    :cond_9
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_c

    const-string v0, "makeXML fail"

    .line 299
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, v4, v7, v7, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 303
    :try_start_7
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 309
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 310
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 311
    :cond_a
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 312
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_b
    return-void

    .line 303
    :cond_c
    :try_start_8
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 309
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 310
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 311
    :cond_d
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 314
    :cond_e
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 273
    :try_start_9
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 304
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup file IO exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0, v4, v7, v6, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 309
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 310
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 311
    :cond_f
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 312
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_10
    return-void

    .line 309
    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 310
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 311
    :cond_11
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 312
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 313
    :cond_12
    throw p0

    :catch_1
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0, v4, v7, v9, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_13
    if-ne v2, v8, :cond_14

    goto :goto_2

    .line 318
    :cond_14
    invoke-virtual {p0, v4, v7, v9, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    :goto_2
    return-void
.end method

.method createBnRFile(Ljava/lang/String;)V
    .locals 1

    .line 443
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 447
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createBnRFile exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiSmartSwitchBackupRestore"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)V

    .line 731
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 732
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 733
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 736
    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 738
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 744
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 745
    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0

    .line 727
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Null argument out to decryptStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method encrypt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11

    const-string v0, "FileInputStream IOException "

    const-string v1, "InputStream IOException "

    const-string v2, "FileOutputStream IOException "

    const-string v3, "OutputStream IOException "

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, "WifiSmartSwitchBackupRestore"

    if-nez p1, :cond_0

    .line 643
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 644
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 645
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v4

    move-object v4, p1

    move-object p1, v10

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    move-object p3, p2

    move-object p2, v4

    goto/16 :goto_f

    :catch_0
    move-exception p0

    move-object p3, p2

    move-object p2, v4

    move-object v4, p1

    move-object p1, p2

    goto/16 :goto_a

    :catchall_1
    move-exception p0

    move-object p2, v4

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p2, v4

    move-object p3, p2

    move-object v4, p1

    :goto_0
    move-object p1, p3

    goto/16 :goto_a

    :catchall_2
    move-exception p0

    move-object p1, v4

    move-object p2, p1

    :goto_1
    move-object p3, p2

    goto/16 :goto_f

    :catch_2
    move-exception p0

    move-object p1, v4

    move-object p2, p1

    move-object p3, p2

    goto/16 :goto_a

    :cond_0
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 647
    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 648
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 649
    :try_start_5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v10, v4

    move-object v4, p0

    move-object p0, p2

    move-object p2, v10

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object p3, v4

    move-object v10, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v10

    goto/16 :goto_f

    :catch_3
    move-exception p2

    move-object p3, v4

    move-object v4, p0

    move-object p0, p2

    move-object p2, p1

    goto :goto_0

    :catchall_4
    move-exception p0

    move-object p2, p1

    move-object p1, v4

    move-object p3, p1

    goto/16 :goto_f

    :catch_4
    move-exception p0

    move-object p2, p1

    move-object p1, v4

    move-object p3, p1

    goto/16 :goto_a

    :cond_1
    move-object p0, v4

    move-object p1, p0

    move-object p2, p1

    :goto_2
    const/16 p3, 0x400

    :try_start_6
    new-array v7, p3, [B

    :goto_3
    const/4 v8, 0x0

    if-eqz v4, :cond_2

    .line 653
    invoke-virtual {v4, v7, v8, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-eq v9, v5, :cond_2

    .line 654
    invoke-virtual {p0, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_3

    .line 662
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 664
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v5

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    .line 670
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 672
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v5

    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 678
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    .line 680
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v5

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    .line 686
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    .line 688
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_6
    :goto_8
    move v5, v8

    goto/16 :goto_e

    :catchall_5
    move-exception p3

    move-object v10, v4

    move-object v4, p0

    move-object p0, p3

    move-object p3, p2

    move-object p2, p1

    :goto_9
    move-object p1, v10

    goto/16 :goto_f

    :catch_9
    move-exception p3

    move-object v10, p1

    move-object p1, p0

    move-object p0, p3

    move-object p3, p2

    move-object p2, v10

    .line 657
    :goto_a
    :try_start_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz p1, :cond_7

    .line 662
    :try_start_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_b

    :catch_a
    move-exception p0

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_b
    if-eqz p3, :cond_8

    .line 670
    :try_start_d
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_c

    :catch_b
    move-exception p0

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_c
    if-eqz v4, :cond_9

    .line 678
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_d

    :catch_c
    move-exception p0

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_d
    if-eqz p2, :cond_a

    .line 686
    :try_start_f
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_e

    :catch_d
    move-exception p0

    .line 688
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_7

    :cond_a
    :goto_e
    return v5

    :catchall_6
    move-exception p0

    move-object v10, v4

    move-object v4, p1

    goto :goto_9

    :goto_f
    if-eqz v4, :cond_b

    .line 662
    :try_start_10
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_10

    :catch_e
    move-exception v4

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_10
    if-eqz p3, :cond_c

    .line 670
    :try_start_11
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_11

    :catch_f
    move-exception p3

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_11
    if-eqz p1, :cond_d

    .line 678
    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_12

    :catch_10
    move-exception p1

    .line 680
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_12
    if-eqz p2, :cond_e

    .line 686
    :try_start_13
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    goto :goto_13

    :catch_11
    move-exception p1

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_e
    :goto_13
    throw p0
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)V

    .line 708
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 709
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 710
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 711
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateEncryptSalt()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 716
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)V

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fputsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 721
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetsecretKey(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 722
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetcipher(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public generateEncryptSalt()[B
    .locals 1

    .line 749
    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 751
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    .line 760
    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 761
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$fgetsalt(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object p0

    const/16 v3, 0x3e8

    const/16 v4, 0x100

    invoke-direct {v2, v0, p0, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 762
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 764
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 697
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 698
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/16 p0, 0x10

    new-array v1, p0, [B

    .line 700
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method getWifiConfigSize([B)I
    .locals 4

    .line 902
    array-length p1, p1

    :try_start_0
    const-string v0, "/data/misc/wifi/qtables.json"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 905
    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr p1, v0

    .line 907
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "/data/misc/wifi/semconfigurations.json"

    new-array v0, v1, [Ljava/lang/String;

    .line 908
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    add-int/2addr p1, p0

    :catch_0
    :cond_0
    return p1
.end method

.method inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 4

    .line 455
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    .line 460
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 461
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 464
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 467
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public isPermissionNotGranted()Z
    .locals 6

    .line 768
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-$$Nest$sfgetmPermissions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 769
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method makeOldStyle(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fw.close IOException"

    const-string v3, "="

    const-string v4, "ssid"

    const-string v5, "scan_ssid"

    const-string v6, "key_mgmt"

    const-string v7, "psk"

    const-string v8, "wep_key0"

    const-string v9, "wep_key1"

    const-string v10, "wep_key2"

    const-string v11, "wep_key3"

    const-string v12, "wep_tx_keyidx"

    const-string v13, "auth_alg"

    .line 800
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "makeOldStyle "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "WifiSmartSwitchBackupRestore"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v14, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    move-object/from16 v16, v15

    const-string v15, "\n\t"

    const/16 v17, 0x0

    move-object/from16 v18, v2

    .line 806
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    move-object/from16 v19, v12

    const/4 v12, 0x1

    invoke-direct {v2, v1, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v1, "Old_Version_Style\n"

    .line 807
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 808
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_b

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 809
    iget-object v12, v14, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 p1, v1

    sget-object v1, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 810
    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "EAP"

    .line 811
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v12, :cond_0

    .line 813
    invoke-virtual {v12}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    move-object/from16 v20, v11

    const/4 v11, -0x1

    if-eq v12, v11, :cond_1

    move-object/from16 v1, p1

    move-object/from16 v11, v20

    goto/16 :goto_4

    :cond_0
    move-object/from16 v20, v11

    :cond_1
    const-string v11, "network={"

    .line 816
    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 817
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 818
    iget-boolean v11, v14, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v11, :cond_2

    .line 819
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "=1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 820
    :cond_2
    iget-object v11, v14, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 821
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 822
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 823
    iget-object v1, v14, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    .line 824
    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    iget-object v11, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_4

    .line 826
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 829
    :cond_4
    iget-object v1, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v12

    if-eqz v1, :cond_5

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v11, v11, v12

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 831
    :cond_5
    iget-object v1, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v1, v1, v11

    if-eqz v1, :cond_6

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v17, 0x1

    aget-object v11, v11, v17

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v17, 0x1

    .line 833
    :goto_1
    iget-object v1, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v1, v1, v11

    if-eqz v1, :cond_7

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v11, v12, v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 835
    :cond_7
    iget-object v1, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v1, v1, v11

    if-eqz v1, :cond_8

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v20

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v20, 0x3

    aget-object v11, v11, v20

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object/from16 v12, v20

    .line 837
    :goto_2
    iget-object v1, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v1, v1, v11

    if-eqz v1, :cond_9

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object/from16 v11, v19

    :goto_3
    const-string v1, "\n}\n\n"

    .line 840
    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v1, p1

    move-object/from16 v19, v11

    move-object v11, v12

    move/from16 v12, v17

    goto/16 :goto_0

    :cond_a
    move-object/from16 v1, p1

    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_a

    :cond_b
    :try_start_3
    const-string v0, "New_Version_Style\n"

    .line 842
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 851
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    :goto_5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v17, v2

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v17, v2

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v17, v2

    goto :goto_b

    :catchall_2
    move-exception v0

    :goto_6
    move-object/from16 v1, v16

    move-object/from16 v3, v18

    :goto_7
    move-object v2, v0

    goto :goto_e

    :catch_5
    move-exception v0

    :goto_8
    move-object/from16 v1, v16

    move-object/from16 v3, v18

    .line 847
    :goto_9
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeOldStyle IOException :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v17, :cond_c

    .line 851
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    :catch_7
    move-exception v0

    :goto_a
    move-object/from16 v1, v16

    move-object/from16 v3, v18

    .line 845
    :goto_b
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeOldStyle File not found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v17, :cond_c

    .line 851
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_c
    :goto_d
    return-void

    :catchall_3
    move-exception v0

    goto :goto_7

    :goto_e
    if-eqz v17, :cond_d

    .line 851
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v4, v0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_d
    :goto_f
    throw v2
.end method

.method makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 890
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 891
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result p1

    if-lez p1, :cond_1

    .line 895
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 897
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method makeXML(Ljava/lang/String;)I
    .locals 12

    const-string v0, "semConfJson"

    const-string v1, "qtableJson"

    const-string v2, "newConf"

    const-string v3, "conf"

    const-string v4, "model"

    const-string v5, "Wi-Fi"

    const-string v6, ""

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 477
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v9

    .line 478
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "wifi_wpaconf.xml"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 479
    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 480
    :try_start_1
    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string p1, "UTF-8"

    .line 482
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 483
    invoke-interface {v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 485
    invoke-interface {v9, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    invoke-interface {v9, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    invoke-interface {v9, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "wpa_supplicant.conf"

    .line 490
    invoke-interface {v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    invoke-interface {v9, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    invoke-interface {v9, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "WifiConfigStore.xml"

    .line 494
    invoke-interface {v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    invoke-interface {v9, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    invoke-interface {v9, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p1, "qtables.json"

    .line 499
    invoke-interface {v9, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    invoke-interface {v9, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 504
    invoke-interface {v9, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "semconfigurations.json"

    .line 505
    invoke-interface {v9, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    invoke-interface {v9, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    :cond_0
    invoke-interface {v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v8, v10

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v8, v10

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string p1, "WifiSmartSwitchBackupRestore"

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeXML exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_1

    .line 517
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 519
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return v7

    :goto_2
    if-eqz v8, :cond_2

    .line 517
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 519
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 522
    :cond_2
    :goto_3
    throw p0
.end method

.method public readQtableFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 1020
    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p0

    const-string p1, ""

    .line 1023
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 1020
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1
.end method

.method readXML(Ljava/lang/String;)I
    .locals 14

    const-string v0, "WifiSmartSwitchBackupRestore"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 530
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    .line 531
    invoke-virtual {v4, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 532
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 534
    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "wifi_wpaconf.xml"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 535
    :try_start_1
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 537
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const-string v3, ""
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v2

    :goto_0
    if-eq p1, v5, :cond_a

    const/4 v8, 0x2

    const-string v9, "semConfJson"

    const-string v10, "qtableJson"

    const-string v11, "newConf"

    const-string v12, "conf"

    const-string v13, "model"

    if-ne p1, v8, :cond_2

    .line 545
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 547
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto/16 :goto_2

    :cond_1
    :goto_1
    move-object v3, p1

    move v7, v5

    goto/16 :goto_2

    :cond_2
    const/4 v8, 0x4

    if-ne p1, v8, :cond_7

    if-eqz v7, :cond_3

    .line 552
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 553
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[readXML] model : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    if-eqz v7, :cond_4

    .line 555
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 556
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[readXML] wpa_supplicant.conf : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    if-eqz v7, :cond_5

    .line 558
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 559
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    .line 560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[readXML] WifiConfigStore.xml : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    if-eqz v7, :cond_6

    .line 561
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 563
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[readXML] qtables.json : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlQtableJson:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_9

    .line 565
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 566
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 567
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[readXML] semConfJson.json : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/4 v8, 0x3

    if-ne p1, v8, :cond_9

    .line 571
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz v7, :cond_9

    .line 572
    invoke-virtual {v13, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v12, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 573
    invoke-virtual {v9, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 574
    invoke-virtual {v11, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v7, v2

    .line 579
    :cond_9
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 590
    :cond_a
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v2

    goto :goto_5

    :catch_0
    return v2

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v3, v6

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v3, v6

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    .line 585
    :goto_3
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read XML Error "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_b

    .line 590
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    return v1

    :catch_5
    move-exception p0

    .line 582
    :goto_4
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runtimeException "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_b

    .line 590
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    nop

    :catch_6
    :cond_b
    :goto_5
    return v1

    :goto_6
    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    return v2

    .line 594
    :cond_c
    :goto_7
    throw p0
.end method

.method restore()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "restore close Exception "

    const-string v3, "  "

    .line 323
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v4, "SAVE_PATH"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v5, "ACTION"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 325
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v8, "SESSION_KEY"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    .line 326
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v8, "SOURCE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    .line 327
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v8, "SECURITY_LEVEL"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    .line 328
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v8, "FAST_TRACK"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RESTORE] path: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "WifiSmartSwitchBackupRestore"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "         action: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mSource: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  mSecurityLevel: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v8, v8, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->isPermissionNotGranted()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    const/4 v0, 0x4

    .line 335
    invoke-virtual {v1, v8, v8, v0, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_0
    const/4 v5, 0x3

    if-eqz v4, :cond_3

    .line 338
    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-boolean v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    const-string v0, "Cancel restore by SmartSwitch"

    .line 435
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 437
    :cond_2
    invoke-virtual {v1, v8, v8, v5, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    goto/16 :goto_10

    .line 340
    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v9, "CONFIG_LIST"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 342
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 343
    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_1

    .line 345
    :cond_4
    invoke-virtual {v1, v8, v6, v6, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    .line 350
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    .line 351
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v4

    .line 352
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[readXML] xmlNewConf: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  xmlOldConf: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_6

    const-string v0, "xml parsing error"

    .line 354
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v1, v8, v8, v5, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_6
    const-string v10, "/data/misc/wifi_share_profile/restore.conf"

    .line 358
    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    .line 361
    iget-object v11, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "/"

    const/4 v13, 0x0

    if-nez v11, :cond_7

    .line 362
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v14, v14, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v12, v12, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v8, v11, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 365
    iget-object v12, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v14, v12, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    iput-object v14, v12, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    goto :goto_2

    .line 366
    :cond_7
    iget-object v11, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v11, v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 367
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v14, v14, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v12, v12, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v8, v11, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 370
    iget-object v12, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v14, v12, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    iput-object v14, v12, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move v11, v4

    move-object v4, v13

    :goto_2
    if-eqz v4, :cond_13

    .line 372
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-gtz v4, :cond_9

    goto/16 :goto_15

    :cond_9
    if-ne v11, v9, :cond_a

    const-string v0, "decrypt fail"

    .line 378
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v1, v8, v8, v8, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_a
    :try_start_0
    const-string v4, "wpa_supplicant.conf"

    .line 387
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v5, "Bytes "

    if-eqz v4, :cond_b

    :try_start_1
    const-string v4, "START restore OLD STYLE"

    .line 388
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 390
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 391
    :try_start_3
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 393
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v11

    invoke-virtual {v5, v11, v13}, Landroid/net/wifi/WifiManager;->restoreSupplicantBackupData([B[B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    move-object v13, v9

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_4
    move-object v13, v10

    goto/16 :goto_11

    :catch_0
    move-exception v0

    :goto_5
    move-object v13, v10

    goto/16 :goto_9

    :catch_1
    move-exception v0

    :goto_6
    move-object v13, v10

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-object v9, v13

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move-object v9, v13

    goto/16 :goto_c

    :cond_b
    :try_start_5
    const-string v4, "START restore"

    .line 396
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->throwAwayOldStyle()V

    .line 398
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 399
    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 400
    :try_start_7
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 403
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 405
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v11

    invoke-virtual {v10, v5, v6, v11}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 406
    iget-object v11, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v5}, Landroid/net/wifi/WifiManager;->restoreBackupData([B)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 410
    :goto_7
    :try_start_9
    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restoreIWC(Ljava/lang/String;)V

    .line 412
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 413
    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restoreSemConf(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 421
    :cond_c
    :try_start_a
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 422
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_f

    :catch_6
    move-exception v0

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v9, v13

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move-object v9, v13

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move-object v9, v13

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v9, v13

    goto/16 :goto_11

    :catch_9
    move-exception v0

    move-object v4, v13

    move-object v9, v4

    .line 418
    :goto_9
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restore file IO exception "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v13, :cond_d

    .line 421
    :try_start_c
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    goto :goto_a

    :catch_a
    move-exception v0

    goto :goto_b

    :cond_d
    :goto_a
    if-eqz v9, :cond_f

    .line 422
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_f

    .line 424
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v4, v13

    move-object v9, v4

    .line 416
    :goto_c
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restore File not Found exception: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v13, :cond_e

    .line 421
    :try_start_e
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    goto :goto_d

    :catch_c
    move-exception v0

    goto :goto_e

    :cond_e
    :goto_d
    if-eqz v9, :cond_f

    .line 422
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_f

    .line 424
    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    :cond_f
    :goto_f
    if-eqz v4, :cond_10

    .line 429
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 432
    :cond_10
    invoke-virtual {v1, v8, v6, v6, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    :goto_10
    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_11
    if-eqz v13, :cond_11

    .line 421
    :try_start_f
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    goto :goto_12

    :catch_d
    move-exception v0

    goto :goto_13

    :cond_11
    :goto_12
    if-eqz v9, :cond_12

    .line 422
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_14

    .line 424
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_12
    :goto_14
    throw v1

    :cond_13
    :goto_15
    const-string v0, "can\'t read file"

    .line 373
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v1, v8, v8, v5, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backup()V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method sendResponse(IIII)V
    .locals 2

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isCanceled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    if-eqz v0, :cond_1

    return-void

    .line 615
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_2

    const-string p1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    .line 617
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string p1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    .line 620
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const-string p1, "RESULT"

    .line 622
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERR_CODE"

    .line 623
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "REQ_SIZE"

    .line 624
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    const-string p2, "SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    const-string p2, "SmartSwitch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 628
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 630
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method throwAwayOldStyle()V
    .locals 7

    const-string p0, "/data/misc/wifi_share_profile/restore.conf"

    const-string v0, "throwAwayOldStyle try IOException "

    const-string v1, "WifiSmartSwitchBackupRestore"

    const-string v2, "throwAwayOldStyle"

    .line 858
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 861
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v4, ""

    .line 864
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 865
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "New_Version_Style"

    .line 866
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 869
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 872
    :cond_2
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 873
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 875
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 880
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v5

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 861
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    .line 876
    :goto_3
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throwAwayOldStyle IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_3

    .line 880
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_4

    .line 880
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_7

    :catch_4
    move-exception v2

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_4
    :goto_7
    throw p0
.end method
