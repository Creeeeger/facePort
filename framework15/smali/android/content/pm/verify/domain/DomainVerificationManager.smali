.class public final Landroid/content/pm/verify/domain/DomainVerificationManager;
.super Ljava/lang/Object;
.source "DomainVerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DOMAIN_SET_ID_INVALID:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNABLE_TO_APPROVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNKNOWN_DOMAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VERIFICATION_REQUEST:Ljava/lang/String; = "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INTERNAL_ERROR_NAME_NOT_FOUND:I = 0x1

.field public static final whitelist STATUS_OK:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/verify/domain/IDomainVerificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    return-void
.end method

.method private blacklist rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;
    .locals 2

    instance-of v0, p1, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object p1

    :cond_2
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0

    :cond_3
    return-object p1
.end method

.method private blacklist validateInput(Ljava/util/UUID;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided domain set cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainSetId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0, p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist getDomainVerificationUserState(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist getOwnersForDomain(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-class v4, Landroid/content/UriRelativeFilterGroupParcel;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Landroid/content/UriRelativeFilterGroup;->parcelsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryValidVerificationPackageNames()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1, v2, p3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, p3, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Landroid/content/UriRelativeFilterGroup;->groupsToParcels(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v1, p1, v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
