.class public Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;
.super Ljava/lang/Object;
.source "RestrictedReceiverFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$RestrictedAction;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "RestrictedReceiverFilter"

.field private static blacklist sInstance:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;


# instance fields
.field private final blacklist mAllowedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private final blacklist mExemptedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExemptedPackagePrefixNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRestrictedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRestrictedPackagePrefixNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViolationActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mViolationCodePaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$tvmL6cnAA5N9MUyVU0FI8MIyp7o(Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->lambda$getViolationLog$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;
    .locals 2

    sget-object v0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;-><init>()V

    sput-object v1, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    return-object v0
.end method

.method private blacklist isExemptedPackageLocked(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic blacklist lambda$getViolationLog$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    violations:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist loadItemsLocked()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->loadItemsInternalLocked(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addViolationLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restricted action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictedReceiverFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    :cond_1
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist clearItemsLocked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public blacklist enableAndConfigure(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->clearItemsLocked()V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->loadItemsLocked()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->clearItemsLocked()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist filterReceiver(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->isExemptedPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->isRestrictedPackageLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->isAllowedActionLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    monitor-exit v0

    return v1

    :cond_4
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getViolationLog()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Restricted receiver violations:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "No Restricted receiver violations"

    monitor-exit v1

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;Ljava/lang/StringBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist isAllowedActionLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist isRestrictedPackageLocked(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public blacklist loadItemsInternalLocked(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->FW_BR_ALLOW_LIST_WITH_SCPM:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParserWithScpm;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;

    invoke-direct {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;-><init>()V

    :goto_0
    nop

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->parseAllowList()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->parseAllowList(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getPackageMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getRestricedIntent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getAllowedPackageNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getAllowedPackagePrefixNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getRestrictedPackageNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->getRestrictedPackagePrefixNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/samsung/android/core/pm/allowlist/BroadcastReceiverListParser;->isWorkCompChangedEnabled()Z

    move-result v1

    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    if-eq v2, v1, :cond_2

    sput-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PM_WA_WORK_COMP_CHANGED change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestrictedReceiverFilter"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public blacklist logViolationsIfNeeded(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->getViolationLog()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
