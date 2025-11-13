.class public final Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA1withECGDSA;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.source "UcmKeyStoreSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA1withECGDSA"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const-string v0, "SHA1withECGDSA"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
