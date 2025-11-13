.class public final Landroidx/picker/adapter/AbsAdapter$1;
.super Landroid/widget/Filter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/picker/adapter/AbsAdapter;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17

    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    iget-object v5, v5, Landroidx/picker/adapter/AbsAdapter;->mDataSet:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    const-string v1, ""

    iput-object v1, v0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/picker/model/viewdata/ViewData;

    instance-of v7, v6, Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Landroidx/picker/model/viewdata/CategoryViewData;

    iget-object v7, v7, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    instance-of v7, v6, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    check-cast v6, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v6, v6, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    iget-object v7, v0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c

    :cond_3
    iget-object v5, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    iput-object v0, v5, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    iget-object v5, v5, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    sget-object v6, Landroidx/picker/features/search/InitialSearchUtils;->KOREAN_RANGE_PATTERN:[Ljava/lang/String;

    const-string v6, "InitialSearchUtils"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "android:query-arg-sql-selection"

    invoke-static {v8, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Landroidx/picker/features/search/InitialSearchUtils;->SCS_PROVIDER_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v0, v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_4

    if-eqz v5, :cond_8

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_4
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "label"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v8, "componentName"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "packageName"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "user"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v0, v11, :cond_7

    if-eq v8, v11, :cond_7

    if-ne v9, v11, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/picker/model/AppInfo;

    invoke-direct {v10, v8, v0, v9}, Landroidx/picker/model/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v8, v0

    goto :goto_5

    :cond_7
    :goto_3
    const-string v10, "Can\'t find columnIndex (%s : %d, %s : %d, %s : %d)"

    const-string v11, "label"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "componentName"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "packageName"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    goto :goto_2

    :goto_5
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_3
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_7
    const-string v5, "Fail to get application query result: "

    invoke-static {v5, v0, v6}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_8
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-class v8, Landroidx/picker/model/viewdata/CategoryViewData;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-class v8, Landroidx/picker/model/viewdata/AppInfoViewData;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_c
    iget-object v4, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {v4, v0, v7}, Landroidx/picker/adapter/AbsAdapter;->getAppInfoFilterResult(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v6, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {v6, v5, v7}, Landroidx/picker/adapter/AbsAdapter;->getAppInfoFilterResult(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    iget-object v7, v7, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f13136c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v4}, Landroidx/picker/adapter/AbsAdapter;->generateFilterHeader(Ljava/lang/String;Ljava/util/List;)Landroidx/picker/model/viewdata/GroupTitleViewData;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/picker/model/viewdata/CategoryViewData;

    new-instance v9, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    iget-object v10, v8, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object v10, v10, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    invoke-direct {v9, v10}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;-><init>(Landroidx/picker/model/AppInfo;)V

    iget-object v10, v8, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object v11, v10, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setLabel(Ljava/lang/String;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v9

    iget-object v10, v10, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v9

    iget-object v10, v8, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v10}, Landroidx/picker/loader/select/SelectableItem;->isSelected()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->setSelected(Z)Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/picker/model/AppData$ListCheckBoxAppDataBuilder;->build()Landroidx/picker/model/AppInfoData;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroidx/picker/model/AppInfoDataImpl;

    new-instance v9, Landroidx/picker/model/viewdata/AppInfoViewData;

    new-instance v12, Landroidx/picker/loader/AppIconFlow;

    new-instance v10, Landroidx/picker/adapter/AbsAdapter$2;

    invoke-direct {v10, v4, v11, v11}, Landroidx/picker/adapter/AbsAdapter$2;-><init>(Landroidx/picker/adapter/AbsAdapter;Landroidx/picker/model/AppInfoData;Landroidx/picker/model/AppInfoDataImpl;)V

    new-instance v13, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v13, v8}, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/model/viewdata/CategoryViewData;)V

    invoke-direct {v12, v10, v13}, Landroidx/picker/loader/AppIconFlow;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlinx/coroutines/flow/Flow;)V

    const/4 v14, -0x1

    const/4 v15, 0x0

    iget-object v13, v8, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Landroidx/picker/model/viewdata/AppInfoViewData;-><init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_d
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    move-object v4, v5

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    iget-object v0, v0, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f13136b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Landroidx/picker/adapter/AbsAdapter;->generateFilterHeader(Ljava/lang/String;Ljava/util/List;)Landroidx/picker/model/viewdata/GroupTitleViewData;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    :goto_c
    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object v2
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/picker/model/viewdata/ViewData;

    instance-of v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v0, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    iget-object v1, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    iget-object v1, v1, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    new-instance v0, Landroidx/picker/adapter/DiffUtilCallback;

    iget-object v1, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Landroidx/picker/adapter/DiffUtilCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    iget-object v1, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p2, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroidx/picker/adapter/NearbyListUpdateCallback;

    invoke-direct {p1, p2}, Landroidx/picker/adapter/NearbyListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter$1;->this$0:Landroidx/picker/adapter/AbsAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
