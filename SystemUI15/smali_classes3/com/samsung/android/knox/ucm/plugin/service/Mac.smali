.class public Lcom/samsung/android/knox/ucm/plugin/service/Mac;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SERVICE:Ljava/lang/String; = "Mac"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final provider:Ljava/security/Provider;

.field public spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->provider:Ljava/security/Provider;

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/Mac;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    const-string v0, "Mac"

    const-class v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ucm/plugin/service/Mac;

    invoke-direct {v1, v0, p1, p0}, Lcom/samsung/android/knox/ucm/plugin/service/Mac;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;Ljava/security/Provider;Ljava/lang/String;)V

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
.method public doFinal()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;->engineDoFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public getErrorStatus()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public init(Ljavax/crypto/SecretKey;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/Mac;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;->engineUpdate([BII)V

    return-void
.end method
