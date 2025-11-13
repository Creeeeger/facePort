.class public Lcom/sec/android/iaft/IAFDRSAUtils;
.super Ljava/lang/Object;
.source "IAFDRSAUtils.java"


# static fields
.field public static final blacklist KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final blacklist MAX_DECRYPT_BLOCK:I = 0x80


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist byteArrayToFile([BLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v4, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static blacklist decrypt([BLjava/lang/String;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v1, p0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    sub-int v9, v1, v7

    if-lez v9, :cond_1

    sub-int v9, v1, v7

    const/16 v10, 0x80

    if-le v9, v10, :cond_0

    invoke-virtual {v5, p0, v7, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v9

    goto :goto_1

    :cond_0
    sub-int v9, v1, v7

    invoke-virtual {v5, p0, v7, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v9

    :goto_1
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v6, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v8, v8, 0x1

    mul-int/lit16 v7, v8, 0x80

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v9
.end method

.method public static blacklist decryptBytesToFile([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/iaft/IAFDRSAUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/android/iaft/IAFDRSAUtils;->byteArrayToFile([BLjava/lang/String;)V

    return-void
.end method

.method public static blacklist decryptFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDRSAUtils;->fileToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/iaft/IAFDRSAUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/iaft/IAFDRSAUtils;->byteArrayToFile([BLjava/lang/String;)V

    return-object v2
.end method

.method public static blacklist decryptFileToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDRSAUtils;->fileToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/iaft/IAFDRSAUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist fileToByte(Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :cond_1
    return-object v1
.end method
