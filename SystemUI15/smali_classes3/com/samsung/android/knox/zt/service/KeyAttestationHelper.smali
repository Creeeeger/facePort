.class public Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/zt/service/IKeyAttestationHelper;


# static fields
.field public static final TAG:Ljava/lang/String; = "KeyAttestationHelper"


# instance fields
.field public final mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    return-void
.end method


# virtual methods
.method public attestKey(Ljava/lang/String;[BZ)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->setVerifiableIntegrity(Z)Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->setPackageName(Ljava/lang/String;)Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->setDeviceAttestation(Z)Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    invoke-virtual {v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->build()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->attestDevice(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    invoke-virtual {v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestParameterSpec$Builder;->build()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->attestKey(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p3

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1

    :try_start_0
    const-string p0, "AndroidKeyStore"

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCertificateChain(Ljava/lang/String;[Ljava/security/cert/Certificate;)Z
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    const-string v5, "CERTIFICATE"

    invoke-virtual {p0, v3, v5, v4}, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->writeToPem([BLjava/lang/String;Ljava/io/Writer;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/KeyAttestationHelper;->mAttestationUtils:Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/zt/service/wrapper/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 1

    :try_start_0
    const-string p0, "AndroidKeyStore"

    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljava/security/PrivateKey;

    instance-of p1, p0, Ljava/security/interfaces/ECKey;

    if-eqz p1, :cond_0

    const-string p1, "SHA256withECDSA"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p1, "SHA256withRSA"

    :goto_0
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeToPem([BLjava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object v0

    const-string v1, "-----BEGIN "

    invoke-virtual {p3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string v2, "-----\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p3, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string p0, "\n-----END "

    invoke-virtual {p3, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method
