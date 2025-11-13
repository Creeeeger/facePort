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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    return-void
.end method

.method private static blacklist getAndSortFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method

.method static synthetic blacklist lambda$getAndSortFromMap$1(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$getApplicationPolicies$0(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$sortMap$2(Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;)I
    .locals 2

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

    new-instance v2, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mActivities:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mApplications:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mProviders:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mReceivers:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

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

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->sortMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;->mServices:Ljava/util/Map;

    return-object v0
.end method
