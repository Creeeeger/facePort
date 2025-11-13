.class public Lcom/samsung/ucm/keystore/UcmKeyStoreKeyFactory;
.super Ljava/lang/Object;
.source "UcmKeyStoreKeyFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPrivateKey(Ljava/lang/String;[B)Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;
    .locals 2

    new-instance v0, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0}, Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/ucm/keystore/UcmKeyStoreECPrivateKey;

    invoke-direct {v1, p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreECPrivateKey;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;

    invoke-direct {v1, p0, p1}, Lcom/samsung/ucm/keystore/UcmKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method
