.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

.field public isDexMousePressed:Z

.field public final listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

.field public final recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iget-object p1, p3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    return-void
.end method

.method public static final access$itemChecked(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setItemChecked(IZ)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    instance-of p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method
