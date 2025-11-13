.class public abstract Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sCipher:Ljavax/crypto/Cipher;

.field public static sSalt:[B

.field public static sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

.field public static sSecurityPassword:Ljava/lang/String;


# direct methods
.method public static decrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    const-string v0, "EncryptionUtil"

    const-string v1, "decrypt() ] Fail : Encrypted file is invalid. Path : "

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-lez p2, :cond_4

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_1

    :try_start_2
    const-string p2, "decrypt() ] inputStream is null"

    invoke-static {v0, p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    const/16 p2, 0x400

    new-array v1, p2, [B

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_5

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_5

    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    if-eqz p0, :cond_3

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    throw p1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_8

    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "decrypt() ] Exception e : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_8
    return-object v3
.end method

.method public static decryptStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "EncryptionUtil"

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const-string p0, "decryptStream() ] Security Level read error"

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/16 p1, 0x10

    new-array p1, p1, [B

    sput-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSalt:[B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_1

    const-string p0, "decryptStream() ] EncryptSalt read error"

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, Ljavax/crypto/CipherInputStream;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .locals 7

    const-string v0, "EncryptionUtil"

    const-string v1, "encrypt() ] Fail : Source file is invalid. Path : "

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p2}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x400

    :try_start_2
    new-array v1, p2, [B

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_6
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_7

    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception e : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v2
.end method

.method public static encryptStream(Ljava/io/OutputStream;I)Ljava/io/OutputStream;
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

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

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSalt:[B

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    :goto_0
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, Ljavax/crypto/CipherOutputStream;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public static generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecurityPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSalt:[B

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

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecurityPassword:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

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

.method public static streamCrypt(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecurityPassword:Ljava/lang/String;

    :try_start_0
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecurityPassword:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

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

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sCipher:Ljavax/crypto/Cipher;

    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p0, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object p0, Lcom/samsung/android/settings/analyzestorage/external/bnr/EncryptionUtils;->sSecretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "streamCrypt() ] e : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EncryptionUtil"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
