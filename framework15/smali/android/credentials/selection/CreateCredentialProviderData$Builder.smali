.class public final Landroid/credentials/selection/CreateCredentialProviderData$Builder;
.super Ljava/lang/Object;
.source "CreateCredentialProviderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/CreateCredentialProviderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mProviderFlattenedComponentName:Ljava/lang/String;

.field private blacklist mRemoteEntry:Landroid/credentials/selection/Entry;

.field private blacklist mSaveEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mSaveEntries:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/credentials/selection/CreateCredentialProviderData;
    .locals 4

    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderData;

    iget-object v1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mProviderFlattenedComponentName:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mSaveEntries:Ljava/util/List;

    iget-object v3, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    invoke-direct {v0, v1, v2, v3}, Landroid/credentials/selection/CreateCredentialProviderData;-><init>(Ljava/lang/String;Ljava/util/List;Landroid/credentials/selection/Entry;)V

    return-object v0
.end method

.method public blacklist setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;
    .locals 0

    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mRemoteEntry:Landroid/credentials/selection/Entry;

    return-object p0
.end method

.method public blacklist setSaveEntries(Ljava/util/List;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/selection/Entry;",
            ">;)",
            "Landroid/credentials/selection/CreateCredentialProviderData$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->mSaveEntries:Ljava/util/List;

    return-object p0
.end method
