.class public abstract Landroidx/picker/adapter/AbsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataSet:Ljava/util/List;

.field public final mDataSetFiltered:Ljava/util/List;

.field public mFilter:Landroidx/picker/adapter/AbsAdapter$1;

.field public final mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

.field public mOnBindListener:Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;

.field public mOnSearchFilterListener:Landroidx/picker/widget/SeslAppPickerView$OnSearchFilterListener;

.field public mPositionToSectionIndex:[I

.field public mSearchText:Ljava/lang/String;

.field public final mSectionMap:Ljava/util/Map;

.field public mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/picker/model/GroupTitleStyleData;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSet:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mSectionMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mSections:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mFilter:Landroidx/picker/adapter/AbsAdapter$1;

    iput-object p1, p0, Landroidx/picker/adapter/AbsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/picker/adapter/AbsAdapter;->mGroupTitleStyleData:Landroidx/picker/model/GroupTitleStyleData;

    return-void
.end method

.method public static generateFilterHeader(Ljava/lang/String;Ljava/util/List;)Landroidx/picker/model/viewdata/GroupTitleViewData;
    .locals 1

    new-instance v0, Landroidx/picker/adapter/AbsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->map(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Landroidx/picker/model/AppData$GroupAppDataBuilder;

    invoke-direct {v0, p0}, Landroidx/picker/model/AppData$GroupAppDataBuilder;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->label:Ljava/lang/String;

    move-object p0, p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->subLabel:Ljava/lang/String;

    iput-object p1, v0, Landroidx/picker/model/AppData$GroupAppDataBuilder;->mAppInfoDataList:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/picker/model/AppData$GroupAppDataBuilder;->build()Landroidx/picker/model/appdata/GroupAppData;

    move-result-object p0

    new-instance p1, Landroidx/picker/model/viewdata/GroupTitleViewData;

    invoke-direct {p1, p0}, Landroidx/picker/model/viewdata/GroupTitleViewData;-><init>(Landroidx/picker/model/appdata/GroupAppData;)V

    return-object p1
.end method

.method public static inflate(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p0, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAppInfoFilterResult(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/picker/model/viewdata/SearchableViewData;

    invoke-interface {v1}, Landroidx/picker/model/viewdata/SearchableViewData;->getSearchable()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    iget-object v7, p0, Landroidx/picker/adapter/AbsAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroidx/picker/features/search/InitialSearchUtils;->getMatchedStringOffset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    invoke-interface {v1}, Landroidx/picker/model/viewdata/ViewData;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroidx/picker/model/AppInfo;

    if-eqz v3, :cond_7

    invoke-interface {v1}, Landroidx/picker/model/viewdata/ViewData;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/picker/model/AppInfo;

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_7
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mFilter:Landroidx/picker/adapter/AbsAdapter$1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroidx/picker/adapter/AbsAdapter$1;

    invoke-direct {v0, p0}, Landroidx/picker/adapter/AbsAdapter$1;-><init>(Landroidx/picker/adapter/AbsAdapter;)V

    iput-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mFilter:Landroidx/picker/adapter/AbsAdapter$1;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    invoke-interface {p0}, Landroidx/picker/model/viewdata/ViewData;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppPickerViewAdapter"

    return-object p0
.end method

.method public final getPositionForSection(I)I
    .locals 3

    iget-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mSections:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mSectionMap:Ljava/util/Map;

    aget-object p1, v0, p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getSectionForPosition(I)I
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mPositionToSectionIndex:[I

    array-length v0, p0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget p0, p0, p1

    return p0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/AbsAdapter;->mSections:[Ljava/lang/String;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V
    .locals 4

    iget-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/picker/model/viewdata/ViewData;

    iget-object v0, p0, Landroidx/picker/adapter/AbsAdapter;->mOnBindListener:Landroidx/picker/adapter/AppPickerAdapter$OnBindListener;

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/picker/widget/SeslAppPickerView;

    iget-object v1, v0, Landroidx/picker/widget/SeslAppPickerView;->mOnClickEventListener:Landroidx/picker/widget/AppPickerEvent$OnItemClickEventListener;

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    new-instance v2, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;

    move-object v3, p2

    check-cast v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    invoke-direct {v2, v0, v3, p1}, Landroidx/picker/widget/SeslAppPickerView$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerView;Landroidx/picker/model/viewdata/AppInfoViewData;Landroidx/picker/adapter/viewholder/PickerViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    invoke-virtual {p1, p0}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V

    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;->onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Landroidx/picker/adapter/viewholder/PickerViewHolder;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;->onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/picker/adapter/AbsAdapter;->onBindViewHolder(Landroidx/picker/adapter/viewholder/PickerViewHolder;I)V

    :goto_0
    return-void
.end method
