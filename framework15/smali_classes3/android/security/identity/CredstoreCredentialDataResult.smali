.class Landroid/security/identity/CredstoreCredentialDataResult;
.super Landroid/security/identity/CredentialDataResult;
.source "CredstoreCredentialDataResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;
    }
.end annotation


# instance fields
.field blacklist mDeviceSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

.field blacklist mDeviceSignedResult:Landroid/security/identity/ResultData;

.field blacklist mIssuerSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

.field blacklist mIssuerSignedResult:Landroid/security/identity/ResultData;


# direct methods
.method constructor blacklist <init>(Landroid/security/identity/ResultData;Landroid/security/identity/ResultData;)V
    .locals 1

    invoke-direct {p0}, Landroid/security/identity/CredentialDataResult;-><init>()V

    iput-object p1, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    iput-object p2, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mIssuerSignedResult:Landroid/security/identity/ResultData;

    new-instance v0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    invoke-direct {v0, p1}, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;-><init>(Landroid/security/identity/ResultData;)V

    iput-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    new-instance v0, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    invoke-direct {v0, p2}, Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;-><init>(Landroid/security/identity/ResultData;)V

    iput-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mIssuerSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    return-void
.end method


# virtual methods
.method public whitelist getDeviceMac()[B
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getMessageAuthenticationCode()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceNameSpaces()[B
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getAuthenticatedData()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSignature()[B
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    return-object v0
.end method

.method public whitelist getIssuerSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mIssuerSignedEntries:Landroid/security/identity/CredstoreCredentialDataResult$CredstoreEntries;

    return-object v0
.end method

.method public whitelist getStaticAuthenticationData()[B
    .locals 1

    iget-object v0, p0, Landroid/security/identity/CredstoreCredentialDataResult;->mDeviceSignedResult:Landroid/security/identity/ResultData;

    invoke-virtual {v0}, Landroid/security/identity/ResultData;->getStaticAuthenticationData()[B

    move-result-object v0

    return-object v0
.end method
