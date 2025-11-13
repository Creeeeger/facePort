.class public Landroid/security/keystore/SecureKeyImportUnavailableException;
.super Ljava/security/ProviderException;
.source "SecureKeyImportUnavailableException.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/ProviderException;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/security/KeyStoreException;

    const/16 v1, -0x44

    const-string v2, "Secure Key Import not available"

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
