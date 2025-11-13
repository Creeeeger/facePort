.class public Landroid/app/appfunctions/AppFunctionManagerHelper;
.super Ljava/lang/Object;
.source "AppFunctionManagerHelper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist buildFilerRuntimeMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "functionId"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:\"%s\""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildFilerStaticMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "functionId"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:\"%s\""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;
    .locals 2

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist getAppFunctionRuntimeMetadataSearchSpecByPackageName(Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;
    .locals 2

    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getRuntimeSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setVerbatimSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getEffectiveEnabledStateFromSearchResults(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/appsearch/SearchResult;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "App function not found."

    if-nez v0, :cond_3

    nop

    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SearchResult;

    invoke-virtual {v0}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    nop

    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/SearchResult;

    invoke-virtual {v1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Landroid/app/appsearch/GenericDocument;->getPropertyLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    nop

    invoke-interface {p0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/SearchResult;

    invoke-virtual {v3}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v3

    const-string v4, "enabledByDefault"

    invoke-virtual {v3, v4}, Landroid/app/appsearch/GenericDocument;->getPropertyBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/appsearch/AppSearchManager;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4, p1, p0, p3}, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p3, v0}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic blacklist lambda$isAppFunctionEnabled$0(Landroid/os/OutcomeReceiver;Landroid/app/appsearch/AppSearchResult;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionManagerHelper;->getEffectiveEnabledStateFromSearchResults(Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    nop

    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$isAppFunctionEnabled$1(Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchResult;)V
    .locals 3

    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/app/appfunctions/AppFunctionManagerHelper;->failedResultToException(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p4}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/GlobalSearchSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :try_start_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/appsearch/GlobalSearchSession;

    invoke-static {v1, p1, p2}, Landroid/app/appfunctions/AppFunctionManagerHelper;->searchJoinedStaticWithRuntimeAppFunctions(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchResults;

    move-result-object v1

    new-instance v2, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/app/appfunctions/AppFunctionManagerHelper$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Landroid/app/appsearch/SearchResults;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Landroid/app/appsearch/GlobalSearchSession;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Landroid/app/appsearch/GlobalSearchSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static blacklist searchJoinedStaticWithRuntimeAppFunctions(Landroid/app/appsearch/GlobalSearchSession;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchResults;
    .locals 4

    nop

    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionManagerHelper;->getAppFunctionRuntimeMetadataSearchSpecByPackageName(Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/JoinSpec$Builder;

    const-string v2, "appFunctionStaticMetadataQualifiedId"

    invoke-direct {v1, v2}, Landroid/app/appsearch/JoinSpec$Builder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/app/appfunctions/AppFunctionManagerHelper;->buildFilerRuntimeMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/appsearch/JoinSpec$Builder;->setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/appsearch/JoinSpec$Builder;->build()Landroid/app/appsearch/JoinSpec;

    move-result-object v1

    new-instance v2, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v2}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v3, "android"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    invoke-static {p1}, Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;->getStaticSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/appsearch/SearchSpec$Builder;->setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/appsearch/SearchSpec$Builder;->setVerbatimSearchEnabled(Z)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v2

    nop

    invoke-static {p2}, Landroid/app/appfunctions/AppFunctionManagerHelper;->buildFilerStaticMetadataByFunctionIdQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/app/appsearch/GlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    move-result-object v3

    return-object v3
.end method
