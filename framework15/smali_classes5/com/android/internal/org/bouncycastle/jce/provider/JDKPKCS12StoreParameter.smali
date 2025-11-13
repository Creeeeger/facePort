.class public Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;
.source "JDKPKCS12StoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private blacklist outputStream:Ljava/io/OutputStream;

.field private blacklist protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private blacklist useDEREncoding:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public whitelist test-api getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public blacklist isUseDEREncoding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return v0
.end method

.method public blacklist setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public blacklist setPassword([C)V
    .locals 1

    new-instance v0, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v0, p1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public blacklist setProtectionParameter(Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-void
.end method

.method public blacklist setUseDEREncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->useDEREncoding:Z

    return-void
.end method
