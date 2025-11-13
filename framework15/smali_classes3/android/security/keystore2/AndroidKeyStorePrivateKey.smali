.class public Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;
.source "AndroidKeyStorePrivateKey.java"

# interfaces
.implements Ljava/security/PrivateKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-void
.end method
