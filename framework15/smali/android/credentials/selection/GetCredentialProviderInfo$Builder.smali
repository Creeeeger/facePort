.class public final Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
.super Ljava/lang/Object;
.source "GetCredentialProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/GetCredentialProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticationEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProviderName:Ljava/lang/String;

.field private blacklist mRemoteEntry:Landroid/credentials/selection/Entry;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mCredentialEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mActionChips:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mAuthenticationEntries:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mProviderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/credentials/selection/GetCredentialProviderInfo;
    .locals 7

    new-instance v6, Landroid/credentials/selection/GetCredentialProviderInfo;

    iget-object v1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mProviderName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mCredentialEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mActionChips:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mAuthenticationEntries:Ljava/util/List;

    iget-object v5, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/GetCredentialProviderInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v6
.end method

.method public whitelist setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mActionChips:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mAuthenticationEntries:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderInfo$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mCredentialEntries:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/GetCredentialProviderInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderInfo$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object p0
.end method
