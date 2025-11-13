.class public final Landroid/credentials/selection/GetCredentialProviderData$Builder;
.super Ljava/lang/Object;
.source "GetCredentialProviderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/GetCredentialProviderData;
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

.field private blacklist mProviderFlattenedComponentName:Ljava/lang/String;

.field private blacklist mRemoteEntry:Landroid/credentials/selection/Entry;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/credentials/selection/GetCredentialProviderData;
    .locals 7

    new-instance v6, Landroid/credentials/selection/GetCredentialProviderData;

    iget-object v1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    iget-object v4, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    iget-object v5, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/GetCredentialProviderData;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v6
.end method

.method public blacklist setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mActionChips:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/AuthenticationEntry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mAuthenticationEntries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/GetCredentialProviderData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mCredentialEntries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/GetCredentialProviderData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/selection/GetCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object p0
.end method
