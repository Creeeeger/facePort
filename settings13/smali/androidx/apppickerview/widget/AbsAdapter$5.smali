.class Landroidx/apppickerview/widget/AbsAdapter$5;
.super Landroid/widget/Filter;
.source "AbsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/apppickerview/widget/AbsAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/apppickerview/widget/AbsAdapter;


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/AbsAdapter;)V
    .locals 0

    .line 343
    iput-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 346
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const-string v1, ""

    invoke-static {p1, v1}, Landroidx/apppickerview/widget/AbsAdapter;->access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p0}, Landroidx/apppickerview/widget/AbsAdapter;->access$100(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1

    .line 352
    :cond_0
    iget-object v1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {v1, p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$002(Landroidx/apppickerview/widget/AbsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p0}, Landroidx/apppickerview/widget/AbsAdapter;->access$100(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    .line 356
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "all_apps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 357
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 360
    :cond_2
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 362
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 364
    :cond_3
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 365
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 367
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_1

    .line 372
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_5
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 383
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$000(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->access$202(Landroidx/apppickerview/widget/AbsAdapter;Z)Z

    goto :goto_0

    .line 386
    :cond_0
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/apppickerview/widget/AbsAdapter;->access$202(Landroidx/apppickerview/widget/AbsAdapter;Z)Z

    .line 388
    :goto_0
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$300(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 389
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$300(Landroidx/apppickerview/widget/AbsAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$400(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 392
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 394
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$500(Landroidx/apppickerview/widget/AbsAdapter;)Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 395
    iget-object p1, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-static {p1}, Landroidx/apppickerview/widget/AbsAdapter;->access$500(Landroidx/apppickerview/widget/AbsAdapter;)Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;

    move-result-object p1

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter$5;->this$0:Landroidx/apppickerview/widget/AbsAdapter;

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AbsAdapter;->getItemCount()I

    move-result p0

    invoke-interface {p1, p0}, Landroidx/apppickerview/widget/AppPickerView$OnSearchFilterListener;->onSearchFilterCompleted(I)V

    :cond_1
    return-void
.end method
