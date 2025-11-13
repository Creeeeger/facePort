.class Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;
.super Ljava/lang/Object;
.source "CredentialProviderInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/credentials/CredentialProviderInfoFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderGenerator"
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDisableSystemAppVerificationForTests:Z

.field private final blacklist mPp:Landroid/app/admin/PackagePolicy;

.field private final blacklist mProviderFilter:I

.field private final blacklist mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/admin/PackagePolicy;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    iput-object p1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    iput-boolean p3, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mDisableSystemAppVerificationForTests:Z

    iput p4, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    return-void
.end method

.method private blacklist addProvider(Landroid/credentials/CredentialProviderInfo;)V
    .locals 3

    nop

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->isProviderAllowedWithFilter(Landroid/credentials/CredentialProviderInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v1

    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->isPackageAllowed(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist isPackageAllowed(ZLjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    invoke-virtual {v0}, Landroid/app/admin/PackagePolicy;->getPolicyType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mPp:Landroid/app/admin/PackagePolicy;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/app/admin/PackagePolicy;->isPackageAllowed(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method private blacklist isProviderAllowedWithFilter(Landroid/credentials/CredentialProviderInfo;)Z
    .locals 4

    iget v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    iget v0, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mProviderFilter:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public blacklist addSystemProviders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addProvider(Landroid/credentials/CredentialProviderInfo;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist addUserProviders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/credentials/CredentialProviderInfo;

    invoke-virtual {v1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->addProvider(Landroid/credentials/CredentialProviderInfo;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist getProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/credentials/CredentialProviderInfoFactory$ProviderGenerator;->mServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
