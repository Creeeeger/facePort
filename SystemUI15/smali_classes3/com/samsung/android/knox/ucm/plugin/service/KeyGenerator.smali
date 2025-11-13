.class public Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SERVICE:Ljava/lang/String; = "KeyGenerator"


# instance fields
.field public final algorithm:Ljava/lang/String;

.field public final provider:Ljava/security/Provider;

.field public spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->algorithm:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->provider:Ljava/security/Provider;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    const-string v0, "KeyGenerator"

    const-class v1, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/knox/ucm/plugin/service/UcmSpiUtil;->getSpi(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;

    invoke-direct {v1, v0, p1, p0}, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

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
.method public generateKey()Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public getErrorStatus()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;->getErrorCode()I

    move-result p0

    return p0
.end method

.method public init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/service/KeyGenerator;->spiImpl:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;->setProperty(Landroid/os/Bundle;)V

    return-void
.end method
