.class Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;
.super Ljava/lang/Object;
.source "KnoxGuardVaultManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CryptoManager"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    .line 2131
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist ecryptWithAES256CBC([B[B[B)[B
    .locals 5
    .param p1, "plaintext"    # [B
    .param p2, "key"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 2169
    const/4 v0, 0x0

    .line 2171
    .local v0, "ciphertext":[B
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2172
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 2173
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2174
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 2179
    .end local v1    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 2176
    :catch_0
    move-exception v1

    .line 2177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2178
    iget-object v2, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    const/4 v3, -0x8

    const-string v4, "ecryptWithAES256CBC"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$mthrowException(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;ILjava/lang/String;)V

    .line 2181
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist ecryptWithServerPubKey([B[B)[B
    .locals 7
    .param p1, "plaintext"    # [B
    .param p2, "serverCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 2147
    const/4 v0, 0x0

    .line 2149
    .local v0, "ciphertext":[B
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 2150
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2151
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2152
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 2154
    .local v4, "key":Ljava/security/PublicKey;
    const-string v5, "RSA/ECB/OAEPWithSHA1AndMGF1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 2155
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2156
    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 2161
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "key":Ljava/security/PublicKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 2158
    :catch_0
    move-exception v1

    .line 2159
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2160
    iget-object v2, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    const/4 v3, -0x8

    const-string v4, "ecryptWithServerPubKey"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$mthrowException(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;ILjava/lang/String;)V

    .line 2163
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist getRandom([B)V
    .locals 1
    .param p1, "buf"    # [B

    .line 2219
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2220
    .local v0, "srand":Ljava/security/SecureRandom;
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2221
    return-void
.end method

.method public blacklist hmacSha256([B[B)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 2186
    const-string v0, "HmacSHA256"

    const/4 v1, 0x0

    .line 2187
    .local v1, "result":[B
    const-string v2, "HmacSHA256"

    .line 2190
    .local v2, "HMAC_SHA256_ALGORITHM":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 2191
    .local v3, "mac":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 2192
    invoke-virtual {v3, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 2197
    .end local v3    # "mac":Ljavax/crypto/Mac;
    goto :goto_0

    .line 2194
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2196
    iget-object v3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    const/4 v4, -0x8

    const-string v5, "hmacSha256"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$mthrowException(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;ILjava/lang/String;)V

    .line 2199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public blacklist sha256(Ljava/lang/String;)[B
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
        }
    .end annotation

    .line 2204
    const/4 v0, 0x0

    .line 2206
    .local v0, "output":[B
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 2207
    .local v1, "md":Ljava/security/MessageDigest;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 2208
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2212
    .end local v1    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 2209
    :catch_0
    move-exception v1

    .line 2210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2211
    iget-object v2, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$CryptoManager;->this$0:Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;

    const/4 v3, -0x8

    const-string/jumbo v4, "sha256"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$mthrowException(Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;ILjava/lang/String;)V

    .line 2214
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist verifyCertChain([B)Z
    .locals 2
    .param p1, "serverCert"    # [B

    .line 2136
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$sfgetmVkm()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2137
    const-string v0, "KgvManager"

    const-string v1, "Error from VaultKeeper Manager is null object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const/4 v0, 0x0

    return v0

    .line 2141
    :cond_0
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;->-$$Nest$sfgetmVkm()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->verifyCertificate([B)Z

    move-result v0

    return v0
.end method
