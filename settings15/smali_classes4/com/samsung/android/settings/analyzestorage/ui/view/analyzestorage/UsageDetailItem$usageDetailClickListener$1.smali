.class public final Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string/jumbo v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$usageDetailClickListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    if-eqz v2, :cond_1e

    const v4, 0x7f14040d

    if-ne p1, v4, :cond_2

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_2
    const v4, 0x7f140406

    if-ne p1, v4, :cond_3

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_3
    const v4, 0x7f140447

    if-ne p1, v4, :cond_4

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_4
    const v4, 0x7f1403ea

    if-ne p1, v4, :cond_5

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_5
    const v4, 0x7f1403f0

    if-ne p1, v4, :cond_6

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->COMPRESSED:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_6
    const v4, 0x7f1403fe

    if-ne p1, v4, :cond_7

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_7
    const v4, 0x7f140408

    if-ne p1, v4, :cond_8

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APK:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_8
    const v4, 0x7f14043b

    if-ne p1, v4, :cond_9

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    goto :goto_2

    :cond_9
    const v4, 0x7f140449

    if-ne p1, v4, :cond_1d

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->WORK_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    :goto_2
    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->domainType:I

    iget-boolean p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->isShowMoreItem:Z

    iget-object v5, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->UiItemTypeMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eqz v4, :cond_f

    if-eq v4, v1, :cond_d

    const/16 v6, 0x65

    if-eq v4, v6, :cond_b

    if-eqz p0, :cond_a

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewOnedriveCloudExpandToSAEventId:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_a
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewOnedriveCloudCollapseToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_b
    if-eqz p0, :cond_c

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewGoogleCloudExpandToSAEventId:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_c
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewGoogleCloudCollapseToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    if-eqz p0, :cond_e

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewSdCardExpandToSAEventId:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_e
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewSdCardCollapseToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_f
    if-eqz p0, :cond_10

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewInternalExpandToSAEventId:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_3

    :cond_10
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewInternalCollapseToSAEventId:Landroid/util/SparseArray;

    invoke-virtual {p0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_3
    if-eqz p0, :cond_11

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_11
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->APPS:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    iget v5, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    if-ne p1, p0, :cond_13

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;

    invoke-interface {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;->getActivity()Landroid/app/Activity;

    move-result-object v3

    :goto_4
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda4;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_9

    :cond_13
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->SECURE_FOLDER:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const-string v6, "domainType"

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-eq p1, p0, :cond_1a

    sget-object v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->WORK_PROFILE:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    if-ne p1, v9, :cond_14

    goto :goto_6

    :cond_14
    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v2, "from_usage_type"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.myfiles.VIEW_ANALYZE_STORAGE_SUB_LIST"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.myfiles"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v1, :cond_18

    if-eq p1, v0, :cond_19

    const/4 v1, 0x5

    if-eq p1, v8, :cond_17

    if-eq p1, v7, :cond_16

    if-eq p1, v1, :cond_15

    move v7, v0

    goto :goto_5

    :cond_15
    const/16 v7, 0x8

    goto :goto_5

    :cond_16
    const/4 v7, 0x6

    goto :goto_5

    :cond_17
    move v7, v1

    goto :goto_5

    :cond_18
    move v7, v8

    :cond_19
    :goto_5
    const-string p1, "SELECTOR_CATEGORY_TYPE"

    invoke-virtual {p0, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda4;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_9

    :cond_1a
    :goto_6
    if-ne p1, p0, :cond_1b

    goto :goto_7

    :cond_1b
    move v7, v8

    :goto_7
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.samsung.android.settings.analyzestorage.ENTER_SUB_USER"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "instanceId"

    invoke-virtual {p0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p1

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_8

    :cond_1c
    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;

    invoke-interface {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;->getActivity()Landroid/app/Activity;

    move-result-object v3

    :goto_8
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda4;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_9

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported OverView Items"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_9
    return-void
.end method
