.class public final Landroidx/apppickerview/widget/AbsAdapter$5;
.super Landroid/widget/Filter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/apppickerview/widget/AbsAdapter;


# direct methods
.method public constructor <init>(Landroidx/apppickerview/widget/AbsAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const-string p1, ""

    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    iput-object p0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iput-object p1, v1, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mDataSet:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    iget-object v3, v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    const-string v4, "all_apps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p1, p1, Landroidx/apppickerview/widget/AbsAdapter;->mSearchText:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/apppickerview/widget/AbsAdapter;->mHideAllApps:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/apppickerview/widget/AbsAdapter;->mHideAllApps:Z

    :goto_0
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p1, p1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p1, p1, Landroidx/apppickerview/widget/AbsAdapter;->mDataSetFiltered:Ljava/util/List;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p1}, Landroidx/apppickerview/widget/AbsAdapter;->refreshSectionMap$1()V

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter;->mOnSearchFilterListener:Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    invoke-interface {p1, p0}, Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;->onSearchFilterCompleted(I)V

    :cond_1
    return-void
.end method
