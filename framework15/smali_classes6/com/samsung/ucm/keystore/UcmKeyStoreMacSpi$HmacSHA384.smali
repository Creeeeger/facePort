.class public Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi$HmacSHA384;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi;
.source "UcmKeyStoreMacSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA384"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const-string v0, "HmacSHA384"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
