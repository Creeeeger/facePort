.class public final Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UcsKeyPairGeneratorSpec"
.end annotation


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
