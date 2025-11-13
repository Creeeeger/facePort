.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "OpenSSHPublicKeySpec.java"


# static fields
.field private static final blacklist allowedTypes:[Ljava/lang/String;


# instance fields
.field private final blacklist type:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string/jumbo v0, "ssh-ed25519"

    const-string/jumbo v1, "ssh-dss"

    const-string/jumbo v2, "ssh-rsa"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 5

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int v1, v2, v0

    array-length v3, p1

    if-ge v1, v3, :cond_3

    add-int v1, v2, v0

    invoke-static {p1, v2, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    const-string v3, "ecdsa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->allowedTypes:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognised public key type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "invalid public key blob: type field longer than blob"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "OpenSSH"

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/OpenSSHPublicKeySpec;->type:Ljava/lang/String;

    return-object v0
.end method
