.class public final Landroid/credentials/CreateCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "CreateCredentialRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CreateCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlwaysSendAppInfoToProvider:Z

.field private final blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private final blacklist mCredentialData:Landroid/os/Bundle;

.field private blacklist mIsSystemProviderRequired:Z

.field private blacklist mOrigin:Ljava/lang/String;

.field private blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    const-string/jumbo v0, "type must not be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mType:Ljava/lang/String;

    const-string v0, "credentialData must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mCredentialData:Landroid/os/Bundle;

    const-string v0, "candidateQueryData must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mCandidateQueryData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/credentials/CreateCredentialRequest;
    .locals 10

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mType:Ljava/lang/String;

    const-string/jumbo v1, "type must not be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    new-instance v0, Landroid/credentials/CreateCredentialRequest;

    iget-object v3, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mType:Ljava/lang/String;

    iget-object v4, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mCredentialData:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mCandidateQueryData:Landroid/os/Bundle;

    iget-boolean v6, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mIsSystemProviderRequired:Z

    iget-boolean v7, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    iget-object v8, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mOrigin:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/credentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;Landroid/credentials/CreateCredentialRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAlwaysSendAppInfoToProvider(Z)Landroid/credentials/CreateCredentialRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    return-object p0
.end method

.method public whitelist setIsSystemProviderRequired(Z)Landroid/credentials/CreateCredentialRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mIsSystemProviderRequired:Z

    return-object p0
.end method

.method public whitelist setOrigin(Ljava/lang/String;)Landroid/credentials/CreateCredentialRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/CreateCredentialRequest$Builder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method
