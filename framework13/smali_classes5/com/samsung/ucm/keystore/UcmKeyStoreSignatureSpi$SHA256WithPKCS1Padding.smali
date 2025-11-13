.class public final Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA256WithPKCS1Padding;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.source "UcmKeyStoreSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA256WithPKCS1Padding"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 179
    const-string v0, "SHA256withRSA"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;-><init>(Ljava/lang/String;)V

    .line 180
    return-void
.end method
