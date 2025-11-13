.class public Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$AesCbcIso9797M2;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AesCbcIso9797M2"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "AES/CBC/ISO9797-M2"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;-><init>(ILjava/lang/String;)V

    return-void
.end method
