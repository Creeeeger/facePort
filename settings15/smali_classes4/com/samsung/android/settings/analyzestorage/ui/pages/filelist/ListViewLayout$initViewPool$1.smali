.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $poolSize:I

.field public final synthetic $viewPool:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;

.field public final synthetic $viewType:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->$poolSize:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;

    const p1, 0x7f0d0074

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->$viewType:I

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->$viewPool:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->$poolSize:I

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->$viewType:I

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;->layoutListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->$viewPool:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initViewPool, adding viewHolder failed. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ListViewLayout"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
