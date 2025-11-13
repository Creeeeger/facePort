.class public Lcom/samsung/ucm/keystore/UcmKeyStoreKey;
.super Ljava/lang/Object;
.source "UcmKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field protected blacklist mAlgorithm:Ljava/lang/String;

.field private final blacklist mAlias:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    if-eqz v3, :cond_6

    return v1

    :cond_5
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    iget-object v4, v2, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/ucm/keystore/UcmKeyStoreKey;->mAlias:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    return v1
.end method
