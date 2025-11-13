.class public abstract Landroid/security/identity/CredentialDataResult;
.super Ljava/lang/Object;
.source "CredentialDataResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredentialDataResult$Entries;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getDeviceMac()[B
.end method

.method public abstract whitelist getDeviceNameSpaces()[B
.end method

.method public whitelist getDeviceSignature()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getDeviceSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
.end method

.method public abstract whitelist getIssuerSignedEntries()Landroid/security/identity/CredentialDataResult$Entries;
.end method

.method public abstract whitelist getStaticAuthenticationData()[B
.end method
