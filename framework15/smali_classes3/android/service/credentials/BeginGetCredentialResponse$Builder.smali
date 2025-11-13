.class public final Landroid/service/credentials/BeginGetCredentialResponse$Builder;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/BeginGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/service/credentials/Action;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 2

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    const-string v1, "action must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist addAuthenticationAction(Landroid/service/credentials/Action;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 2

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist addCredentialEntry(Landroid/service/credentials/CredentialEntry;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 2

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/CredentialEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/service/credentials/BeginGetCredentialResponse;
    .locals 7

    new-instance v6, Landroid/service/credentials/BeginGetCredentialResponse;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/service/credentials/BeginGetCredentialResponse;-><init>(Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/content/pm/ParceledListSlice;Landroid/service/credentials/RemoteEntry;Landroid/service/credentials/BeginGetCredentialResponse-IA;)V

    return-object v6
.end method

.method public whitelist setActions(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mActions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setAuthenticationActions(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/Action;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    const-string v0, "authenticationActions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mAuthenticationEntries:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setCredentialEntries(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    const-string v0, "credentialEntries"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mCredentialEntries:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setRemoteCredentialEntry(Landroid/service/credentials/RemoteEntry;)Landroid/service/credentials/BeginGetCredentialResponse$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialResponse$Builder;->mRemoteCredentialEntry:Landroid/service/credentials/RemoteEntry;

    return-object p0
.end method
