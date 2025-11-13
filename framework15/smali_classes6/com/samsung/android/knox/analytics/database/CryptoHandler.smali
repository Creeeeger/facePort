.class Lcom/samsung/android/knox/analytics/database/CryptoHandler;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mKeyCache:Ljavax/crypto/SecretKey;

.field private final blacklist mKeystoreAccessWaitLock:Ljava/lang/Object;

.field private final blacklist mKeystoreGenerateAccessLock:Ljava/lang/Object;

.field private blacklist mLegacyKeyCache:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private blacklist decryptInternal([BZZ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;,
            Landroid/os/DeadObjectException;,
            Landroid/security/keystore/KeyStoreConnectException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v1, p1

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v2, v5, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v5, 0x2

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getGCMKey(ZZ)Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sget-object v6, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptInternal(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private blacklist encryptInternal(Ljava/lang/String;Z)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;,
            Landroid/os/DeadObjectException;,
            Landroid/security/keystore/KeyStoreConnectException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getGCMKey(ZZ)Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    const/16 v3, 0xc

    new-array v4, v3, [B

    array-length v5, v2

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    array-length v6, v5

    add-int/2addr v6, v3

    new-array v6, v6, [B

    array-length v7, v5

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v5

    invoke-static {v4, v1, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method

.method private blacklist encryptInternal([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    const/16 v2, 0x10

    new-array v3, v2, [B

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    array-length v6, v4

    add-int/2addr v6, v2

    new-array v6, v6, [B

    array-length v7, v4

    invoke-static {v4, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v4

    invoke-static {v3, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method

.method private blacklist generateCBCKeyInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "CBC"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "PKCS7Padding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v5

    const-string v6, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {v2, v6, v4, v5}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method private blacklist generateGCMKeyInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v5

    const-string v6, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v2, v6, v4, v5}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method private blacklist getCBCKey()Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "getCBCKey() - synthetic_password_knox.analytics.service.compression.cryptokey is not on Keystore"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez v2, :cond_2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "getCBCKey() - null synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getGCMKey(ZZ)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    :goto_0
    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStoreKey(Z)Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, v2

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit v1

    return-object v0

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getKeyStore()Ljava/security/KeyStore;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "NoSuchAlgorithmException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "CertificateException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "KeyStoreException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method private blacklist getKeyStoreKey(Z)Ljavax/crypto/SecretKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.analytics.service.cryptokey"

    if-eqz p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "synthetic_password_knox.analytics.service.cryptokey"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "legacy key"

    goto :goto_1

    :cond_1
    const-string v1, "key"

    :goto_1
    const/4 v3, 0x0

    if-nez v0, :cond_2

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v5, "getKeyStore(): null"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getKeyStoreKey() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not on Keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3
    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v4

    check-cast v4, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez v4, :cond_4

    sget-object v5, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKeyStoreKey() - null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4
    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method blacklist decrypt([BZ)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "decrypt(): KeyStoreConnectException"

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt(): isLegacyKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "decrypt(): DeadObjectException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist decryptBlob([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decryptBlob(): cipherLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v1, p1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    return-object v2
.end method

.method blacklist decryptBulk([B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBlob([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method blacklist deleteAnalyticsLegacyKey()V
    .locals 5

    const-string v0, "com.samsung.android.knox.analytics.service.cryptokey"

    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "deleteAnalyticsLegacyKey()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "deleteAnalyticsLegacyKey(): Key already deleted"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "deleteAnalyticsLegacyKey(): Key deleted. Invalidating cache"

    invoke-static {v0, v3}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "deleteAnalyticsLegacyKey(): KeyStoreException"

    invoke-static {v3, v4}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method

.method blacklist encrypt(Ljava/lang/String;)[B
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;Z)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): BackendBusyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v5, "encrypt(): Interrupted exception"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): KeyStoreConnectException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): UnsupportedEncodingException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): DeadObjectException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    :try_start_4
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;Z)[B

    move-result-object v3
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_4 .. :try_end_4} :catch_5

    return-object v3

    :catch_5
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v5, "encrypt()"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): GeneralSecurityException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): InvalidKeyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    :cond_0
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist encryptBlob([B)[B
    .locals 7

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "encryptBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBlob(): BackendBusyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v5, "encryptBlob(): Interrupted exception"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBlob(): GeneralSecurityException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBlob(): InvalidKeyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    :cond_0
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist encryptBulk(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "encryptBulk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBulkInternal(Ljava/util/List;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): BackendBusyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v5, "encryptBulk(): Interrupted exception"

    invoke-static {v4, v5}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): GeneralSecurityException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): IllegalBlockSizeException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): IOException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): NoSuchPaddingException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): InvalidKeyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): BadPaddingException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_8
    move-exception v2

    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encryptBulk(): NoSuchAlgorithmException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    :cond_0
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist encryptBulkInternal(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method blacklist generateCBCKey()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateCBCKeyInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "generateCBCKey(): GeneralSecurityException"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "generateCBCKey(): IOException"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method blacklist generateGCMKey()Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "generateGCMKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateGCMKeyInternal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "generateGCMKey(): GeneralSecurityException"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "generateGCMKey(): IOException"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    nop

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method blacklist isGCMKeyGenerated()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "isGCMKeyGenerated(): KeyStoreException"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    const/4 v1, 0x0

    return v1
.end method
