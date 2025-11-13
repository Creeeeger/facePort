.class public final Landroidx/picker/controller/ViewDataController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public appDataList:Ljava/util/List;

.field public final currentList:Ljava/util/List;

.field public final dataList:Ljava/util/List;

.field public final listeners:Ljava/util/List;

.field public order:Ljava/util/Comparator;

.field public final strategy:Landroidx/picker/controller/strategy/Strategy;


# direct methods
.method public constructor <init>(Landroidx/picker/controller/strategy/Strategy;)V
    .locals 2

    const-string/jumbo v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/controller/ViewDataController;->dataList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "unmodifiableList(dataList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/picker/controller/ViewDataController;->currentList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/controller/ViewDataController;->listeners:Ljava/util/List;

    iput-object p1, p0, Landroidx/picker/controller/ViewDataController;->strategy:Landroidx/picker/controller/strategy/Strategy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getViewData(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/viewdata/ViewData;
    .locals 3

    const-string v0, "appInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/controller/ViewDataController;->dataList:Ljava/util/List;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/picker/model/viewdata/ViewData;

    invoke-interface {v2}, Landroidx/picker/model/viewdata/ViewData;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    return-object p0
.end method

.method public final setAppDataList(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Landroidx/picker/controller/ViewDataController;->appDataList:Ljava/util/List;

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->order:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Landroidx/picker/controller/ViewDataController;->submit(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final submit(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 10

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->strategy:Landroidx/picker/controller/strategy/Strategy;

    invoke-virtual {v0}, Landroidx/picker/controller/strategy/Strategy;->clear$picker_app_release()V

    invoke-virtual {v0, p1, p2}, Landroidx/picker/controller/strategy/Strategy;->convert$picker_app_release(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const-string p2, "elements"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/picker/controller/ViewDataController;->dataList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Landroidx/picker/controller/ViewDataController;->dataList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/picker/controller/ViewDataController;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda3;

    iget-object v0, p0, Landroidx/picker/controller/ViewDataController;->dataList:Ljava/util/List;

    iget-object v1, p2, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iget-object p2, p2, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda3;->f$0:Landroidx/picker/widget/SeslAppPickerView;

    iget-object p2, p2, Landroidx/picker/widget/SeslAppPickerView;->mAdapter:Landroidx/picker/adapter/HeaderFooterAdapter;

    if-eqz p2, :cond_6

    const-string v2, "itemList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Landroidx/picker/adapter/HeaderFooterAdapter;->wrappedAdapter:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submitList list="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    iget-object v2, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p2, Landroidx/picker/adapter/AbsAdapter;->mSectionMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    new-instance v2, Landroid/os/LocaleList;

    new-array v3, v4, [Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v6, v3, v5

    invoke-direct {v2, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_0
    new-instance v3, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v2, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_1

    new-array v8, v4, [Ljava/util/Locale;

    invoke-virtual {v2, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v3, v8}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v4, [Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v6, v2, v5

    invoke-virtual {v3, v2}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v2

    iget-object v3, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p2, Landroidx/picker/adapter/AbsAdapter;->mPositionToSectionIndex:[I

    :goto_2
    iget-object v3, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_5

    iget-object v3, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/picker/model/viewdata/ViewData;

    instance-of v6, v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v6, :cond_4

    check-cast v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v3, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v3}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p2, Landroidx/picker/adapter/AbsAdapter;->mSectionMap:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p2, Landroidx/picker/adapter/AbsAdapter;->mSectionMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p2, Landroidx/picker/adapter/AbsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    aput v6, v3, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p2, Landroidx/picker/adapter/AbsAdapter;->mSections:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/picker/adapter/AbsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object p2, p2, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
