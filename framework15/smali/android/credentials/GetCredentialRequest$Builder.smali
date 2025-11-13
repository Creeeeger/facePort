.class public final Landroid/credentials/GetCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "GetCredentialRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/GetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlwaysSendAppInfoToProvider:Z

.field private blacklist mCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mData:Landroid/os/Bundle;

.field private blacklist mOrigin:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    const-string v0, "data must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist addCredentialOption(Landroid/credentials/CredentialOption;)Landroid/credentials/GetCredentialRequest$Builder;
    .locals 2

    iget-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    const-string v1, "credentialOption must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialOption;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/credentials/GetCredentialRequest;
    .locals 8

    iget-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    const-string v1, "credentialOptions"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iget-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v0, Landroid/credentials/GetCredentialRequest;

    iget-object v3, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/GetCredentialRequest$Builder;->mData:Landroid/os/Bundle;

    iget-boolean v5, p0, Landroid/credentials/GetCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    iget-object v6, p0, Landroid/credentials/GetCredentialRequest$Builder;->mOrigin:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/credentials/GetCredentialRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;ZLjava/lang/String;Landroid/credentials/GetCredentialRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAlwaysSendAppInfoToProvider(Z)Landroid/credentials/GetCredentialRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/credentials/GetCredentialRequest$Builder;->mAlwaysSendAppInfoToProvider:Z

    return-object p0
.end method

.method public whitelist setCredentialOptions(Ljava/util/List;)Landroid/credentials/GetCredentialRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialOption;",
            ">;)",
            "Landroid/credentials/GetCredentialRequest$Builder;"
        }
    .end annotation

    const-string v0, "credentialOptions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/credentials/GetCredentialRequest$Builder;->mCredentialOptions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setOrigin(Ljava/lang/String;)Landroid/credentials/GetCredentialRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/GetCredentialRequest$Builder;->mOrigin:Ljava/lang/String;

    return-object p0
.end method
