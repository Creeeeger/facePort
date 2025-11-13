.class public Lcom/samsung/android/knox/ucm/plugin/service/Signature;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SERVICE:Ljava/lang/String; = "Signature"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final provider:Ljava/security/Provider;

.field public spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Signature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    const-string v0, "Signature"

    const-class v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ucm/plugin/service/Signature;

    invoke-direct {v1, v0, p1, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Signature;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

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
.method public getErrorStatus()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public initSign(Ljava/security/PrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method

.method public sign()[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;->engineSign()[B

    move-result-object p0

    return-object p0
.end method

.method public update([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;->engineUpdate([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Signature;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;->engineUpdate([BII)V

    return-void
.end method
