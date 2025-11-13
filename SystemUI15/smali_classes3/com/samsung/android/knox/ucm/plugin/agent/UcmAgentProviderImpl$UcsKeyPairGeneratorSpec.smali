.class public final Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final mKeySize:I

.field private final mKeystoreAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeySize:I

    return-void
.end method


# virtual methods
.method public getKeySize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeySize:I

    return p0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method
