.class public final Lcom/android/systemui/notification/NotificationBackupRestoreManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mCipher:Ljavax/crypto/Cipher;

.field public static mSalt:[B

.field public static mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

.field public static mSecurityPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public static createBackupFile(Ljava/lang/String;ILjava/util/List;)I
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create backup file basePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifBnRManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notification_policy.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "/encrypt_notification_policy.xml"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "basePath="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", folder created last"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/notification_policy.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const-string v2, "copyBackupFile Exception!! fout:"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "copyBackupFile path="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    :try_start_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    invoke-interface {v4, p2}, Landroid/app/INotificationManager;->setRestoreBlockListForSS(Ljava/util/List;)V

    goto :goto_2

    :catch_2
    move-exception p2

    goto :goto_6

    :cond_3
    :goto_2
    invoke-interface {v4, v6}, Landroid/app/INotificationManager;->getBackupPayload(I)[B

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x0

    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v7, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v4, v7

    goto :goto_4

    :catch_4
    move-exception p2

    move-object v4, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_5
    move-exception p2

    :goto_3
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :goto_4
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_5
    throw p0

    :goto_6
    const-string v2, "copyBackupFile Failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_7
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long p2, v2, v7

    const/4 v2, 0x1

    if-gtz p2, :cond_6

    const-string p2, "Backup file size error"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v6

    goto :goto_8

    :cond_6
    move p2, v2

    :goto_8
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, p1}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->encrypt(Ljava/io/File;Ljava/lang/String;I)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string p0, "file delete!!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    goto :goto_a

    :cond_7
    :goto_9
    move v6, p2

    goto :goto_b

    :goto_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b
    xor-int/lit8 p0, v6, 0x1

    return p0
.end method

.method public static decrypt(ILjava/lang/String;)Ljava/io/File;
    .locals 9

    const-string v0, "NotifBnRManager"

    new-instance v1, Ljava/io/File;

    const-string v2, "/decrypt_notification_policy.xml"

    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/encrypt_notification_policy.xml"

    invoke-static {p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "decrypt: file is not found.encrypt_notification_policy.xml"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catchall_0
    move-exception p0

    move-object v2, p1

    move-object v3, v2

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v2, p1

    move-object v3, v2

    goto/16 :goto_3

    :catch_1
    move-exception p0

    move-object v2, p1

    move-object v3, v2

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3, p0}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 p1, 0x400

    :try_start_3
    new-array v4, p1, [B

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto/16 :goto_6

    :catch_2
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto/16 :goto_4

    :cond_2
    move-object p1, p0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v0

    goto/16 :goto_6

    :catch_4
    move-exception v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v8

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v2

    move-object v2, v8

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v2, p1

    goto :goto_6

    :catch_6
    move-exception p0

    move-object v2, p1

    goto :goto_3

    :catch_7
    move-exception p0

    move-object v2, p1

    goto :goto_4

    :cond_3
    move-object v2, p1

    move-object v3, v2

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v3, :cond_a

    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v3, :cond_a

    goto :goto_2

    :catchall_4
    move-exception p0

    goto :goto_6

    :goto_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    :goto_5
    return-object v1

    :goto_6
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_d
    throw p0
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 3

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSalt:[B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, Ljavax/crypto/CipherInputStream;

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static encrypt(Ljava/io/File;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "NotifBnRManager"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, p1

    move-object v1, p2

    goto/16 :goto_a

    :catch_0
    move-exception p0

    move-object p2, p1

    move-object v1, p2

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object p2, p1

    move-object v1, p2

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {p0, p2}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object p1

    const/16 p2, 0x400

    new-array v1, p2, [B

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    move-object p2, p1

    :goto_2
    move-object p1, v2

    goto/16 :goto_a

    :catch_2
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    move-object p2, p1

    :goto_3
    move-object p1, v2

    goto :goto_6

    :catch_3
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    move-object p2, p1

    :goto_4
    move-object p1, v2

    goto :goto_8

    :cond_1
    move-object p2, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p2, p1

    move-object v1, p2

    goto :goto_2

    :catch_4
    move-exception p0

    move-object p2, p1

    move-object v1, p2

    goto :goto_3

    :catch_5
    move-exception p0

    move-object p2, p1

    move-object v1, p2

    goto :goto_4

    :cond_2
    move-object p0, p1

    move-object p2, p0

    :goto_5
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    :goto_6
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v1, :cond_9

    :goto_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_a

    :goto_8
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    :goto_9
    return-void

    :goto_a
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_c
    throw p0
.end method

.method public static encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 3

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    sput-object v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSalt:[B

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object p1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    sget-object v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, Ljavax/crypto/CipherOutputStream;

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 6

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSalt:[B

    const/16 v4, 0x3e8

    const/16 v5, 0x100

    invoke-direct {v2, v0, v3, v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, v2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static loadRestoreFile(Ljava/io/File;Ljava/util/List;)Z
    .locals 7

    const-string v0, "loadRestoreFile failed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " filename="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotifBnRManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " filename path="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int p0, v4

    new-array v1, p0, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v3, v1

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    move-object v1, v3

    :goto_2
    const-string p0, "notification"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p0, p1}, Landroid/app/INotificationManager;->setRestoreBlockListForSS(Ljava/util/List;)V

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_3
    invoke-interface {p0, v1, v0}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v0, 0x1

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return v0

    :goto_6
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_7
    throw p0
.end method

.method public static sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, " action="

    const-string v1, " resultCode="

    const-string v2, " errorCode="

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requiredSize=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifBnRManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "RESULT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ERR_CODE"

    invoke-virtual {p3}, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->getValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "REQ_SIZE"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "SOURCE"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_0

    const-string p1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string/jumbo p0, "sendBroadcast. "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecurityPassword:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->update([B)V

    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mCipher:Ljavax/crypto/Cipher;

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->mSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method


# virtual methods
.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p3

    const-string/jumbo v1, "resultCode="

    const-string/jumbo v2, "start backup basePath="

    const-string v3, " source="

    const-string v4, "NotifBnRManager"

    move-object v9, p4

    invoke-static {v2, p3, v3, p4, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v3, "/"

    invoke-static {p3, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static/range {p7 .. p7}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    move/from16 v3, p5

    move-object/from16 v5, p8

    invoke-static {v0, v3, v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->createBackupFile(Ljava/lang/String;ILjava/util/List;)I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    sget-object v0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v2

    :goto_0
    move-object v5, p1

    move-object v6, p2

    move-object v9, p4

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v8, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v6, "com.samsung.android.intent.action.RESPONSE_BACKUP_NOTIFICATION"

    const/4 v7, 0x1

    move-object v5, p1

    move-object v9, p4

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v10}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "start restore basePath="

    const-string v0, " source="

    const-string v1, "NotifBnRManager"

    invoke-static {p0, p3, v0, p4, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v0, "/"

    invoke-static {p3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-static {p6}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->streamCrypt(Ljava/lang/String;)V

    invoke-static {p5, p3}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->decrypt(ILjava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-static {p3, p7}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->loadRestoreFile(Ljava/io/File;Ljava/util/List;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    sget-object p0, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const/4 p3, 0x1

    :goto_0
    move-object v3, p0

    move v2, p3

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    sget-object v3, Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;

    const-string v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_NOTIFICATION"

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/notification/NotificationBackupRestoreManager;->sendResponse(Landroid/content/Context;Ljava/lang/String;ILcom/android/systemui/notification/NotificationBackupRestoreManager$ERR_CODE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
