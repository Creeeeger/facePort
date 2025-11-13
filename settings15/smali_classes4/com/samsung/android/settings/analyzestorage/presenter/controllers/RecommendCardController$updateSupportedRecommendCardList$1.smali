.class final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u000c\u0008\u0001\u0010\u0004*\u0006\u0012\u0002\u0008\u00030\u0005*\u00020\u0006H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;",
        "S",
        "Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->label:I

    if-eqz v3, :cond_1

    if-ne v3, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v5

    const-wide/32 v7, 0x3b9aca00

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    iget-object v5, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v11, "calling_package"

    const-string v12, "com.android.settings"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "recommendType"

    invoke-virtual {v10, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v12, "content://myfiles/"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string v13, "GET_RECOMMEND"

    invoke-static {v11, v12, v13, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ContentResolverWrapper;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_d

    const-string/jumbo v11, "size"

    const-wide/16 v12, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v13, "path"

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "type"

    invoke-virtual {v10, v15, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v4, "name"

    invoke-virtual {v10, v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "bucket_id"

    invoke-virtual {v10, v7, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v15, :cond_c

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->extensionToMediaFileTypeMap:Ljava/util/HashMap;

    if-eqz v4, :cond_3

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-static {v4, v10}, Lkotlin/text/StringsKt___StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;C)I

    move-result v10

    const/16 v15, 0x2e

    invoke-static {v4, v15}, Lkotlin/text/StringsKt___StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;C)I

    move-result v15

    if-ge v10, v15, :cond_3

    if-lez v15, :cond_3

    add-int/2addr v15, v1

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "substring(...)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v10, v14

    :goto_1
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "toUpperCase(...)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "SCC"

    invoke-virtual {v15, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    if-eqz v4, :cond_4

    new-instance v15, Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    invoke-static {v15}, Lcom/samsung/android/settings/analyzestorage/presenter/mediafile/SccFileType;->getSccMimeType(Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v8, "application/vnd.samsung.scc"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v15}, Lcom/samsung/android/settings/analyzestorage/presenter/mediafile/SccFileType;->getSccMimeType(Lcom/samsung/android/settings/analyzestorage/presenter/utils/fileutils/FileWrapper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v14

    :goto_3
    const-string v8, "getMimeTypeFromSCCFile(...)"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "application/vnd.samsung.scc.storyalbum"

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->fileTypeToMediaFileTypeMap:Landroid/util/SparseArray;

    sget v8, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SCC:I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;

    goto :goto_4

    :cond_6
    const-string v8, "application/vnd.samsung.scc.pinall"

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->fileTypeToMediaFileTypeMap:Landroid/util/SparseArray;

    sget v8, Lcom/samsung/android/settings/analyzestorage/data/constant/FileType;->SCC_SCRAP:I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    move-object/from16 v16, v1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    if-nez v16, :cond_9

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->extensionToMediaFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;

    :cond_9
    if-nez v16, :cond_a

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager;->extensionToMediaFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;

    :cond_a
    move-object/from16 v1, v16

    if-eqz v1, :cond_b

    iget v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/MediaFileManager$MediaFileInfo;->fileType:I

    move v15, v1

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :cond_c
    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileSizeCard:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->pathCard:Ljava/util/HashMap;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileTypeCard:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->nameCard:Ljava/util/HashMap;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v8, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->bucketIdCard:Ljava/util/HashMap;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "recommendType: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", fileType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bucketId = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmp-long v1, v11, v7

    if-lez v1, :cond_d

    iget-object v1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    const-wide/16 v7, 0x0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v5, "mContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->cloudList:Ljava/util/ArrayList;

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/AsRecommendCardInfoManager;->appList:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->Companion:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl$Companion;

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->instance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    monitor-enter v1

    :try_start_0
    sget-object v5, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->instance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;

    if-nez v5, :cond_10

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;

    invoke-direct {v5, v4}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->instance:Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_10
    :goto_7
    monitor-exit v1

    :goto_8
    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/ArchiveAppInfoRepositoryImpl;->getAppInfoList()Ljava/util/List;

    move-result-object v1

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "getArchiveApps() ] - archiveAppList.size = "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->archiveAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v8, v7

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->getPackageAppByte()J

    move-result-wide v6

    add-long/2addr v8, v6

    iget-object v6, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->archiveAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->getPackageAppByte()J

    move-result-wide v10

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "getArchiveApps() ] - packageName = "

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", packageAppByte = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->numberApps:I

    iget-object v1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileSizeCard:Ljava/util/HashMap;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->getCloudStatus()V

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->getTopInstalledAppSize()V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1$1;

    iget-object v4, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x1

    iput v4, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController$updateSupportedRecommendCardList$1;->label:I

    invoke-static {v1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_13

    return-object v2

    :cond_13
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_c
    monitor-exit v1

    throw v0
.end method
