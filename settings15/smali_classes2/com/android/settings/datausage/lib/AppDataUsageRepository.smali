.class public final Lcom/android/settings/datausage/lib/AppDataUsageRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final currentUserId:I

.field public final networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

.field public secureusage:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/NetworkTemplate;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    const-string p4, "context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "template"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->currentUserId:I

    new-instance p2, Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    invoke-direct {p2, p1, p3}, Lcom/android/settings/datausage/lib/NetworkStatsRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    iput-object p2, p0, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->networkStatsRepository:Lcom/android/settings/datausage/lib/NetworkStatsRepository;

    return-void
.end method

.method public static final getAppUidList(Landroid/util/SparseBooleanArray;)Ljava/util/List;
    .locals 1

    const-string v0, "uids"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;

    invoke-direct {v0, p0}, Landroidx/core/util/SparseBooleanArrayKt$keyIterator$1;-><init>(Landroid/util/SparseBooleanArray;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object v0, Lcom/android/settings/datausage/lib/AppDataUsageRepository$Companion$getAppUidList$1;->INSTANCE:Lcom/android/settings/datausage/lib/AppDataUsageRepository$Companion$getAppUidList$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->distinct(Lkotlin/sequences/TransformingSequence;)Lkotlin/sequences/DistinctSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final accumulate(ILandroid/util/SparseArray;Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;ILjava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/AppItem;

    invoke-direct {v0, p1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput p4, v0, Lcom/android/settingslib/AppItem;->category:I

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget p1, p3, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->uid:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    iget-wide p4, v0, Lcom/android/settingslib/AppItem;->total:J

    iget-wide p2, p3, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->bytes:J

    add-long/2addr p4, p2

    iput-wide p4, v0, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p4

    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p4

    if-ne p1, p4, :cond_1

    iget-wide p4, p0, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->secureusage:J

    add-long/2addr p4, p2

    iput-wide p4, p0, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->secureusage:J

    :cond_1
    return-void
.end method

.method public final getAppPercent(Ljava/lang/Integer;Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/android/settingslib/AppItem;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "buckets"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    iget-object v0, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.os.UserManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v9

    check-cast v2, Ljava/lang/Iterable;

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->handleInterleavedSettingsForPrivateSpace()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserProperties;->getShowInQuietMode()I

    move-result v3

    if-ne v3, v12, :cond_1

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    move v13, v12

    :cond_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "AppDataUsageRepository"

    if-eqz v0, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;

    iget v5, v15, Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "getPackageManager(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "com.att.iqi"

    invoke-virtual {v0, v2, v13}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 v0, -0x1

    :goto_3
    if-ne v5, v0, :cond_5

    const-string v0, "skip entry for iqi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v2, -0x5

    const/16 v3, 0x176f

    const/16 v10, 0x1388

    const/16 v13, 0xbb7

    const/16 v12, 0xb54

    const/4 v1, -0x4

    if-nez v0, :cond_12

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    const/16 v16, 0x2

    if-nez v0, :cond_b

    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    if-eq v5, v1, :cond_a

    const/16 v0, -0x64

    if-eq v5, v0, :cond_a

    const/16 v0, 0x425

    if-eq v5, v0, :cond_a

    if-lt v5, v12, :cond_7

    if-le v5, v13, :cond_a

    :cond_7
    if-lt v5, v10, :cond_8

    if-gt v5, v3, :cond_8

    goto :goto_5

    :cond_8
    if-ne v5, v2, :cond_9

    move v1, v5

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_9
    move/from16 v4, v16

    const/16 v1, 0x3e8

    goto :goto_9

    :cond_a
    :goto_5
    move v1, v5

    :goto_6
    move/from16 v4, v16

    goto :goto_9

    :cond_b
    :goto_7
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->currentUserId:I

    if-eq v4, v0, :cond_d

    rsub-int v1, v4, -0x7d0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v2, v8

    move-object v3, v15

    move v12, v4

    move v4, v10

    move v10, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->accumulate(ILandroid/util/SparseArray;Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;ILjava/util/ArrayList;)V

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    :goto_8
    const/16 v10, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_d
    move v10, v5

    :cond_e
    invoke-static {v10}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v10}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v5

    goto :goto_5

    :cond_f
    move v5, v10

    goto :goto_5

    :cond_10
    move v12, v4

    iget-object v0, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    rsub-int v0, v12, -0x7d0

    move v1, v0

    goto :goto_4

    :goto_9
    move-object/from16 v0, p0

    move-object v2, v8

    move-object v3, v15

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->accumulate(ILandroid/util/SparseArray;Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;ILjava/util/ArrayList;)V

    goto :goto_8

    :cond_12
    move v0, v4

    move v4, v5

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v0, v5, :cond_c

    if-eq v4, v1, :cond_c

    if-eq v4, v2, :cond_c

    const/16 v0, 0x3e8

    if-eq v4, v0, :cond_c

    if-gt v4, v13, :cond_13

    if-gt v12, v4, :cond_13

    goto :goto_8

    :cond_13
    if-gt v4, v3, :cond_14

    if-gt v10, v4, :cond_14

    goto :goto_8

    :cond_14
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v8

    move-object v3, v15

    move v4, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->accumulate(ILandroid/util/SparseArray;Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;ILjava/util/ArrayList;)V

    goto :goto_8

    :cond_15
    iget-object v5, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_8

    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_8

    :cond_17
    if-eq v4, v1, :cond_c

    if-eq v4, v2, :cond_c

    const/16 v1, 0x3e8

    if-eq v4, v1, :cond_c

    if-gt v4, v13, :cond_18

    if-gt v12, v4, :cond_18

    goto :goto_8

    :cond_18
    if-gt v4, v3, :cond_19

    if-gt v10, v4, :cond_19

    goto/16 :goto_8

    :cond_19
    rsub-int v1, v0, -0x7d0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v8

    move-object v3, v15

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->accumulate(ILandroid/util/SparseArray;Lcom/android/settings/datausage/lib/NetworkStatsRepository$Companion$Bucket;ILjava/util/ArrayList;)V

    goto/16 :goto_8

    :cond_1a
    iget-object v0, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    const-class v2, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/net/NetworkPolicyManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    if-ge v3, v2, :cond_21

    aget v5, v0, v3

    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    :cond_1b
    :goto_b
    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_d

    :cond_1c
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v13

    if-nez v13, :cond_1d

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v13

    if-nez v13, :cond_1b

    :cond_1d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v13

    if-eqz v13, :cond_1e

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-nez v12, :cond_1e

    goto :goto_b

    :cond_1e
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/AppItem;

    if-nez v12, :cond_1f

    new-instance v12, Lcom/android/settingslib/AppItem;

    invoke-direct {v12, v5}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-wide v10, v12, Lcom/android/settingslib/AppItem;->total:J

    invoke-virtual {v12, v5}, Lcom/android/settingslib/AppItem;->addUid(I)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v12, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v8, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/settingslib/AppItem;->restricted:Z

    :try_start_1
    iget-object v10, v6, Lcom/android/settings/datausage/lib/AppDataUsageRepository;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_20

    const/4 v14, 0x0

    goto :goto_c

    :cond_20
    const/4 v14, 0x0

    :try_start_2
    aget-object v4, v5, v14

    :goto_c
    iput-object v4, v12, Lcom/android/settingslib/AppItem;->restrictedPackageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_1
    const/4 v14, 0x0

    :catch_2
    const-string v4, "Attempt to read from null array Exception"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    const/4 v14, 0x0

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_f

    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    iget-wide v1, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_e
    move-object v4, v1

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    iget-wide v1, v1, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_23

    goto :goto_e

    :cond_24
    :goto_f
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_10

    :cond_25
    move-wide v0, v10

    :goto_10
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v7, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/AppItem;

    cmp-long v5, v0, v10

    if-lez v5, :cond_26

    iget-wide v5, v4, Lcom/android/settingslib/AppItem;->total:J

    const/16 v7, 0x64

    int-to-long v7, v7

    mul-long/2addr v5, v7

    div-long/2addr v5, v0

    long-to-int v5, v5

    goto :goto_12

    :cond_26
    move v5, v14

    :goto_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_27
    return-object v2
.end method
