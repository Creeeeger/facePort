.class final Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecureData"
.end annotation


# static fields
.field private static final blacklist DEFAULT_ITER_COUNT:I = 0x3e8

.field private static final blacklist DEFAULT_KEY_LENGTH:I = 0x80

.field private static final blacklist DEFAULT_SALT_IV_SIZE:I = 0x10


# instance fields
.field private blacklist mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private blacklist mEncryptedData:[B

.field private blacklist mIV:[B

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mSalt:[B

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 1
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1729
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->this$0:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1722
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    .line 1730
    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 1731
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    .line 1732
    const/16 p1, 0x10

    new-array v0, p1, [B

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    .line 1734
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1735
    .local v0, "sr":Ljava/security/SecureRandom;
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    .line 1736
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1737
    return-void
.end method

.method private blacklist generateKey([C)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .param p1, "password"    # [C

    .line 1740
    const/4 v0, 0x0

    .line 1742
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mSalt:[B

    const/16 v3, 0x3e8

    const/16 v4, 0x80

    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1744
    .local v1, "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    const-string v2, "PBKDF2WithHmacSHA1"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1745
    .local v2, "factory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 1746
    .local v3, "key":Ljavax/crypto/SecretKey;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v4

    .line 1747
    invoke-virtual {v1}, Ljavax/crypto/spec/PBEKeySpec;->clearPassword()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    .end local v1    # "pbeKeySpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v2    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    nop

    .line 1751
    return-object v0

    .line 1748
    :catch_0
    move-exception v1

    .line 1749
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to generate the data of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public blacklist clear()V
    .locals 2

    .line 1806
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1807
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    .line 1808
    monitor-exit v0

    .line 1809
    return-void

    .line 1808
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist decryptAndGet([C)[B
    .locals 7
    .param p1, "password"    # [C

    .line 1782
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    if-eqz p1, :cond_1

    .line 1786
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1790
    const/4 v1, 0x0

    .line 1792
    .local v1, "data":[B
    :try_start_1
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->generateKey([C)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 1793
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1794
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1795
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 1799
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    nop

    .line 1801
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 1796
    :catch_0
    move-exception v2

    .line 1797
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SQLiteConnectionPool"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decrypt the data of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to decrypt the data of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .end local p1    # "password":[C
    throw v3

    .line 1787
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .restart local p1    # "password":[C
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please encrypt and save data first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .end local p1    # "password":[C
    throw v1

    .line 1802
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .restart local p1    # "password":[C
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1784
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .end local p1    # "password":[C
    throw v1

    .line 1802
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .restart local p1    # "password":[C
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist encryptAndSave([C[B)V
    .locals 7
    .param p1, "password"    # [C
    .param p2, "data"    # [B

    .line 1755
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1756
    if-eqz p1, :cond_2

    .line 1759
    if-eqz p2, :cond_1

    .line 1762
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    if-eqz v1, :cond_0

    .line 1763
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1767
    :cond_0
    :try_start_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 1768
    .local v1, "sr":Ljava/security/SecureRandom;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1769
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->generateKey([C)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 1770
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1771
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mIV:[B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v3, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1772
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    .end local v1    # "sr":Ljava/security/SecureRandom;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    nop

    .line 1778
    :try_start_2
    monitor-exit v0

    .line 1779
    return-void

    .line 1773
    :catch_0
    move-exception v1

    .line 1774
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mEncryptedData:[B

    .line 1775
    const-string v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not encrypt the data of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to encrpyt the data of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnectionPool$SecureData;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .end local p1    # "password":[C
    .end local p2    # "data":[B
    throw v2

    .line 1760
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .restart local p1    # "password":[C
    .restart local p2    # "data":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data that will be encrypted should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .end local p1    # "password":[C
    .end local p2    # "data":[B
    throw v1

    .line 1757
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .restart local p1    # "password":[C
    .restart local p2    # "data":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .end local p1    # "password":[C
    .end local p2    # "data":[B
    throw v1

    .line 1778
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnectionPool$SecureData;
    .restart local p1    # "password":[C
    .restart local p2    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
