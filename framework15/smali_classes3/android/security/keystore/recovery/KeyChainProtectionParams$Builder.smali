.class public Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
.super Ljava/lang/Object;
.source "KeyChainProtectionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/recovery/KeyChainProtectionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;-><init>(Landroid/security/keystore/recovery/KeyChainProtectionParams-IA;)V

    iput-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fgetmUserSecretType(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fputmUserSecretType(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fgetmLockScreenUiFormat(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fgetmKeyDerivationParams(Landroid/security/keystore/recovery/KeyChainProtectionParams;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fgetmSecret(Landroid/security/keystore/recovery/KeyChainProtectionParams;)[B

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fputmSecret(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)V

    :cond_1
    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    return-object v0
.end method

.method public whitelist setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fputmKeyDerivationParams(Landroid/security/keystore/recovery/KeyChainProtectionParams;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    return-object p0
.end method

.method public whitelist setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fputmLockScreenUiFormat(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public whitelist setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {v0, p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fputmSecret(Landroid/security/keystore/recovery/KeyChainProtectionParams;[B)V

    return-object p0
.end method

.method public whitelist setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    .locals 2

    iget-object v0, p0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->mInstance:Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->-$$Nest$fputmUserSecretType(Landroid/security/keystore/recovery/KeyChainProtectionParams;Ljava/lang/Integer;)V

    return-object p0
.end method
