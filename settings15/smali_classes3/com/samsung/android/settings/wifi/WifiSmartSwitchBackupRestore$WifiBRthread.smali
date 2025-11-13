.class public final Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntent:Landroid/content/Intent;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string/jumbo p1, "wifi"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p1, "sem_wifi"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public static createBnRFile(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "createBnRFile exception: "

    const-string v1, "WifiSmartSwitchBackupRestore"

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v2
.end method

.method public static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    aget-object v3, p1, v2

    const/16 v4, 0x5f

    const/16 v5, 0x2d

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readSemConfFile()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/misc/wifi_share_profile/semconfigurations_restore.json"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    const-string v1, ""

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method

.method public static throwAwayOldStyle()V
    .locals 8

    const-string v0, "/data/misc/wifi_share_profile/restore.conf"

    const-string/jumbo v1, "throwAwayOldStyle try IOException "

    const-string v2, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v3, "throwAwayOldStyle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v5, ""

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "New_Version_Style"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v6

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v6

    :goto_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "throwAwayOldStyle IOException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    :catch_3
    move-exception v3

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_4
    :goto_6
    throw v0
.end method


# virtual methods
.method public final backupSemWifiConfiguration()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->retrieveSemWifiConfigsBackupData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    if-nez v0, :cond_0

    const-string p0, "SemWifiConfiguration is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/misc/wifi_share_profile/tmp_semconfigurations.json Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/data/misc/wifi_share_profile/tmp_semconfigurations.json"

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

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

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

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

    :goto_1
    const-string v6, "backup file IO exception "

    invoke-static {v6, v0, v1}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :goto_2
    const-string v0, "/data/misc/wifi_share_profile/semconfigurations.json"

    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "encrypt new file fail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v5, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    :cond_2
    :try_start_5
    invoke-static {v4}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Ljavax/crypto/CipherInputStream;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public final encrypt(ILjava/lang/String;Ljava/lang/String;)I
    .locals 11

    const-string v0, "FileInputStream IOException "

    const-string v1, "InputStream IOException "

    const-string v2, "FileOutputStream IOException "

    const-string v3, "OutputStream IOException "

    const/4 v4, -0x1

    const-string v5, "WifiSmartSwitchBackupRestore"

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v6

    move-object v6, p1

    move-object p1, v10

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    move-object p3, p2

    move-object p2, v6

    goto/16 :goto_e

    :catch_0
    move-exception p0

    move-object p3, p2

    move-object p2, v6

    move-object v6, p1

    move-object p1, p2

    goto/16 :goto_9

    :catchall_1
    move-exception p0

    move-object p2, v6

    :goto_0
    move-object p3, p2

    goto/16 :goto_e

    :catch_1
    move-exception p0

    move-object p2, v6

    move-object p3, p2

    move-object v6, p1

    :goto_1
    move-object p1, p3

    goto/16 :goto_9

    :catchall_2
    move-exception p0

    move-object p1, v6

    move-object p2, p1

    goto :goto_0

    :catch_2
    move-exception p0

    move-object p1, v6

    move-object p2, p1

    move-object p3, p2

    goto/16 :goto_9

    :cond_0
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v10, v6

    move-object v6, p0

    move-object p0, p2

    move-object p2, v10

    goto :goto_2

    :catchall_3
    move-exception p2

    move-object p3, v6

    move-object v10, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v10

    goto/16 :goto_e

    :catch_3
    move-exception p2

    move-object p3, v6

    move-object v6, p0

    move-object p0, p2

    move-object p2, p1

    goto :goto_1

    :catchall_4
    move-exception p0

    move-object p2, p1

    move-object p1, v6

    move-object p3, p1

    goto/16 :goto_e

    :catch_4
    move-exception p0

    move-object p2, p1

    move-object p1, v6

    move-object p3, p1

    goto/16 :goto_9

    :cond_1
    move-object p0, v6

    move-object p1, p0

    move-object p2, p1

    :goto_2
    const/16 p3, 0x400

    :try_start_6
    new-array v7, p3, [B

    :goto_3
    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6, v7, v8, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-eq v9, v4, :cond_2

    invoke-virtual {p0, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p3

    move-object v10, v6

    move-object v6, p0

    move-object p0, p3

    move-object p3, p2

    move-object p2, p1

    :goto_4
    move-object p1, v10

    goto/16 :goto_e

    :catch_5
    move-exception p3

    move-object v10, p1

    move-object p1, p0

    move-object p0, p3

    move-object p3, p2

    move-object p2, v10

    goto :goto_9

    :cond_2
    if-eqz p0, :cond_3

    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    invoke-static {v3, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    move v8, v4

    :cond_3
    :goto_5
    if-eqz p2, :cond_4

    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    invoke-static {v2, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    move v8, v4

    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    invoke-static {v1, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    move v8, v4

    :cond_5
    :goto_7
    if-eqz p1, :cond_6

    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception p0

    invoke-static {v0, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    goto :goto_d

    :cond_6
    :goto_8
    move v4, v8

    goto :goto_d

    :goto_9
    :try_start_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz p1, :cond_7

    :try_start_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception p0

    invoke-static {v3, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_7
    :goto_a
    if-eqz p3, :cond_8

    :try_start_d
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_b

    :catch_b
    move-exception p0

    invoke-static {v2, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_8
    :goto_b
    if-eqz v6, :cond_9

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_c

    :catch_c
    move-exception p0

    invoke-static {v1, p0, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_9
    :goto_c
    if-eqz p2, :cond_a

    :try_start_f
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_a
    :goto_d
    return v4

    :catchall_6
    move-exception p0

    move-object v10, v6

    move-object v6, p1

    goto :goto_4

    :goto_e
    if-eqz v6, :cond_b

    :try_start_10
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_f

    :catch_d
    move-exception v4

    invoke-static {v3, v4, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_b
    :goto_f
    if-eqz p3, :cond_c

    :try_start_11
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_10

    :catch_e
    move-exception p3

    invoke-static {v2, p3, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_c
    :goto_10
    if-eqz p1, :cond_d

    :try_start_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    goto :goto_11

    :catch_f
    move-exception p1

    invoke-static {v1, p1, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_d
    :goto_11
    if-eqz p2, :cond_e

    :try_start_13
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_12

    :catch_10
    move-exception p1

    invoke-static {v0, p1, v5}, Lcom/android/settingslib/qrcode/QrCamera$DecodingTask$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    :cond_e
    :goto_12
    throw p0
.end method

.method public final encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v4, 0x10

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iput-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public final generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->salt:[B

    const/16 v3, 0x3e8

    const/16 v4, 0x100

    invoke-direct {v2, v0, p0, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    const/16 p0, 0x10

    new-array v1, p0, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public final makeOldStyle(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "fw.close IOException"

    const-string v2, "="

    const-string/jumbo v3, "ssid"

    const-string/jumbo v4, "scan_ssid"

    const-string v5, "key_mgmt"

    const-string v6, "psk"

    const-string/jumbo v7, "wep_key0"

    const-string/jumbo v8, "wep_key1"

    const-string/jumbo v9, "wep_key2"

    const-string/jumbo v10, "wep_key3"

    const-string/jumbo v11, "wep_tx_keyidx"

    const-string v12, "auth_alg"

    const-string v13, "makeOldStyle "

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "WifiSmartSwitchBackupRestore"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, p0

    iget-object v13, v13, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v13

    const-string v15, "\n\t"

    const/16 v16, 0x0

    move-object/from16 v17, v14

    :try_start_0
    new-instance v14, Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v1

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {v14, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v0, "Old_Version_Style\n"

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_b

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v13, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 p1, v0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v13, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    move-object/from16 v19, v11

    const/4 v11, -0x1

    if-eq v1, v11, :cond_1

    move-object/from16 v0, p1

    move-object/from16 v11, v19

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v16, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v16, v14

    :goto_2
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v16, v14

    :goto_3
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_a

    :cond_0
    move-object/from16 v19, v11

    :cond_1
    const-string v1, "network={"

    invoke-virtual {v14, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-boolean v1, v13, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "=1"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v1, v1, v11

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v11

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v1, v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const/16 v16, 0x1

    :goto_4
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_7
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v13, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object/from16 v1, v19

    :goto_5
    const-string v0, "\n}\n\n"

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, p1

    move-object v11, v1

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_b
    :try_start_4
    const-string v0, "New_Version_Style\n"

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/FileWriter;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    :goto_6
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v0

    move-object/from16 v16, v14

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v16, v14

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v16, v14

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    :goto_7
    move-object v3, v0

    goto/16 :goto_c

    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object/from16 v1, v17

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_8
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeOldStyle IOException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v16, :cond_c

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object/from16 v1, v17

    :goto_a
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeOldStyle File not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v16, :cond_c

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    :goto_b
    return-void

    :goto_c
    if-eqz v16, :cond_d

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    throw v3
.end method

.method public final makeXML()I
    .locals 16

    const-string/jumbo v0, "semConfJson"

    const-string v1, "newConf"

    const-string v2, "conf"

    const-string v3, "model"

    const-string v4, "Wi-Fi"

    const-string v5, ""

    const-string v6, "makeXML exception "

    const-string v7, "WifiSmartSwitchBackupRestore"

    const-string v8, "makeXML"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    const-string v11, "/data/misc/wifi_share_profile/wifi_wpaconf.xml"

    new-instance v12, Ljava/io/FileWriter;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v9, "UTF-8"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    const/16 v14, 0x8

    if-le v11, v14, :cond_0

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v8, "SAMSUNG-"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v9, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_0
    invoke-interface {v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "wpa_supplicant.conf"

    invoke-interface {v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "WifiConfigStore.xml"

    invoke-interface {v10, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "semconfigurations.json"

    invoke-interface {v10, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v9, v12

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v9, v12

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {v10, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v8, v13

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v8, -0x1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_2

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :goto_3
    return v8

    :goto_4
    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw v1
.end method

.method public final readXML()I
    .locals 14

    const-string v0, "WifiSmartSwitchBackupRestore"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/misc/wifi_share_profile/wifi_wpaconf.xml"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const-string v7, ""
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    :goto_0
    if-eq v3, v5, :cond_9

    const/4 v9, 0x2

    const-string/jumbo v10, "semConfJson"

    const-string v11, "newConf"

    const-string v12, "conf"

    const-string v13, "model"

    if-ne v3, v9, :cond_2

    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move-object v7, v3

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v3, v6

    goto/16 :goto_3

    :catch_1
    move-exception p0

    move-object v3, v6

    goto/16 :goto_4

    :cond_1
    :goto_1
    move-object v7, v3

    move v8, v5

    goto/16 :goto_2

    :cond_2
    const/4 v9, 0x4

    if-ne v3, v9, :cond_6

    if-eqz v8, :cond_3

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] model : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] wpa_supplicant.conf : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] WifiConfigStore.xml : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_8

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[readXML] semConfJson.json : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const/4 v9, 0x3

    if-ne v3, v9, :cond_8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v8, :cond_8

    invoke-virtual {v13, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v8, v2

    :cond_8
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v1, v2

    goto :goto_5

    :catch_2
    return v2

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read XML Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_a

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    return v1

    :goto_4
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runtimeException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_a

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    nop

    :catch_6
    :cond_a
    :goto_5
    return v1

    :goto_6
    if-eqz v3, :cond_b

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    :catch_7
    return v2

    :cond_b
    :goto_7
    throw p0
.end method

.method public final restoreSemConf()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "WifiSmartSwitchBackupRestore"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "xmlSemConfJson is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/data/misc/wifi_share_profile//"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlSemConfJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "/data/misc/wifi_share_profile/semconfigurations_restore.json"

    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    const-string v0, "decrypt fail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v2, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readSemConfFile()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/wifi/SemWifiManager;->restoreSemConfigurationsBackupData(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v3, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    const-string v3, "/data/misc/wifi_share_profile/"

    const/4 v7, 0x4

    const-string v8, "WifiSmartSwitchBackupRestore"

    const-string v9, "  mSecurityLevel: "

    const-string v10, " mSource: "

    const-string v11, "FAST_TRACK"

    const-string v12, "SECURITY_LEVEL"

    const-string v13, "SOURCE"

    const-string v14, "SESSION_KEY"

    const/4 v15, 0x0

    const-string v5, "ACTION"

    const/4 v4, 0x1

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v13, "EXPORT_SESSION_TIME"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v12, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v11, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[BACKUP] action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    invoke-static {v5, v6, v8}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    move v6, v15

    :goto_0
    if-ge v6, v2, :cond_1

    aget-object v9, v5, v6

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v15, v4, v7}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->retrieveBackupData()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "wifiFullConfigData.length  "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v5

    const-string v10, " bytes"

    invoke-static {v6, v9, v10, v8}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_b

    array-length v0, v5

    if-nez v0, :cond_2

    const-string v0, "There is no networks to backup"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-virtual {v1, v15, v4, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_2
    const-string v0, "/data/misc/wifi_share_profile/backup.conf"

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string v2, "/data/misc/wifi_share_profile/backup_old.conf"

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string v6, "/data/misc/wifi_share_profile/wifi_wpaconf.xml"

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    const-string v5, "/data/misc/wifi_share_profile/wpa_supplicant.conf"

    invoke-virtual {v1, v15, v2, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    const-string v0, "encrypt old file fail"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a

    goto/16 :goto_27

    :catchall_0
    move-exception v0

    move-object v5, v9

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v5, v9

    goto/16 :goto_4

    :cond_3
    :try_start_3
    const-string v2, "/data/misc/wifi_share_profile/WifiConfigStore.xml"

    invoke-virtual {v1, v15, v0, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    const-string v0, "encrypt new file fail"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backupSemWifiConfiguration()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeXML()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    const-string v0, "makeXML fail"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v4, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_4
    new-instance v2, Lcom/samsung/android/smartswitchfileshare/FileShareHelper;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/smartswitchfileshare/FileShareHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    move v5, v15

    :goto_2
    if-ge v5, v3, :cond_9

    aget-object v6, v0, v5

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v10, v6}, Lcom/samsung/android/smartswitchfileshare/FileShareHelper;->move(Landroid/content/Intent;Ljava/io/File;)I

    move-result v6

    if-nez v6, :cond_8

    const-string v0, "copy file to url failed"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v4, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    invoke-virtual {v1, v15, v15, v15}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v1, v4, v4, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    :goto_4
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup file IO exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v4, v7}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_25

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1a

    goto/16 :goto_27

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v5, :cond_a

    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_a
    throw v0

    :cond_b
    if-ne v0, v2, :cond_c

    goto/16 :goto_27

    :cond_c
    const/4 v0, 0x3

    invoke-virtual {v1, v15, v4, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_d
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo v6, "restore close Exception "

    const-string v4, "  "

    const-string/jumbo v7, "restore File not Found exception: "

    const-string/jumbo v2, "restore file IO exception "

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v15, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v15, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v14, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v13, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v12, v11, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "[RESTORE] action: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v10, v10, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    invoke-static {v0, v9, v8}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mPermissions:[Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v0, :cond_f

    aget-object v11, v9, v10

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v11}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v12, v11}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_e
    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x2

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_12

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-boolean v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mFastTrack:Z

    if-eqz v9, :cond_10

    goto :goto_7

    :cond_10
    const/4 v0, 0x2

    if-ne v5, v0, :cond_11

    const-string v0, "Cancel restore by SmartSwitch"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_11
    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_12
    :goto_7
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string v5, "CONFIG_LIST"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_8

    :cond_13
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_14
    const/4 v5, 0x0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x8

    if-le v9, v10, :cond_15

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v5, "SAMSUNG-"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/smartswitchfileshare/FileShareHelper;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/samsung/android/smartswitchfileshare/FileShareHelper;-><init>(Landroid/content/Context;)V

    :try_start_a
    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v9, v0}, Lcom/samsung/android/smartswitchfileshare/FileShareHelper;->copy(Landroid/content/Intent;Ljava/io/File;)I

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "copy uri to file failed"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_27

    :catch_5
    move-exception v0

    goto/16 :goto_26

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readXML()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "[readXML] xmlNewConf: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  xmlOldConf: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v9, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-static {v5, v9, v8}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    if-ne v0, v5, :cond_17

    const-string/jumbo v0, "xml parsing error"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_17
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v9, "can\'t read file"

    const-wide/16 v10, 0x0

    const-string v12, "/data/misc/wifi_share_profile/restore.conf"

    if-nez v5, :cond_19

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v13, v13, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v0, v13, v10

    if-gtz v0, :cond_18

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v5, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_18
    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0, v12}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    iput-object v5, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v5, 0x1

    goto :goto_a

    :cond_19
    iget-object v5, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v13, v13, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v0, v13, v10

    if-gtz v0, :cond_1a

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v5, v0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_1a
    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0, v12}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    iput-object v9, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    :goto_9
    const/4 v3, -0x1

    goto :goto_a

    :cond_1b
    const/4 v5, 0x1

    goto :goto_9

    :goto_a
    if-ne v0, v3, :cond_1c

    const-string v0, "decrypt fail"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v5, v5}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto/16 :goto_27

    :cond_1c
    :try_start_b
    const-string/jumbo v0, "wpa_supplicant.conf"

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    const-string v3, "Bytes "

    if-eqz v0, :cond_1d

    :try_start_c
    const-string v0, "START restore OLD STYLE"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v10}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v0, v3, v11}, Landroid/net/wifi/WifiManager;->restoreSupplicantBackupData([B[B)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :goto_b
    move-object v3, v5

    move-object v5, v9

    goto/16 :goto_17

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_c
    move-object v5, v10

    goto/16 :goto_22

    :catch_6
    move-exception v0

    move-object v11, v5

    :goto_d
    move-object v5, v10

    goto/16 :goto_19

    :catch_7
    move-exception v0

    move-object v11, v5

    :goto_e
    move-object v5, v10

    goto/16 :goto_1e

    :catchall_4
    move-exception v0

    const/4 v11, 0x0

    :goto_f
    move-object v1, v0

    move-object v5, v11

    goto/16 :goto_22

    :catch_8
    move-exception v0

    const/4 v11, 0x0

    :goto_10
    move-object/from16 v16, v11

    move-object v11, v5

    move-object/from16 v5, v16

    goto/16 :goto_19

    :catch_9
    move-exception v0

    const/4 v11, 0x0

    :goto_11
    move-object/from16 v16, v11

    move-object v11, v5

    move-object/from16 v5, v16

    goto/16 :goto_1e

    :catchall_5
    move-exception v0

    const/4 v11, 0x0

    :goto_12
    move-object v1, v0

    move-object v5, v11

    move-object v9, v5

    goto/16 :goto_22

    :catch_a
    move-exception v0

    const/4 v11, 0x0

    :goto_13
    move-object v9, v11

    move-object v11, v5

    move-object v5, v9

    goto/16 :goto_19

    :catch_b
    move-exception v0

    const/4 v11, 0x0

    :goto_14
    move-object v9, v11

    move-object v11, v5

    move-object v5, v9

    goto/16 :goto_1e

    :catch_c
    move-exception v0

    const/4 v11, 0x0

    :goto_15
    move-object v5, v11

    move-object v9, v5

    goto/16 :goto_19

    :catch_d
    move-exception v0

    const/4 v11, 0x0

    :goto_16
    move-object v5, v11

    move-object v9, v5

    goto/16 :goto_1e

    :cond_1d
    const/4 v11, 0x0

    :try_start_10
    const-string v0, "START restore"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->throwAwayOldStyle()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v3

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->restoreBackupData([B)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_b

    :goto_17
    :try_start_14
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->isSupportedAutoWifi()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restoreSemConf()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto :goto_18

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object v9, v5

    goto/16 :goto_c

    :catch_e
    move-exception v0

    move-object v11, v3

    move-object v9, v5

    goto/16 :goto_d

    :catch_f
    move-exception v0

    move-object v11, v3

    move-object v9, v5

    goto/16 :goto_e

    :cond_1e
    :goto_18
    :try_start_15
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    goto/16 :goto_21

    :catch_10
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :catchall_7
    move-exception v0

    goto/16 :goto_f

    :catch_11
    move-exception v0

    goto/16 :goto_10

    :catch_12
    move-exception v0

    goto/16 :goto_11

    :catchall_8
    move-exception v0

    goto/16 :goto_12

    :catch_13
    move-exception v0

    goto/16 :goto_13

    :catch_14
    move-exception v0

    goto/16 :goto_14

    :catch_15
    move-exception v0

    goto/16 :goto_15

    :catch_16
    move-exception v0

    goto/16 :goto_16

    :goto_19
    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    if-eqz v5, :cond_1f

    :try_start_17
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    goto :goto_1a

    :catch_17
    move-exception v0

    goto :goto_1b

    :cond_1f
    :goto_1a
    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_1d

    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_1d
    move-object v3, v11

    goto :goto_21

    :catchall_9
    move-exception v0

    move-object v1, v0

    goto :goto_22

    :goto_1e
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    if-eqz v5, :cond_21

    :try_start_19
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    goto :goto_1f

    :catch_18
    move-exception v0

    goto :goto_20

    :cond_21
    :goto_1f
    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_18

    goto :goto_1d

    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :goto_21
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_22
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    goto :goto_27

    :goto_22
    if-eqz v5, :cond_23

    :try_start_1a
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    goto :goto_23

    :catch_19
    move-exception v0

    goto :goto_24

    :cond_23
    :goto_23
    if-eqz v9, :cond_24

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_19

    goto :goto_25

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_25
    throw v1

    :goto_26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(III)V

    :catch_1a
    :cond_25
    :goto_27
    return-void
.end method

.method public final sendResponse(III)V
    .locals 3

    const-string v0, "r:"

    const-string v1, ", e:"

    const-string v2, ",rs:0, isCanceled:"

    invoke-static {v0, v1, p2, p3, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    const-string v2, "WifiSmartSwitchBackupRestore"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_1

    const-string p1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const-string p1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    const-string p1, "RESULT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERR_CODE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "REQ_SIZE"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    const-string p2, "SOURCE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    const-string p2, "SmartSwitch"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    const-string p2, "SmartSwitchAgent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
