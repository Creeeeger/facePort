.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final info:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->stopPoint:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->info:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;

    return-void
.end method


# virtual methods
.method public final onMultiSelectStart(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;->info:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Point;->set(II)V

    int-to-float p1, p1

    int-to-float p2, p2

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    :cond_1
    return-void
.end method
