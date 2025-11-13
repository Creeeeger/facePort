.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
.super Ljava/lang/Object;
.source "RuntimeManifestPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    }
.end annotation


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "RuntimeManifestPolicies"


# instance fields
.field private final blacklist mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    return-void
.end method

.method private static blacklist getAndSortFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 74
    .local v0, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    :cond_0
    return-object v0
.end method

.method static synthetic blacklist lambda$getAndSortFromMap$1(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I
    .locals 2
    .param p0, "o1"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .param p1, "o2"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$getApplicationPolicies$0(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I
    .locals 2
    .param p0, "o1"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .param p1, "o2"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$sortMap$2(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I
    .locals 2
    .param p0, "o1"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
    .param p1, "o2"    # Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static blacklist sortMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 82
    .local v1, "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    new-instance v2, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    .end local v1    # "policies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addActivityPolicies(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    .local p1, "activities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method public blacklist addApplicationPolicies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "applications":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;"
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    return-void
.end method

.method public blacklist addProviderPolicies(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    .local p1, "providers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 53
    return-void
.end method

.method public blacklist addReceiverPolicies(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 62
    .local p1, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public blacklist addServicePolicies(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    .local p1, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;>;>;"
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public blacklist getActivityPolicies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getApplicationPolicies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getProviderPolicies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getReceiverPolicies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getServicePolicies()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    return-object v0
.end method
