.class public final Landroid/security/identity/CredentialDataRequest$Builder;
.super Ljava/lang/Object;
.source "CredentialDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredentialDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mData:Landroid/security/identity/CredentialDataRequest;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/identity/CredentialDataRequest;

    invoke-direct {v0}, Landroid/security/identity/CredentialDataRequest;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/security/identity/CredentialDataRequest;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    return-object v0
.end method

.method public whitelist setAllowUsingExhaustedKeys(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExhaustedKeys:Z

    return-object p0
.end method

.method public whitelist setAllowUsingExpiredKeys(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mAllowUsingExpiredKeys:Z

    return-object p0
.end method

.method public whitelist setDeviceSignedEntriesToRequest(Ljava/util/Map;)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/security/identity/CredentialDataRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mDeviceSignedEntriesToRequest:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist setIncrementUseCount(Z)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-boolean p1, v0, Landroid/security/identity/CredentialDataRequest;->mIncrementUseCount:Z

    return-object p0
.end method

.method public whitelist setIssuerSignedEntriesToRequest(Ljava/util/Map;)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/security/identity/CredentialDataRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mIssuerSignedEntriesToRequest:Ljava/util/Map;

    return-object p0
.end method

.method public whitelist setReaderSignature([B)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mReaderSignature:[B

    return-object p0
.end method

.method public whitelist setRequestMessage([B)Landroid/security/identity/CredentialDataRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredentialDataRequest$Builder;->mData:Landroid/security/identity/CredentialDataRequest;

    iput-object p1, v0, Landroid/security/identity/CredentialDataRequest;->mRequestMessage:[B

    return-object p0
.end method
