.class public Landroid/security/keystore2/AndroidKeyStoreEdECPrivateKey;
.super Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.source "AndroidKeyStoreEdECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/EdECKey;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getParams()Ljava/security/spec/NamedParameterSpec;
    .locals 1

    sget-object v0, Ljava/security/spec/NamedParameterSpec;->ED25519:Ljava/security/spec/NamedParameterSpec;

    return-object v0
.end method
