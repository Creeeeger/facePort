.class public final Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

.field public static final MEDIA_TYPE_ITEM_LIST:[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public static volatile instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;


# instance fields
.field public final clickableTypeSet$delegate:Lkotlin/Lazy;

.field public final context:Landroid/content/Context;

.field public final dividerPosition:Landroid/util/SparseIntArray;

.field public final externalItemCount:I

.field public final usageInfoMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$Companion;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array/range {v1 .. v6}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->MEDIA_TYPE_ITEM_LIST:[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->context:Landroid/content/Context;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->usageInfoMap:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$clickableTypeSet$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager$clickableTypeSet$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->clickableTypeSet$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->externalItemCount:I

    return-void
.end method


# virtual methods
.method public final getUsageInfoList(I)Ljava/util/List;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->usageInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isInternalStorage(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_19

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->MEDIA_TYPE_ITEM_LIST:[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x65

    if-eq p1, v1, :cond_2

    const/16 v1, 0x66

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array {v1}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AsUsageInfoManager : createUsageInfoList()] unsupported domainType("

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->GOOGLE_APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array {v1, v3}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    array-length v3, v2

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->externalItemCount:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_5

    :cond_3
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array {v1, v3}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$FloatingFeature;->SUPPORT_TRASH:Z

    if-eqz v1, :cond_18

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TRASH:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_4
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array {v1}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$FloatingFeature;->SUPPORT_TRASH:Z

    if-eqz v1, :cond_18

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TRASH:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SYSTEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_FILES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    filled-new-array {v3, v4, v5}, [Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/samsung/android/settings/analyzestorage/presenter/feature/SepFeatures$FloatingFeature;->SUPPORT_TRASH:Z

    if-eqz v3, :cond_6

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TRASH:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/analyzestorage/StorageManageHelper;->isSupportCapacityOfSubUsers(I)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->context:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    const/4 v6, 0x0

    const-string/jumbo v7, "sUserInfoChecker"

    if-eqz v5, :cond_17

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getUserInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v1, :cond_18

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v5, :cond_16

    const-string/jumbo v5, "user"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v5, "null cannot be cast to non-null type android.os.UserManager"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    const-string v5, "getUserProfiles(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->dividerPosition:Landroid/util/SparseIntArray;

    array-length v8, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v5, p1, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v5, :cond_15

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v9, :cond_14

    instance-of v10, v1, Ljava/util/Collection;

    if-eqz v10, :cond_b

    move-object v10, v1

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_2

    :cond_b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v10

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getWorkProfileUserId(Landroid/content/Context;)I

    move-result v11

    if-ne v10, v11, :cond_c

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->WORK_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoManager;->sUserInfoChecker:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    if-eqz v4, :cond_13

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getMyUserId()I

    move-result v6

    if-ne v6, v5, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getWorkProfileUserId(Landroid/content/Context;)I

    move-result v6

    if-ne v5, v6, :cond_12

    goto :goto_4

    :cond_12
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->OTHER_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_14
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_18
    :goto_5
    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/AsUsageInfoManager;->usageInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    :cond_19
    return-object v0
.end method
