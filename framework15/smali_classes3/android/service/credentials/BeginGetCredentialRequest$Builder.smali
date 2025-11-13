.class public final Landroid/service/credentials/BeginGetCredentialRequest$Builder;
.super Ljava/lang/Object;
.source "BeginGetCredentialRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/BeginGetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBeginGetCredentialOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mBeginGetCredentialOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addBeginGetCredentialOption(Landroid/service/credentials/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;
    .locals 1

    const-string v0, "beginGetCredentialOption must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mBeginGetCredentialOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/service/credentials/BeginGetCredentialRequest;
    .locals 4

    iget-object v0, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mBeginGetCredentialOptions:Ljava/util/List;

    const-string v1, "beginGetCredentialOptions"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v0, Landroid/service/credentials/BeginGetCredentialRequest;

    iget-object v1, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v2, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mBeginGetCredentialOptions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/service/credentials/BeginGetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;Landroid/service/credentials/BeginGetCredentialRequest-IA;)V

    return-object v0
.end method

.method public whitelist setBeginGetCredentialOptions(Ljava/util/List;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/credentials/BeginGetCredentialOption;",
            ">;)",
            "Landroid/service/credentials/BeginGetCredentialRequest$Builder;"
        }
    .end annotation

    const-string v0, "getBeginCredentialOptions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mBeginGetCredentialOptions:Ljava/util/List;

    return-object p0
.end method

.method public whitelist setCallingAppInfo(Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    return-object p0
.end method
