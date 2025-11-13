.class public Lcom/samsung/ucm/keystore/UcmKeyStoreECPrivateKey;
.super Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
.source "UcmKeyStoreECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECKey;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EC"

    invoke-direct {p0, p1, v0}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "EC"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreECPrivateKey;->mECParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method
