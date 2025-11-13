.class public Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SERVICE:Ljava/lang/String; = "KeyStore"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final provider:Ljava/security/Provider;

.field public spiImpl:Ljava/security/KeyStoreSpi;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    const-string v0, "KeyStore"

    const-class v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;

    invoke-direct {v1, v0, p1, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "spi == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "algorithm == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "provider == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public aliases()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public deleteEntry(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    return-object p0
.end method

.method public getErrorStatus()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    check-cast p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method public load(Ljava/io/InputStream;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void
.end method

.method public load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-void
.end method

.method public setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyStore;->spiImpl:Ljava/security/KeyStoreSpi;

    check-cast p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method
