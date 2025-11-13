.class public Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$PKCS1Padding;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS1Padding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 327
    const/4 v0, 0x1

    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;-><init>(ILjava/lang/String;)V

    .line 328
    return-void
.end method
