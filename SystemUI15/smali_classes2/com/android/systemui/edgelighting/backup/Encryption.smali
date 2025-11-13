.class public final Lcom/android/systemui/edgelighting/backup/Encryption;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mCipher:Ljavax/crypto/Cipher;

.field public static mSalt:[B

.field public static secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field public static securityPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(ILjava/lang/String;)Ljava/io/File;
    .locals 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/decrypt_cocktailbar.xml"

    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/encrypt_cocktailbar.xml"

    invoke-static {p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, p1

    move-object v2, v1

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object v1, p1

    move-object v2, v1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    move-object v1, p1

    move-object v2, v1

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, p0}, Lcom/android/systemui/edgelighting/backup/Encryption;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 p1, 0x400

    :try_start_3
    new-array v3, p1, [B

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto/16 :goto_7

    :catch_2
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_5

    :cond_2
    move-object p1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v0

    goto/16 :goto_7

    :catch_4
    move-exception v1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v7

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v7

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v1, p1

    goto :goto_7

    :catch_6
    move-exception p0

    move-object v1, p1

    goto :goto_4

    :catch_7
    move-exception p0

    move-object v1, p1

    goto :goto_5

    :cond_3
    move-object v1, p1

    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v2, :cond_a

    :goto_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_7
    if-eqz v2, :cond_a

    goto :goto_3

    :catchall_4
    move-exception p0

    goto :goto_7

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    :goto_6
    return-object v0

    :goto_7
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_d
    throw p0
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 7

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    const-string v2, "AES"

    const/16 v3, 0x10

    if-ne p1, v0, :cond_0

    new-array p1, v3, [B

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    sget-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v4, Lcom/android/systemui/edgelighting/backup/Encryption;->mSalt:[B

    const/16 v5, 0x3e8

    const/16 v6, 0x100

    invoke-direct {v3, p1, v4, v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v0, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    new-array v0, v3, [B

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object p1, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, Ljavax/crypto/CipherInputStream;

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/edgelighting/backup/Encryption;->securityPassword:Ljava/lang/String;

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

    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->mCipher:Ljavax/crypto/Cipher;

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/android/systemui/edgelighting/backup/Encryption;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method
