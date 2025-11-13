.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

.field public itemList:Ljava/util/List;

.field public final listMarginManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "owner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager$Companion;

    sget-object p2, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    if-nez p2, :cond_0

    monitor-enter p1

    :try_start_0
    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    invoke-direct {p2}, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;-><init>()V

    sput-object p2, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->listMarginManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCustomViewText(II)Ljava/util/List;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    const-string/jumbo v5, "null cannot be cast to non-null type com.samsung.android.settings.analyzestorage.presenter.controllers.filelist.ManageStorageListItemHandler<@[FlexibleNullability] com.samsung.android.settings.analyzestorage.domain.entity.AppInfo?>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ManageStorageListItemHandler;

    iget-object v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ManageStorageListItemHandler$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v7

    new-array v4, v2, [J

    aput-wide v5, v4, v1

    aput-wide v7, v4, v0

    aget-wide v5, v4, v1

    long-to-int v5, v5

    aget-wide v6, v4, v0

    if-lez v5, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    iget-object v4, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v8, "manageStorageSubPageInitialEntry"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v3, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCustomViewText() ] Initial Entry - Set initialEntrySize to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsSubListAdapter"

    invoke-static {v4, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, ""

    const/4 v4, 0x5

    const/4 v8, 0x4

    if-eq p1, v8, :cond_1

    if-eq p1, v4, :cond_1

    move-object p2, v2

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v6, v7, v11}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v10, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, p2, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v3, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p2, "getString(...)"

    if-eq p1, v8, :cond_3

    if-eq p1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    const p1, 0x7f1403e3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    const p1, 0x7f140446

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v3
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;

    iget p2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v2, 0x7f0801b9

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const p2, 0x7f120008

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->getCustomViewText(II)Ljava/util/List;

    move-result-object p0

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->mainText:Landroid/widget/TextView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->subText:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto/16 :goto_b

    :cond_2
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_3
    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    const v0, 0x7f0801e2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    const/4 p2, 0x4

    const v0, 0x7f120011

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->getCustomViewText(II)Ljava/util/List;

    move-result-object p0

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->mainText:Landroid/widget/TextView;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->subText:Landroid/widget/TextView;

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->sortByItem:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->updateSortByText()V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortBy:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;I)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060064

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByOrder:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByIcon:Landroid/widget/ImageView;

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_9
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByText:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string/jumbo p2, "sort_order_unused_apps"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f0801d4

    goto :goto_3

    :cond_b
    const p1, 0x7f0801d8

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByOrder:Landroid/widget/ImageView;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;->sortByOrder:Landroid/widget/ImageView;

    if-eqz p1, :cond_1a

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout$initSortByType$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    :cond_d
    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_13

    :try_start_0
    move-object v5, v0

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const-string v7, "getApplicationInfo(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string/jumbo v8, "semGetApplicationIconForIconTray(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_e

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v7, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appIcon:Landroid/widget/ImageView;

    if-nez v7, :cond_f

    goto :goto_4

    :cond_f
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :goto_4
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v6, "getApplicationLabel(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->mainText:Landroid/widget/TextView;

    if-nez v6, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getSize()J

    move-result-wide v5

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedSize:Landroid/util/LruCache;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_11

    if-eqz v4, :cond_11

    invoke-static {v1, v5, v6, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz v8, :cond_13

    iget-object v4, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->subText:Landroid/widget/TextView;

    if-nez v4, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_13
    :goto_6
    iget-object v4, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_15

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$bindItemViewHolder$2$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    const v6, 0x7f1403e5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->mainText:Landroid/widget/TextView;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_7

    :cond_14
    const/4 v6, 0x0

    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Landroid/widget/Button;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setAccessibilityForWidget(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, p2, :cond_16

    move p0, v3

    goto :goto_8

    :cond_16
    move p0, v1

    :goto_8
    xor-int/2addr p0, v3

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->divider:Landroid/view/View;

    if-nez p2, :cond_17

    goto :goto_a

    :cond_17
    if-eqz p0, :cond_18

    goto :goto_9

    :cond_18
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_19

    goto :goto_b

    :cond_19
    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1a
    :goto_b
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f060061

    const/4 v1, 0x0

    if-nez p2, :cond_2

    const p2, 0x7f0d0073

    invoke-static {p1, p2, p1, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v1, 0x7f0a0b0f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x7f0a0b11

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->mainText:Landroid/widget/TextView;

    const v3, 0x7f0a0b12

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->subText:Landroid/widget/TextView;

    const v4, 0x7f0a0ea6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    iput-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListHeaderViewHolder;->sortByItem:Lcom/samsung/android/settings/analyzestorage/ui/widget/SortByItemLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v3, :cond_a

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_2
    const p2, 0x7f0d0074

    invoke-static {p1, p2, p1, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->listMarginManager:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    move v1, v4

    :cond_3
    xor-int/2addr v1, v4

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIconStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIconStub:Landroid/view/ViewStub;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initAppInfoIcon$1;

    invoke-direct {v2, p2}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initAppInfoIcon$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIconStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_5
    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;

    invoke-direct {v1, p2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter$initItemClickListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initClickListener$1;

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder$initClickListener$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f060064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object v1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->mainText:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->subText:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->divider:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->verticalDivider:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_9
    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_a
    :goto_1
    return-object p2
.end method

.method public final updateItems(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckableItemList:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    iget-object v4, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckableItemList:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    iget p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->selectedAppPackageNameList:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->itemList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->selectedAppPackageNameList:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
